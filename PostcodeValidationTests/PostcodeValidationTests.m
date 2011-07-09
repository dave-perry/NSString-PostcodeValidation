//
//  PostcodeValidationTests.m
//  PostcodeValidationTests
//
//  Created by David Perry on 09/07/2011.
//  Copyright 2011 Didev Studios. All rights reserved.
//

#import "PostcodeValidationTests.h"
#import "NSString+PostcodeValidation.h"

@implementation PostcodeValidationTests

- (void)testAllPostcodes
{
    NSArray *letterArray = [NSArray arrayWithObjects:
                            @"A",
                            @"B",
                            @"C",
                            @"D",
                            @"E",
                            @"F",
                            @"G",
                            @"H",
                            @"I",
                            @"K",
                            @"L",
                            @"M",
                            @"N",
                            @"O",
                            @"P",
                            @"R",
                            @"S",
                            @"T",
                            @"U",
                            @"W",
                            @"Y",
                            @"Z",
                            nil];
    
    
    for(NSString *letter in letterArray)
    {
        NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
        NSArray *postcodeArray = [[NSArray alloc] initWithContentsOfFile:[[NSBundle bundleForClass:[self class]] pathForResource:[NSString stringWithFormat:@"Postcodes%@", letter] ofType:@"plist"]];
        STAssertTrue([postcodeArray count] > 0, @"Couldn't allocate array for: %@", letter);
        
        NSLog(@"Started: %@", letter);
        
        for(NSString *postcode in postcodeArray)
        {
            // For each postcode we perform 4 validations
            
            // 1. As is (uppercase with space)
            BOOL validPostcode = [postcode isValidPostcode];
            
            if(!validPostcode)
            {
                NSLog(@"Postcode failed: %@", postcode);
            }
            
            // 2. Uppercase without space
            validPostcode = [[postcode stringByReplacingOccurrencesOfString:@" " withString:@""] isValidPostcode];
            
            if(!validPostcode)
            {
                NSLog(@"Postcode failed: %@", [postcode stringByReplacingOccurrencesOfString:@" " withString:@""]);
            }
            
            // 3. Lowercase with space
            validPostcode = [[postcode lowercaseString] isValidPostcode];
            
            if(!validPostcode)
            {
                NSLog(@"Postcode failed: %@", [postcode lowercaseString]);
            }
            
            // 4. Lowercase without space
            validPostcode = [[[postcode lowercaseString] stringByReplacingOccurrencesOfString:@" " withString:@""] isValidPostcode];
            
            if(!validPostcode)
            {
                NSLog(@"Postcode failed: %@", [[postcode lowercaseString] stringByReplacingOccurrencesOfString:@" " withString:@""]);
            }
        }
        
        [postcodeArray release];
        [pool release];
    }
}

@end
