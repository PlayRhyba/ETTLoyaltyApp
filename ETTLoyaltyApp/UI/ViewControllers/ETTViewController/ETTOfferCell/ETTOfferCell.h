//
//  ETTOfferCell.h
//  ETTLoyaltyApp
//
//  Created by Alexander Snegursky on 3/18/17.
//  Copyright © 2017 Alexander Snegursky. All rights reserved.
//


#import <UIKit/UIKit.h>


@class ETTOffer;


@interface ETTOfferCell : UICollectionViewCell

@property (nonatomic, weak) ETTOffer *offer;

+ (CGFloat)height;

@end
