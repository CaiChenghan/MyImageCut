//
//  ViewController.m
//  MyImageCut
//
//  Created by 蔡成汉 on 16/8/16.
//  Copyright © 2016年 蔡成汉. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

/**
 *  第一张图片
 */
@property (weak, nonatomic) IBOutlet UIImageView *firstImage;

/**
 *  第二张图片
 */
@property (weak, nonatomic) IBOutlet UIImageView *secondImage;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImage *originImage = [UIImage imageNamed:@"rayshen.jpeg"];
    
    //图片裁剪
    CGImageRef firstImageRef = CGImageCreateWithImageInRect(originImage.CGImage, CGRectMake(0, 0, originImage.size.width, originImage.size.height/2.0));
    _firstImage.image = [UIImage imageWithCGImage:firstImageRef];
    
    CGImageRef secondImageRef = CGImageCreateWithImageInRect(originImage.CGImage, CGRectMake(0, originImage.size.height/2.0, originImage.size.width, originImage.size.height/2.0));
    _secondImage.image = [UIImage imageWithCGImage:secondImageRef];
    
    //总结：利用图片裁剪，我们就可以做出炫酷的开窗启动动画
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
