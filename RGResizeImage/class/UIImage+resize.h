//
//  UIImage+resize.h
//  RGResizeImage
//
//  Created by yangrui on 2018/12/22.
//  Copyright © 2018年 yangrui. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (resize)

/** 调整 image 的尺寸,生成一张新的图片
 */
-(UIImage *)resiseToSize:(CGSize)size;


/** 在不改变原图的宽高比的情况下,根据高度调整尺寸, 生成一张新图
 300 / 400 ==> 360/X
 300 *400 ==> 360*(360*400/300)
 */
-(UIImage *)resiseToHeight:(CGFloat)height;



/** 在不改变原图的宽高比的情况下,根据宽度调整尺寸, 生成一张新图
 */
-(UIImage *)resiseToWidth:(CGFloat)width;
@end
