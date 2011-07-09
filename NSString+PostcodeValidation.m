//
//  NSString+PostcodeValidation.m
//  PostcodeValidation
//
//  Created by David Perry on 09/07/2011.
//  Copyright 2011 Didev Studios. All rights reserved.
//

#import "NSString+PostcodeValidation.h"

@implementation NSString (PostcodeValidation)

- (BOOL)isValidPostcode
{
    NSPredicate *postcodePredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES '^[A-Za-z]{1,2}[0-9Rr][0-9A-Za-z]? ?[0-9][ABD-HJLNP-UW-Zabd-hjlnp-uw-z]{2}'"];
    
	BOOL matches = [postcodePredicate evaluateWithObject:self];
    
	return matches;
}

@end
