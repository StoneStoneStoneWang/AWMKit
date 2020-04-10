//
//  AWMLocation.h
//  WLThirdUtilDemo
//
//  Created by three stone 王 on 2019/5/27.
//  Copyright © 2019 three stone 王. All rights reserved.
//

#import <Foundation/Foundation.h>
@import AMapLocationKit;
@import CoreLocation;

NS_ASSUME_NONNULL_BEGIN

typedef void(^AWMLocationBlock)(CLLocation *_Nullable location);

@interface AWMLocation : NSObject

@property (nonatomic ,strong ,readonly) AMapLocationManager *AWMAmlocation;

@property (nonatomic ,strong ,readonly) CLLocationManager *cllocation;

- (void)requestLocationWithReGeocodeWithCompletionBlock:(AMapLocatingCompletionBlock)completionBlock;

@property (nonatomic ,assign) CLAuthorizationStatus authStatus;

// 开始定位
- (void)AWMStartLocation:(AWMLocationBlock )location;

// 停止定位
- (void)AWMStopLocation;

@end

NS_ASSUME_NONNULL_END
