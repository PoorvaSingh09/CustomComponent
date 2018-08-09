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
//  @objc func changeTitle(_ title: String) -> Void {
//    print("button clicked="+title)
//    setTitle(title, for: .normal)
//  }
  
  @objc func changeTitle() ->Void {
    print("button clicked2222")
  }

}

@objc(RNTRedButtonManager)
class RNTRedButtonManager: RCTViewManager {
  let button = RNTRedButton()
  
  @objc func changeTitle() -> Void {
    print("button clicked1111")
  }
  
  @objc func changeTitle(_ title: String) -> Void {
    print("button clicked="+title)
    button.setTitle(title, for: .normal)
  }
  
  @objc override func view() -> UIView {
    
    button.backgroundColor = UIColor.red
    return button
  }
}

@objc(Foo)
class Foo: NSObject {
  @objc func doThis() -> Void {
    print("button clicked3333")
  }
}






