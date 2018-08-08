//
//  RNTMapManager.swift
//  CustomComponent
//
//  Created by Poorva Singh on 08/08/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

import MapKit

@objc(RNTMapManager)
class RNTMapManager: RCTViewManager {
  
  override func view() -> UIView {
    let map = RNTMapView()
    map.delegate = self
    return map
  }
}

extension RNTMapManager: MKMapViewDelegate {
 
  func mapView(_ mapView: MKMapView, regionDidChangeAnimated animated: Bool) {
    guard let mapView = mapView as? RNTMapView, let regionChange = mapView.onRegionChange else {
      return
    }
    
    let region = mapView.region as MKCoordinateRegion
    regionChange( ["region" : [
      "latitude": region.center.latitude,
      "longitude": region.center.longitude,
      "latitudeDelta": region.span.latitudeDelta,
      "longitudeDelta": region.span.longitudeDelta
      ]
    ]
    )
  }
}
