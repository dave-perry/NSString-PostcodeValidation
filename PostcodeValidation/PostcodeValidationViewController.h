//
//  PostcodeValidationViewController.h
//  PostcodeValidation
//
//  Created by David Perry on 09/07/2011.
//  Copyright 2011 Didev Studios. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PostcodeValidationViewController : UIViewController
{
    UITextField *_textField;
}

@property (nonatomic, retain) IBOutlet UITextField *textField;

- (IBAction)validatePostcode:(id)sender;

@end
