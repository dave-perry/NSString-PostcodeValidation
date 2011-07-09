//
//  PostcodeValidationAppDelegate.h
//  PostcodeValidation
//
//  Created by David Perry on 09/07/2011.
//  Copyright 2011 Didev Studios. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PostcodeValidationViewController;

@interface PostcodeValidationAppDelegate : NSObject <UIApplicationDelegate>
{
    UIWindow *_window;
    PostcodeValidationViewController *_viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet PostcodeValidationViewController *viewController;

@end
