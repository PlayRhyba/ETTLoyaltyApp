//
//  UIColor+Utilities.h
//  ETTLoyaltyApp
//
//  Created by Alexander Snegursky on 3/18/17.
//  Copyright © 2017 Alexander Snegursky. All rights reserved.
//


#import <UIKit/UIKit.h>


@interface UIColor (Utilities)

+ (UIColor *)colorWithHexString:(NSString *)hexString alpha:(CGFloat)alpha;
+ (UIColor *)colorWithHexString:(NSString *)hexString;

@end
