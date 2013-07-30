//
//  PKCard.m
//  PKPayment Example
//
//  Created by Alex MacCaw on 1/31/13.
//  Copyright (c) 2013 Stripe. All rights reserved.
//

#import "PKCard.h"

@implementation PKCard

@synthesize number, cvc, expMonth, expYear, addressZip;

- (NSString*)last4
{
    if (number.length >= 4) {
        return [number substringFromIndex:([number length] - 4)];
    } else {
        return nil;
    }
}

- (NSUInteger)expYearLast2;
{
    if (!expYear) return 0;

    NSString *expString = [NSString stringWithFormat:@"%u", expYear];
    
    if (expString.length == 2) {
        return expYear;
    } else if (expString.length == 4) {
        return expYear % 100;
    } else {
        return 0;
    }
}



@end
