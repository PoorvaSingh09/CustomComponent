//
//  RNTMapManager.m
//  CustomComponent
//
//  Created by Poorva Singh on 08/08/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "React/RCTViewManager.h"
#import <MapKit/MapKit.h>
#import "RCTConvert+MapKit.h"

@interface RCT_EXTERN_MODULE(RNTMapManager, RCTViewManager)

RCT_EXPORT_VIEW_PROPERTY(zoomEnabled, BOOL)
RCT_CUSTOM_VIEW_PROPERTY(region, MKCoordinateRegion, MKMapView) {
  [view setRegion:json ? [RCTConvert MKCoordinateRegion:json]: defaultView.region animated:YES];
}

RCT_EXPORT_VIEW_PROPERTY(onRegionChange, RCTBubblingEventBlock)

@end

