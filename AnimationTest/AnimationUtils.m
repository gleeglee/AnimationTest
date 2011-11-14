//
//  AnimationUtils.m
//  AnimationTest
//
//  Created by Geunil Lee on 11/11/11.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//

#import "AnimationUtils.h"

@implementation AnimationUtils
+ (void)startAnimation:(UIImageView *)imageView {
    
    NSArray* images = [NSArray arrayWithObjects:
                       [UIImage imageNamed:@"maru.png"],
                       [UIImage imageNamed:@"batu.png"],
                       nil
                       ];
    imageView.animationImages = images;
    imageView.animationDuration = 1.5f;
    imageView.animationRepeatCount = 10;
    [imageView startAnimating];
    
}

+ (void)scaleAnimation:(UIImageView *) imageView {
    [UIView animateWithDuration:0.2
                     animations:^{
                         imageView.transform = CGAffineTransformScale(imageView.transform, 2, 2);
                     }
                     completion:^(BOOL finished){
                         imageView.transform = CGAffineTransformScale(imageView.transform, 0.5, 0.5);
                     }];

}

+ (void)rotateAnimation:(UIImageView *) imageView {
    [UIView animateWithDuration:0.2
                     animations:^{
                         imageView.transform =
                         CGAffineTransformMakeRotation(2*M_PI*180/360.0-0.000001);//-0.000001は右回りおまじない
                     }
                     completion:^(BOOL finished){
                         imageView.transform = CGAffineTransformMakeRotation(0);
                     }];
}

+ (void)trancerateAnimation:(UIImageView *) imageView {
    [UIView animateWithDuration:0.2
                     animations:^{
                         imageView.transform = CGAffineTransformMakeTranslation(100.0, 100.0);
                     }
                     completion:^(BOOL finished){
                         imageView.transform = CGAffineTransformMakeTranslation(0, 0);
                     }];
}

+ (void)alphaAnimation:(UIImageView *) imageView {
    [UIView animateWithDuration:2.0f
                          delay:0.0f
                        options:UIViewAnimationOptionAllowUserInteraction
                     animations:^(void){
                         imageView.alpha = 0;
                     }
                     completion:^(BOOL finished){
                         imageView.alpha = 1.0;                         
                     }];
}

@end
