//
//  ImageView.h
//  WaterMarkImage
//
//  Created by mac1 on 16/8/9.
//  Copyright © 2016年 fuxi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
@interface ImageView : UIView

+ (UIImage *) waterMarkImage:(UIImage *) image WithText:(NSString *)text;
@end
