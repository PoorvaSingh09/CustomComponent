//
//  RCTConvert+MapKit.h
//  CustomComponent
//
//  Created by Poorva Singh on 08/08/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "RCTConvert+MapKit.h"
#import <MapKit/MapKit.h>
#import <React/RCTConvert.h>
#import <CoreLocation/CoreLocation.h>
#import <React/RCTConvert+CoreLocation.h>

@interface RCTConvert(MapKit)
+(MKCoordinateSpan)MKCoordinateSpan:(id)json;
+(MKCoordinateRegion)MKCoordinateRegion:(id)json;
@end
