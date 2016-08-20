//
//  ViewController.m
//  WaterMarkImage
//
//  Created by mac1 on 16/8/9.
//  Copyright © 2016年 fuxi. All rights reserved.
//

#import "ViewController.h"
#import "ImageView.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *imgView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    UIImage *image = [UIImage imageNamed:@"feng.jpeg"];
    NSString *text = @"我的水印";
    
    UIImage *img =  [ImageView  waterMarkImage:image WithText:text];
    
    self.imgView.image = img;
    

    
    
}

@end
