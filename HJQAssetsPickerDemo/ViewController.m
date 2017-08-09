//
//  ViewController.m
//  YAssetsPickerDemo
//
//  Created by HaRi on 16/6/20.
//  Copyright © 2016年 HaRi. All rights reserved.
//

#import "ViewController.h"
#import "HJQImagePickerNavController.h"
#import "HJQPhotoPreviewController.h"

@interface ViewController ()<YImageNavControllerDelegate>

@property (nonatomic,strong)HJQImagePickerNavController *navPicVC;

@property (nonatomic, strong) NSMutableArray *photoArr;

@end

@implementation ViewController

- (HJQImagePickerNavController *)navPicVC
{
    if (!_navPicVC) {
        _navPicVC = [[HJQImagePickerNavController alloc] init];
        _navPicVC.navDelegate = self;
        _navPicVC.maxSelectNumber = 9;
    }
    return _navPicVC;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
    
    
}
- (IBAction)aansdfnansd:(id)sender {
    
    [self presentViewController:self.navPicVC animated:YES completion:nil];
    
    [self.navPicVC showFirstAssetsController];

    
}
- (void)imagePickerNavController:(HJQImagePickerNavController *)navControlelr DidFinshed:(NSMutableArray *)selectedArray;
{
    for (UIView *subView in self.view.subviews) {
        if ([subView isKindOfClass:[UIImageView class]]) {
            [subView removeFromSuperview];
        }
    }
    NSLog(@"照片个数  %ld 张",selectedArray.count);
    _photoArr = [NSMutableArray arrayWithArray:selectedArray];
    for (int i = 0 ; i < selectedArray.count; i++) {
        HImageModel *model = selectedArray[i];
        UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake([UIScreen mainScreen].bounds.size.width / 2 - 50, i * 100 + 74, 100, 100)];
        imageView.userInteractionEnabled = YES;
        imageView.image = model.thumbImage;
        [self.view addSubview:imageView];
        
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapAction:)];
        [imageView addGestureRecognizer:tap];
         tap.view.tag = 100 + i;
    }
    
    
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"这里可以写回调后的事件");
    }];
}

- (void)tapAction:(UITapGestureRecognizer *)tap
{
    NSLog(@"%ld",tap.view.tag);
    HJQPhotoPreviewController *photoPreviewVc = [[HJQPhotoPreviewController alloc] init];
    photoPreviewVc.photoArr = _photoArr;
    photoPreviewVc.currentIndex = tap.view.tag - 100;
    photoPreviewVc.maxSelectNumber = _photoArr.count;
//    photoPreviewVc.handleViewControlelr = self;
    photoPreviewVc.selectedPhotoArr = _photoArr;
    [self.navigationController pushViewController:photoPreviewVc animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
