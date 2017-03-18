//
//  ETTViewController.m
//  ETTLoyaltyApp
//
//  Created by Alexander Snegursky on 3/17/17.
//  Copyright © 2017 Alexander Snegursky. All rights reserved.
//


#import "ETTViewController.h"
#import "ETTOffer.h"
#import "ETTOfferCell.h"


@interface ETTViewController () <UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) NSArray<ETTOffer *> *offers;

@end


@implementation ETTViewController


//MARK: Lifecycle


- (void)viewDidLoad {
    [super viewDidLoad];
    self.offers = [ETTOffer testObjects];
}


//MARK: UIViewController


- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}


//MARK: UICollectionViewDataSource


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return _offers.count;
}


- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    ETTOfferCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass([ETTOfferCell class]) forIndexPath:indexPath];
    cell.offer = _offers[indexPath.row];
    return cell;
}


//MARK: UICollectionViewDelegateFlowLayout


- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(collectionView.frame.size.width, [ETTOfferCell height]);
}

@end
