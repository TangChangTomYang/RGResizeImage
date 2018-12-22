//
//  UIImage+resize.m
//  RGResizeImage
//
//  Created by yangrui on 2018/12/22.
//  Copyright © 2018年 yangrui. All rights reserved.
//

#import "UIImage+resize.h"

@implementation UIImage (resize)
/** 调整 image 的尺寸,生成一张新的图片
 */
-(UIImage *)resiseToSize:(CGSize)size{
    UIGraphicsBeginImageContext(size);
    // 将整个图片填充绘制到新的 矩形框中
    [self drawInRect:CGRectMake(0, 0, size.width, size.height)];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}


/** 在不改变原图的宽高比的情况下,根据高度调整尺寸, 生成一张新图
 300 / 400 ==> 360/X
 300 *400 ==> 360*(360*400/300)
 */
-(UIImage *)resiseToHeight:(CGFloat)height{
    CGSize originSize = self.size;
    CGFloat width = originSize.width / originSize.height *height ;
    // 开启上下文
    CGSize newSize = CGSizeMake(width, height); // 新图片的大小
    
    return  [self resiseToSize:newSize];
}



/** 在不改变原图的宽高比的情况下,根据宽度调整尺寸, 生成一张新图
 */
-(UIImage *)resiseToWidth:(CGFloat)width{
    
    CGSize originSize = self.size;
    CGFloat height = width * originSize.height / originSize.width;
    // 开启上下文
    CGSize newSize = CGSizeMake(width, height); // 新图片的大小
    
    
    return  [self resiseToSize:newSize];
    
}
@end
