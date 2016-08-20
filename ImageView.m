//
//  ImageView.m
//  WaterMarkImage
//
//  Created by mac1 on 16/8/9.
//  Copyright © 2016年 fuxi. All rights reserved.
//

#import "ImageView.h"

@implementation ImageView

+ (UIImage *) waterMarkImage:(UIImage *)image WithText:(NSString *)text {
    
    //1 建立图像上下文
    UIGraphicsBeginImageContext(image.size);
    
    //2 绘制图像
    [image drawInRect:CGRectMake(0, 0, image.size.width, image.size.height)];
    
    //3 绘制文字
    CGRect textFrame = CGRectMake(0, image.size.height-50, image.size.width-50, 50);
    //属性字典
    NSDictionary *dic = @{
                          NSFontAttributeName:[UIFont systemFontOfSize:30],
                          NSForegroundColorAttributeName:[UIColor redColor],
                          };
    
    
    [text drawInRect:textFrame withAttributes:dic];
    //4 获取图片
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();

    
    //5 关闭图像上下文
    UIGraphicsEndImageContext();
    
    return img;
}

@end
