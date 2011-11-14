//
//  AnimationUtils.h
//  AnimationTest
//
//  Created by Geunil Lee on 11/11/11.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AnimationUtils : NSObject
+ (void)startAnimation:(UIImageView *) imageView;
+ (void)scaleAnimation:(UIImageView *) imageView;
+ (void)rotateAnimation:(UIImageView *) imageView;
+ (void)trancerateAnimation:(UIImageView *) imageView;
+ (void)alphaAnimation:(UIImageView *) imageView;

@end
