//
//  RCTConvert+MapKit.m
//  CustomComponent
//
//  Created by Poorva Singh on 08/08/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "RCTConvert+MapKit.h"

@implementation RCTConvert(MapKit)
+ (MKCoordinateSpan)MKCoordinateSpan:(id)json
{
  json = [self NSDictionary:json];
  return (MKCoordinateSpan){
    [self CLLocationDegrees:json[@"latitudeDelta"]],
    [self CLLocationDegrees:json[@"longitudeDelta"]]
  };
}

+ (MKCoordinateRegion)MKCoordinateRegion:(id)json
{
  return (MKCoordinateRegion){
    [self CLLocationCoordinate2D:json],
    [self MKCoordinateSpan:json]
  };
}
@end
