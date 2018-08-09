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
//RCT_CUSTOM_VIEW_PROPERTY(title, String, UIButton) {
//  [view setTitle:json forState:UIControlStateNormal];
//}

//RCT_EXTERN_METHOD(changeTitle:(UIButton*)button title:(NSString*)title)

RCT_EXTERN_METHOD(changeTitle:(NSString*)title)
@end

@interface RCT_EXTERN_MODULE(Foo, NSObject)
RCT_EXTERN_METHOD(doThis)
@end

@interface RCT_EXTERN_MODULE(RNTRedButton, NSObject)

//RCT_EXPORT_VIEW_PROPERTY(changeTitle, RCTBubblingEventBlock)

RCT_EXTERN_METHOD(changeTitle:(NSString*)title)


@end
