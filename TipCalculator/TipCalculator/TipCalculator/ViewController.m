//
//  ViewController.m
//  TipCalculator
//
//  Created by William Lam on 2016-01-22.
//  Copyright © 2016 William Lam. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UIButton *calculateButton;
@property (weak, nonatomic) IBOutlet UILabel *finalAmountLabel;
@property (weak, nonatomic) IBOutlet UITextField *tipPercentageTextField;

@end


@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}
- (IBAction)calculateTip:(UIButton *)sender {
	
//	if (self.billAmountTextField = nil) && self.billAmountTextField )
//	[self.billAmountTextField becomeFirstResponder];


	
	NSLog(@"Calculate Tip Button works");
	
	// configure variables to do math
	
	float billAmount = [self.billAmountTextField.text floatValue];
	
	float defaultTip15 = 1.15;
	
	float tip = ([self.tipPercentageTextField.text floatValue] / 100) + 1;
	
	
	// the math
	
	float totalPlus15 = billAmount * defaultTip15;
	
	float totalPlusTip = billAmount * tip;
	
	// update labels in the view
	
//	if (self.tipPercentageTextField = nil)
	
	if (![self.tipPercentageTextField.text isEqual:@""])
	{
		self.finalAmountLabel.text = [NSString stringWithFormat:@"$%.2f", totalPlusTip];
	} else {
	
	self.finalAmountLabel.text = [NSString stringWithFormat:@"$%.2f", totalPlus15];
	}
	
	self.finalAmountLabel.hidden = NO;
	}

@end
