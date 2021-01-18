//
//  MapViewController.h
//  keji
//
//  Created by 王旭 on 2021/1/18.
//

#import <UIKit/UIKit.h>
#import <BaiduMapAPI_Base/BMKBaseComponent.h>
#import <BaiduMapAPI_Map/BMKMapComponent.h>
NS_ASSUME_NONNULL_BEGIN

@interface MapViewController : UIViewController
<BMKMapViewDelegate>
@property (nonatomic, strong) BMKMapView *mapView; 
@end

NS_ASSUME_NONNULL_END
