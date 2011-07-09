//
//  PostcodeValidationViewController.m
//  PostcodeValidation
//
//  Created by David Perry on 09/07/2011.
//  Copyright 2011 Didev Studios. All rights reserved.
//

#import "PostcodeValidationViewController.h"
#import "NSString+PostcodeValidation.h"

@implementation PostcodeValidationViewController

@synthesize textField=_textField;

- (void)dealloc
{
    [_textField release];
    
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];    
}

#pragma mark - View lifecycle

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self.textField becomeFirstResponder];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    
    self.textField = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)validatePostcode:(id)sender
{    
    BOOL valid = [self.textField.text isValidPostcode];
    
    NSString *alertString = [NSString stringWithFormat:@"%@ is %@a valid postcode", self.textField.text, valid ? @"" : @"not "];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Result" message:alertString delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alert show];
    [alert autorelease];
}

@end
