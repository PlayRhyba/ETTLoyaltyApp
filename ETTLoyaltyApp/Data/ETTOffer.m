//
//  ETTOffer.m
//  ETTLoyaltyApp
//
//  Created by Alexander Snegursky on 3/18/17.
//  Copyright © 2017 Alexander Snegursky. All rights reserved.
//


#import "ETTOffer.h"


@interface ETTOffer ()

@property (nonatomic, strong, readwrite) NSString *title;
@property (nonatomic, strong, readwrite) NSString *text;
@property (nonatomic, strong, readwrite) NSNumber *points;
@property (nonatomic, strong, readwrite) NSString *pointsText;
@property (nonatomic, readwrite) BOOL active;
@property (nonatomic, strong) NSString *imageName;

@end


@implementation ETTOffer


//MARK: Public Methods


+ (NSArray<ETTOffer *> *)testObjects {
    return @[
             [[ETTOffer alloc]initWithTitle:@"Extra Espresso"
                                  imageName:@"extra_expresso"
                                       text:@"Add a little kick to your coffee lorem ipsum dolores."
                                     points:@25
                                 pointsText:@"Order for free!"
                                     active:YES],
             
             [[ETTOffer alloc]initWithTitle:@"Cafe Latte"
                                  imageName:@"cafe_latte"
                                       text:@"Add a little kick to your coffee lorem ipsum dolores."
                                     points:@25
                                 pointsText:@"Order for free!"
                                     active:YES],
             
             [[ETTOffer alloc]initWithTitle:@"Chocolate"
                                  imageName:@"chocolate"
                                       text:@"Add a little kick to your coffee lorem ipsum dolores."
                                     points:@25
                                 pointsText:@"You need 40 points"
                                     active:NO],
             
             [[ETTOffer alloc]initWithTitle:@"Cafe Latte"
                                  imageName:@"cafe_latte"
                                       text:@"Add a little kick to your coffee lorem ipsum dolores."
                                     points:@25
                                 pointsText:@"You need 40 points"
                                     active:NO],
             
             [[ETTOffer alloc]initWithTitle:@"Chocolate"
                                  imageName:@"chocolate"
                                       text:@"Add a little kick to your coffee lorem ipsum dolores."
                                     points:@25
                                 pointsText:@"You need 40 points"
                                     active:NO],
             ];
}


- (instancetype)initWithTitle:(NSString *)title
                    imageName:(NSString *)imageName
                         text:(NSString *)text
                       points:(NSNumber *)points
                   pointsText:(NSString *)pointsText
                       active:(BOOL)active {
    if (self = [super init]) {
        _title = title;
        _text = text;
        _points = points;
        _pointsText = pointsText;
        _active = active;
        _imageName = imageName;
    }
    
    return self;
}


- (UIImage *)image {
    return [UIImage imageNamed:_imageName];
}

@end
