//
//  UIViewController+MockUINavigationController.m
//
//  Created by Stan on 6/22/15.
//  Copyright (c) 2015 Stan Tsai. All rights reserved.
//

#import "UIViewController+MockUINavigationController.h"

#import <objc/runtime.h>

#define MOCKITO_SHORTHAND
#import <OCMockito.h>

@implementation UIViewController (MockUINavigationController)
@dynamic mockNavigationController;

- (UINavigationController *)navigationController
{
    UINavigationController *mockNavigationController;
    if (!objc_getAssociatedObject(self, @selector(mockNavigationController))) {
        mockNavigationController = mock([UINavigationController class]);
        objc_setAssociatedObject(self, @selector(mockNavigationController), mockNavigationController, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    } else {
        mockNavigationController = objc_getAssociatedObject(self, @selector(mockNavigationController));
    }
    return mockNavigationController;
}

@end
