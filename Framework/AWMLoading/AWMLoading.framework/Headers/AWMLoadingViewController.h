//
//  AWMLoadingViewController.h
//  TSUIKit
//
//  Created by three stone 王 on 2018/7/10.
//  Copyright © 2018年 three stone 王. All rights reserved.
//

@import AWMTransition;
#import "AWMLoadingView.h"
@interface AWMLoadingViewController : AWMTViewController

@property (nonatomic ,strong ,readonly) AWMLoadingView *loadingView;

@property (nonatomic ,assign) AWMLoadingStatus loadingStatus;

// 重新加载
- (void)onReloadItemClick;

@end
