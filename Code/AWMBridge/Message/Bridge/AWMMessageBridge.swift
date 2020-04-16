//
//  AWMMessageBridge.swift
//  ZBombBridge
//
//  Created by three stone 王 on 2020/3/20.
//  Copyright © 2020 three stone 王. All rights reserved.
//

import Foundation
import AWMCollection
import RxDataSources
import AWMCocoa
import RxCocoa
import RxSwift
import AWMBean

public typealias AWMMessageAction = (_ ip: IndexPath,_ message: AWMMessageBean) -> ()

@objc (AWMMessageBridge)
public final class AWMMessageBridge: AWMBaseBridge {
    
    typealias Section = AWMAnimationSetionModel<AWMMessageBean>
    
    var dataSource: RxCollectionViewSectionedAnimatedDataSource<Section>!
    
    var viewModel: AWMMessageViewModel!
    
    weak var vc: AWMCollectionLoadingViewController!
    
}

extension AWMMessageBridge {
    
    @objc public func createMessage(_ vc: AWMCollectionLoadingViewController ,messageAction: @escaping AWMMessageAction ) {
        
        self.vc = vc
        
        let input = AWMMessageViewModel.WLInput(modelSelect: vc.collectionView.rx.modelSelected(AWMMessageBean.self),
                                                itemSelect: vc.collectionView.rx.itemSelected,
                                                headerRefresh: vc.collectionView.mj_header!.rx.awmRefreshing.asDriver())
        
        viewModel = AWMMessageViewModel(input, disposed: disposed)
        
        let dataSource = RxCollectionViewSectionedAnimatedDataSource<Section>(
            animationConfiguration: AnimationConfiguration(insertAnimation: .fade, reloadAnimation: .fade, deleteAnimation: .left),
            decideViewTransition: { _,_,_  in return .reload },
            configureCell: { ds, tv, ip, item in return vc.configCollectionViewCell(item, for: ip) })
        
        viewModel
            .output
            .collectionData
            .asDriver()
            .map({ $0.map({ Section(header: "\($0.mid)", items: [$0]) }) })
            .drive(vc.collectionView.rx.items(dataSource: dataSource))
            .disposed(by: disposed)
        
        self.dataSource = dataSource
        
        viewModel
            .output
            .zip
            .subscribe(onNext: { (message,ip) in
                
                messageAction(ip,message)
            })
            .disposed(by: disposed)
        
        let endHeaderRefreshing = viewModel.output.endHeaderRefreshing
        
        endHeaderRefreshing
            .map({ _ in return true })
            .drive(vc.collectionView.mj_header!.rx.awmEndRefreshing)
            .disposed(by: disposed)
        
        endHeaderRefreshing
            .drive(onNext: { (res) in
                switch res {
                case .fetchList:
                    vc.loadingStatus = .succ
                    
                case let .failed(msg):
                    vc.loadingStatus = .fail
                    
                case .empty:
                    vc.loadingStatus = .succ
                    
                    vc.collectionEmptyShow()
                    
                default:
                    break
                }
            })
            .disposed(by: disposed)
    }
    @objc public func messageRead(_ ip: IndexPath) {
        
        guard let datasource = dataSource else { return }
        
        let message = datasource[ip]
        
        message.isread = true
        
        vc.collectionView.reloadItems(at: [ip])
    }
}
extension AWMMessageBridge: UITableViewDelegate {
    
    @objc public func messageReadReq(_ message: AWMMessageBean ,_ ip: IndexPath) {
        
        AWMMessageViewModel
            .messageRead("\(message.mid)")
            .drive(onNext: { [unowned self] (result) in
                
                switch result {
                case .ok:
                    
                    self.messageRead(ip)
                default:
                    
                    break
                }
            })
            .disposed(by: disposed)
    }
    
    @objc public func fetchFirstMessage(_ messageAction: @escaping (_ message: AWMMessageBean) -> ()) {
        
        AWMMessageViewModel
            .fetchFirstMessage()
            .drive(onNext: { (result) in
                
                switch result {
                case .fetchList(let list):
                    
                    if list.count > 0{
                        
                        messageAction(list.first as! AWMMessageBean)
                    }
                default:
                    
                    break
                }
            })
            .disposed(by: disposed)
    }
}
