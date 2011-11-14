//
//  ViewController.h
//  AnimationTest
//
//  Created by Geunil Lee on 11/11/08.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
}
@property (retain, nonatomic) IBOutlet UIImageView *imageView0;

- (IBAction)AnimStartAction:(id)sender;
- (IBAction)AnimStopAction:(id)sender;
- (IBAction)ScaleAction:(id)sender;
- (IBAction)RotateAction:(id)sender;
- (IBAction)TrancerateAction:(id)sender;
- (IBAction)AlphaAction:(id)sender;
@end
