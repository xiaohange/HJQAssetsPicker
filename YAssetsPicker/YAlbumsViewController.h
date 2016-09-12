//
//  YAlbumsViewController.h
//  YAssetsPickerDemo
//
//  Created by HaRi on 15/12/11.
//  Copyright © 2015年 HaRi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HJQAssetsViewController.h"
#import <AssetsLibrary/AssetsLibrary.h>
#import "HJQImageManager.h"

@class HJQImagePickerNavController;
@interface YAlbumsViewController : UIViewController


- (instancetype)initWithNavController:(HJQImagePickerNavController *)navController;


@property (strong,nonatomic  ) UITableView               *groupTableView;


@property (strong  ,nonatomic) NSMutableArray            *groupAlbums;


@property (weak,nonatomic    ) HJQImagePickerNavController *navController;

@property (strong,nonatomic) UILabel *noPhotoLabel;


- (void)pushToAssetsController;


@end
