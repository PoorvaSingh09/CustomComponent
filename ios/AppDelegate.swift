//
//  AppDelegate.swift
//  CustomComponent
//
//  Created by Poorva Singh on 08/08/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  var window: UIWindow?
  var bridge: RCTBridge!
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    let jsCodeLocation: URL
    
    jsCodeLocation = RCTBundleURLProvider.sharedSettings().jsBundleURL(forBundleRoot: "index", fallbackResource:nil)
    let rootView = RCTRootView(bundleURL: jsCodeLocation, moduleName: "CustomComponent", initialProperties: nil, launchOptions: launchOptions)
    let rootViewController = UIViewController()
    rootViewController.view = rootView
    
    self.window = UIWindow(frame: UIScreen.main.bounds)
    self.window?.rootViewController = rootViewController
    self.window?.makeKeyAndVisible()
    
    return true
  }
}