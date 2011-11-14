//
//  ViewController.m
//  AnimationTest
//
//  Created by Geunil Lee on 11/11/08.
//  Copyright (c) 2011年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "AnimationUtils.h"

@implementation ViewController
@synthesize imageView0;
bool animFlg = true;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    imageView0.image = [UIImage imageNamed:@"maru.png"];

//    UIImage* image=[UIImage imageNamed:@"batu.png"];

}

- (void)viewDidUnload
{
    [self setImageView0:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)dealloc {
    [imageView0 release];
    [super dealloc];
}

- (IBAction)AnimStartAction:(id)sender {
    [AnimationUtils startAnimation:imageView0];
}

- (IBAction)AnimStopAction:(id)sender {
    imageView0.image = [UIImage imageNamed:@"batu.png"];
}

- (IBAction)ScaleAction:(id)sender {
    [AnimationUtils scaleAnimation:imageView0];
}

- (IBAction)RotateAction:(id)sender {
    [AnimationUtils rotateAnimation:imageView0];
}

- (IBAction)TrancerateAction:(id)sender {
    [AnimationUtils trancerateAnimation:imageView0];
}

- (IBAction)AlphaAction:(id)sender {
    [AnimationUtils alphaAnimation:imageView0];
}
@end
