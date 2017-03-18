//
//  ETTOffer.h
//  ETTLoyaltyApp
//
//  Created by Alexander Snegursky on 3/18/17.
//  Copyright © 2017 Alexander Snegursky. All rights reserved.
//


#import <UIKit/UIKit.h>


@interface ETTOffer : NSObject

@property (nonatomic, strong, readonly) NSString *title;
@property (nonatomic, strong, readonly) NSString *text;
@property (nonatomic, strong, readonly) NSNumber *points;
@property (nonatomic, strong, readonly) NSString *pointsText;
@property (nonatomic, readonly) BOOL active;

+ (NSArray<ETTOffer *> *)testObjects;

- (instancetype)initWithTitle:(NSString *)title
                    imageName:(NSString *)imageName
                         text:(NSString *)text
                       points:(NSNumber *)points
                   pointsText:(NSString *)pointsText
                       active:(BOOL)active;
- (UIImage *)image;

@end
