//
//  AWMLoadingView.h
//  TSUIKit
//
//  Created by three stone 王 on 2018/7/10.
//  Copyright © 2018年 three stone 王. All rights reserved.
//
@import UIKit;
@import AWMTransition;

typedef NS_ENUM(NSInteger,AWMLoadingStatus) {
    
    AWMLoadingStatusBegin,
    
    AWMLoadingStatusLoading,
    
    AWMLoadingStatusSucc,
    
    AWMLoadingStatusFail,
    
    AWMLoadingStatusReload
};

@protocol AWMLoadingViewDelegate <NSObject>

- (void)onReloadItemClick;

@end

@interface AWMLoadingView : UIView

+ (instancetype)loadingWithContentViewController:(AWMTViewController *)contentViewController;

/*
 设置加载状态
 AWMLoadingStatusBegin 请在viewwillappear里
 AWMLoadingStatusLoading 请在设置begin之后 viewwillappear里
 AWMLoadingStatusSucc 加载成功
 AWMLoadingStatusFail 加载失败
 AWMLoadingStatusReload 重新加载 屏幕上有 点击屏幕重新加载按钮
 */
@property (nonatomic ,assign ,readonly) BOOL isLoading;

@property (nonatomic ,assign)AWMLoadingStatus status;

- (void)changeLoadingStatus:(AWMLoadingStatus )status;

@property (nonatomic ,weak) id<AWMLoadingViewDelegate> mDelegate;


@end
