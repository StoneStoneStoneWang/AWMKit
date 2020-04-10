//
//  AWMNavigationController.h
//  ZNavi
//
//  Created by three stone 王 on 2019/8/22.
//  Copyright © 2019 three stone 王. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UINavigationBar+AWM.h"
#import "UIBarButtonItem+AWM.h"

NS_ASSUME_NONNULL_BEGIN

@protocol AWMNavigationConfig <NSObject>

@property (nonatomic ,assign) CGFloat awmFontSize;

@property (nonatomic ,strong) UIColor *awmNormalTitleColor;

@property (nonatomic ,strong) UIColor *awmLoginTitleColor;

@property (nonatomic ,strong) UIColor *awmNormalBackgroundColor;

@property (nonatomic ,strong) UIColor *awmLoginBackgroundColor;

@property (nonatomic ,copy) NSString *awmNormalBackImage;

@property (nonatomic ,copy) NSString *awmLoginBackImage;

@end

@interface AWMNavigationController : UINavigationController

+ (void)initWithConfig:(id <AWMNavigationConfig>) config;

@end

NS_ASSUME_NONNULL_END
