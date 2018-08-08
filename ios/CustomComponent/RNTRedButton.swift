//
//  RedButton.swift
//  CustomComponent
//
//  Created by Poorva Singh on 08/08/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

import UIKit

@objc(RNTRedButton)
class RNTRedButton: UIButton {
  
  
}

@objc(RNTRedButtonManager)
class RNTRedButtonManager: RCTViewManager {
  
  @objc func setTitle(title: String) {
    
  }
  
  @objc override func view() -> UIView {
    let button = RNTRedButton()
    button.backgroundColor = UIColor.red
    return button
  }
}



