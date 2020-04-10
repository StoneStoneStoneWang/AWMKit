//
//  AWMAMapViewController.h
//  ZFragment
//
//  Created by three stone 王 on 2019/8/29.
//  Copyright © 2019 three stone 王. All rights reserved.
//
#import <MAMapKit/MAMapKit.h>
@import AWMTransition;
NS_ASSUME_NONNULL_BEGIN

@class AWMAMapView;
@class AWMLocation;

NS_SWIFT_NAME(AWMAMapViewController)
@interface AWMAMapViewController : AWMTViewController <MAMapViewDelegate>

+ (instancetype)createAMapWithLat:(CLLocationDegrees )lat andLon:(CLLocationDegrees)lon;

@property (nonatomic ,strong ,readonly) AWMAMapView *AWMMapView;

@property (nonatomic ,strong ,readonly) AWMLocation *AWMLocation;

@property (nonatomic ,assign) CLLocationDegrees lat;

@property (nonatomic ,assign) CLLocationDegrees lon;

- (void)mapView:(MAMapView *)mapView didUpdateUserLocation:(MAUserLocation *)userLocation updatingLocation:(BOOL)updatingLocation;

- (void)mapView:(MAMapView *)mapView regionWillChangeAnimated:(BOOL)animated;

- (void)mapView:(MAMapView *)mapView didAddAnnotationViews:(NSArray *)views;

- (void)AWMFetchLocaiton:(CLLocation *)location;

@end

NS_ASSUME_NONNULL_END
