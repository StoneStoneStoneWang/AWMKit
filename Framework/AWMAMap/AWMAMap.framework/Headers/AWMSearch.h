//
//  AWMSearch.h
//  WLThirdUtilDemo
//
//  Created by three stone 王 on 2019/5/27.
//  Copyright © 2019 three stone 王. All rights reserved.
//

#import <Foundation/Foundation.h>
@import AMapSearchKit;

NS_ASSUME_NONNULL_BEGIN

typedef void(^AWMRegeoSearchBlock)(NSString *city,NSString *street);

typedef void(^AWMTipSearchBlock)(NSArray<AMapTip *> *tips);

@interface AWMSearch : NSObject

- (void)AWMGeoSearchResp:(AMapGeoPoint *)location andResp:(AWMRegeoSearchBlock) resp;

/* 根据关键字来搜索POI. */
- (void)onTipSearchRespWithKeywords:(NSString *) keywords andCity:(NSString *)city andResp:(AWMTipSearchBlock) resp;

/* 根据ID来搜索POI. */
- (void)AWMTipSearchRespWithID:(NSString *)uid;

@property (nonatomic ,strong ,readonly) AMapSearchAPI *searchApi;

@end

NS_ASSUME_NONNULL_END
