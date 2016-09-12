//
//  HJQAssetsViewController.h
//  YAssetsPickerDemo
//
//  Created by HaRi on 15/12/11.
//  Copyright © 2015年 HaRi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AssetsLibrary/AssetsLibrary.h>
#import "HJQImageManager.h"
#import "HImageModel.h"

@class YGrideCollectionCell;
@protocol YGrideSelectedDelegate <NSObject>

- (void)selectedWithPhotModel:(HImageModel *)model atCell:(YGrideCollectionCell *)cell;

@end

@interface YGrideCollectionCell : UICollectionViewCell

@property (strong,nonatomic) UIImageView *imageView;

@property (strong,nonatomic) UIButton *selectButton;

@property (strong,nonatomic) HImageModel *model;

@property (assign,nonatomic) id<YGrideSelectedDelegate> selectedDelegate;

@end





@class HJQImagePickerNavController;
@interface HJQAssetsViewController : UIViewController


- (instancetype)initWithNav:(HJQImagePickerNavController *)navController;

@property (strong,nonatomic) NSMutableArray *allAssetsModel;

@property (nonatomic,strong) YAlbumModel *assetsGroup;

@property (strong,nonatomic) NSMutableArray *selectedAssets;

@property (strong,nonatomic) UICollectionView *groupCollection;

@property (strong,nonatomic) HJQImagePickerNavController *navController;

@property (assign,nonatomic) NSUInteger  maxSelectNumber;


- (void)reloadSubViews;

@end
