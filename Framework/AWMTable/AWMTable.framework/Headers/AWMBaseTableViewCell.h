//
//  AWMBaseTableViewCell.h
//  ZTable
//
//  Created by three stone 王 on 2019/8/27.
//  Copyright © 2019 three stone 王. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger ,AWMBottomLineType) {
    
    AWMBottomLineTypeNormal NS_SWIFT_NAME(normal),
    
    AWMBottomLineTypeNone NS_SWIFT_NAME(none) ,
    
    AWMBottomLineTypeCustom NS_SWIFT_NAME(custom)
};

@interface AWMBaseTableViewCell : UITableViewCell

@property (nonatomic ,strong ,readonly) UIImageView *bottomView;

@property (nonatomic ,assign) AWMBottomLineType bottomLineType;

- (void)commitInit;
@end

NS_ASSUME_NONNULL_END
