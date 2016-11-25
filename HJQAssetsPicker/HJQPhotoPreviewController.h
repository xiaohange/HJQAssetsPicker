//
//  HJQPhotoPreviewController.h
//  YImagePickerController
//
//  Created by HaRi on 15/12/24.
//  Copyright © 2015年 HaRi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HJQAssetsViewController.h"
#import "HImageModel.h"
#import "HJQImagePickerNavController.h"

@interface YPhotoPreviewCell : UICollectionViewCell

@property (nonatomic, strong)    HImageModel *model;
@property (nonatomic, copy) void (^singleTapGestureBlock)();

@end



@interface HJQPhotoPreviewController : UIViewController

@property (nonatomic, strong) NSArray *photoArr;                ///< All photos / 所有图片的数组
@property (nonatomic, strong) NSMutableArray *selectedPhotoArr; ///< Current selected photos / 当前选中的图片数组
@property (nonatomic, assign) NSInteger currentIndex;           ///< Index of the photo user click / 用户点击的图片的索引
@property (nonatomic, assign) BOOL isSelectOriginalPhoto;       ///< If YES,return original photo / 是否返回原图

@property (assign,nonatomic) NSInteger maxSelectNumber;

@property (assign,nonatomic) HJQAssetsViewController *  handleViewControlelr;


/// Return the new selected photos / 返回最新的选中图片数组
@property (nonatomic, copy) void (^returnNewSelectedPhotoArrBlock)(NSMutableArray *newSeletedPhotoArr, BOOL isSelectOriginalPhoto);
@property (nonatomic, copy) void (^okButtonClickBlock)(NSMutableArray *newSeletedPhotoArr, BOOL isSelectOriginalPhoto);

@end
