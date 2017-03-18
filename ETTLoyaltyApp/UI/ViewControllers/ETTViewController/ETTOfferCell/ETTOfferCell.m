//
//  ETTOfferCell.m
//  ETTLoyaltyApp
//
//  Created by Alexander Snegursky on 3/18/17.
//  Copyright © 2017 Alexander Snegursky. All rights reserved.
//


#import "ETTOfferCell.h"
#import "ETTOffer.h"
#import "UIColor+Utilities.h"


static const CGFloat kHeight = 120.0;


@interface ETTOfferCell ()

@property (nonatomic, weak) IBOutlet UILabel *titleLabel;
@property (nonatomic, weak) IBOutlet UILabel *textLabel;
@property (nonatomic, weak) IBOutlet UIImageView *photoImageView;
@property (nonatomic, weak) IBOutlet UIImageView *starImageView;
@property (nonatomic, weak) IBOutlet UILabel *pointsLabel;
@property (nonatomic, weak) IBOutlet UILabel *pointsTextLabel;

@end


@implementation ETTOfferCell


//MARK: Public Methods


+ (CGFloat)height {
    return kHeight;
}


//MARK: Getters/Setters


- (void)setOffer:(ETTOffer *)offer {
    _offer = offer;
    
    _titleLabel.text = offer.title;
    _textLabel.text = offer.text;
    _photoImageView.image = [_offer image];
    _starImageView.image = _offer.active ? [UIImage imageNamed:@"small_star_active"] : [UIImage imageNamed:@"small_star_inactive"];
    _pointsLabel.text = _offer.points.stringValue;
    
    _pointsTextLabel.text = _offer.pointsText;
    _pointsTextLabel.textColor = _offer.active ? [UIColor colorWithHexString:@"#82C439"] : [UIColor colorWithHexString:@"#AAAAAA"];
}

@end
