//
//  ViewController.m
//  FastestRPM
//
//  Created by William Lam on 2016-01-21.
//  Copyright © 2016 William Lam. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *needle;
@property (weak, nonatomic) IBOutlet UIView *mainView;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	UIImageView *needle = [[UIImageView alloc] init];
	
	
	UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(onDragGesture:)];
	
	[self.mainView addGestureRecognizer:panGesture];
	
	CGFloat initialPos = 145;
	self.needle.transform = CGAffineTransformMakeRotation(initialPos * M_PI / 180.0);
	
	[self.mainView addSubview:needle];

	
	

}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (IBAction)onDragGesture:(UIPanGestureRecognizer *)panGesture {
	CGPoint fingerLocation = [panGesture locationInView:self.mainView];
	NSLog(@"I'm at (%f %f)", fingerLocation.x, fingerLocation.y);
	
	CGPoint velocity = [panGesture velocityInView:self.mainView];
	NSLog((@))
	
	[panGesture velocity]

}

@end
