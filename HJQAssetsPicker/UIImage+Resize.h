//
//  UIImage+Resize.h
//  YAssetsPickerDemo
//
//  Created by HaRi on 16/6/20.
//  Copyright © 2016年 HaRi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Resize)

- (UIImage *)fixOrientation;


+ (UIImage *)imageInBundleWithName:(NSString *)name;

@end
