//
//  ViewController.m
//  YAssetsPickerDemo
//
//  Created by HaRi on 16/6/20.
//  Copyright © 2016年 HaRi. All rights reserved.
//

#import "ViewController.h"
#import "HJQImagePickerNavController.h"

@interface ViewController ()<YImageNavControllerDelegate>

@property (nonatomic,strong)HJQImagePickerNavController *navPicVC;

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
    NSLog(@"照片个数  %ld 张",selectedArray.count);
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"这里可以写回调后的事件");
    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
