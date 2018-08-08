//
//  RNTRedButtonManager.m
//  CustomComponent
//
//  Created by Poorva Singh on 08/08/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "React/RCTViewManager.h"
#import <UIKit/UIKit.h>

@interface RCT_EXTERN_MODULE(RNTRedButtonManager, RCTViewManager)
RCT_CUSTOM_VIEW_PROPERTY(title, String, UIButton) {
  [view setTitle:json forState:UIControlStateNormal];
}
@end
