//
//  ViewController.m
//  RGResizeImage
//
//  Created by yangrui on 2018/12/22.
//  Copyright © 2018年 yangrui. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+resize.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imgV;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //self.imgV.image = [self.imgV.image resiseToWidth:self.imgV.frame.size.width];
    
    
    self.imgV.alpha = 0.6;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UIViewContentMode mode =  (UIViewContentMode)(((int)(self.imgV.contentMode)) +1);
    self.imgV.contentMode = mode;
    [self mode:(int)mode];
}


-(void)mode:(int)index{
  NSDictionary *dic =  @{  @0:@"UIViewContentModeScaleToFill",
                            @1:@"UIViewContentModeScaleAspectFit",  
                            @2:@"UIViewContentModeScaleAspectFill",
                           
                            @3:@"UIViewContentModeRedraw",
                            @4:@"UIViewContentModeCenter",
                           
                          @5:@"UIViewContentModeTop",
                          @6:@"UIViewContentModeBottom",
                          @7:@"UIViewContentModeLeft",
                          @8:@"UIViewContentModeRight",
                       
                          @9:@"UIViewContentModeTopLeft",
                          @10:@"UIViewContentModeTopRight",
                          @11:@"UIViewContentModeBottomLeft",
                          @12:@"UIViewContentModeBottomRight"
                            };
    
  
    NSLog(@"mode:%@, size:%f, scale:%f",dic[@(index)],NSStringFromCGSize(self.imgV.image.size),self.imgV.image.scale );
    
    
}
@end
