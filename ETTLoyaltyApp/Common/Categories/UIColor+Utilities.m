//
//  UIColor+Utilities.m
//  ETTLoyaltyApp
//
//  Created by Alexander Snegursky on 3/18/17.
//  Copyright © 2017 Alexander Snegursky. All rights reserved.
//


#import "UIColor+Utilities.h"


@implementation UIColor (Utilities)


+ (UIColor *)colorWithHexString:(NSString *)hexString alpha:(CGFloat)alpha {
    unsigned rgbValue = 0;
    NSScanner *scanner = [NSScanner scannerWithString:hexString];
    
    NSString *firstSymbol = [hexString substringWithRange:NSMakeRange(0, 1)];
    scanner.scanLocation = [firstSymbol isEqualToString:@"#"] ? 1 : 0;
    
    [scanner scanHexInt:&rgbValue];
    
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16) / 255.0
                           green:((rgbValue & 0xFF00) >> 8) / 255.0
                            blue:(rgbValue & 0xFF) / 255.0
                           alpha:alpha];
}


+ (UIColor *)colorWithHexString:(NSString *)hexString {
    return [self colorWithHexString:hexString alpha:1.0];
}

@end
