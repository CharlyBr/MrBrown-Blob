//
//  TintedUIBarButtonItemAppDelegate.h
//  TintedUIBarButtonItem
//
//  Created by CharlyBr on 2/10/11.
//  Copyright 2011 Charles Viard. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TintedUIBarButtonItemViewController;

@interface TintedUIBarButtonItemAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    TintedUIBarButtonItemViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet TintedUIBarButtonItemViewController *viewController;

@end

