# HJQAssetsPicker

[![CircleCI](https://img.shields.io/circleci/project/github/RedSparr0w/node-csgo-parser.svg)](https://github.com/XiaoHanGe/HJQAssetsPicker)
[![Version](https://img.shields.io/cocoapods/v/JQSafeKit.svg?style=flat)](http://cocoapods.org/pods/HJQAssetsPicker)
[![Coveralls branch](https://img.shields.io/coveralls/jekyll/jekyll/master.svg)](https://github.com/XiaoHanGe/HJQAssetsPicker)
[![Packagist](https://img.shields.io/packagist/l/doctrine/orm.svg)](https://github.com/XiaoHanGe/HJQAssetsPicker)
[![Platform](https://img.shields.io/badge/platform-ios-brightgreen.svg)](http://cocoapods.org/pods/HJQAssetsPicker)
[![Apps Using](https://img.shields.io/badge/Apps%20Using-%3E%20100-blue.svg)](https://github.com/XiaoHanGe/HJQAssetsPicker)
[![CocoaPods](https://img.shields.io/cocoapods/dm/AFNetworking.svg)](http://cocoapods.org/pods/HJQAssetsPicker)

HJQAssetsPicker简介
===
##一款仿微信多选照片库

---
## Installation【安装】

### From CocoaPods【使用CocoaPods】

```ruby
pod  “HJQAssetsPicker”
```

### Manually【手动导入】
- Drag all source files under floder `HJQAssetsPicker` to your project.【将`HJQAssetsPicker `文件夹中的所有源代码拽入项目中】


---
##使用方法
请看Demo

```
首先倒入框架#import "HJQImagePickerNavController.h"
- (HJQImagePickerNavController *)navPicVC
{
    if (!_navPicVC) {
        _navPicVC = [[HJQImagePickerNavController alloc] init];
        _navPicVC.navDelegate = self;
        _navPicVC.maxSelectNumber = 9;
    }
    return _navPicVC;
}

- (IBAction)aansdfnansd:(id)sender {
    
    [self presentViewController:self.navPicVC animated:YES completion:nil];
    
    [self.navPicVC showFirstAssetsController];

    
}

实现YImageNavControllerDelegate代理方法：
- (void)imagePickerNavController:(HJQImagePickerNavController *)navControlelr DidFinshed:(NSMutableArray *)selectedArray;
{
    NSLog(@"照片个数  %ld 张",selectedArray.count);
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"这里可以写回调后的事件");
    }];
}

```

---

其他API
===
---
- 获取相册最后一张图片
-  `- (void)getCameraRollAlbumLastImage:(void(^)(UIImage *placeHoderImage,id asset))completion;  `
-  `- (void)getCameraRollAlbumLastImage:(void(^)(UIImage *placeHoderImage,id asset))completion;`

---

- Get Album 获得相册/相册数组 
- `- (void)getCameraRollAlbumcompletion:(void (^)(YAlbumModel *model))completion;`

---

- 获取所有相册数据
- `- (void)getAllAlbumscompletion:(void (^)(NSArray<YAlbumModel *> *models))completion;`

---
- 获取某个相册里所有照片
- `- (void)getAssetsFromFetchResult:(id)result completion:(void (^)(NSArray<YAssetsModel *> *models))completion;`
- `- (void)getAssetFromFetchResult:(id)result atIndex:(NSInteger)index  completion:(void (^)(YAssetsModel *model))completion;`

---
- Get photo 获得照片封面
- `- (void)getPostImageWithAlbumModel:(YAlbumModel *)model completion:(void (^)(UIImage *postImage))completion;`

---

- 获取屏幕大小尺寸图片
- `- (void)getPhotoWithAsset:(id)asset completion:(void (^)(UIImage *photo,NSDictionary *info,BOOL isDegraded))completion;`

---

- 获取制定宽度的图片
- `- (void)getPhotoWithAsset:(id)asset photoWidth:(CGFloat)photoWidth isSynchronous:(BOOL)isSynchronous completion:(void (^)(UIImage *photo,NSDictionary *info,BOOL isDegraded))completion;`

---

- 获取原图
- `- (void)getOriginalPhotoWithAsset:(id)asset completion:(void (^)(UIImage *photo,NSDictionary *info))completion;`

---

- 获取系统图片的Data
- `- (void)getImageDataWithAsset:(id)asset completion:(void (^)(NSData *imageData))completion;`

---


##关于作者 [小韩哥-CSDN](http://blog.csdn.net/qq_31810357)    
##iOS开发者交流群：446310206




