//
//  ViewController.m
//  2PlayerMath
//
//  Created by William Lam on 2016-01-18.
//  Copyright © 2016 William Lam. All rights reserved.
//

#import "ViewController.h"
#import "Player.h"
#import "GameModel.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *player1ScoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *player2ScoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *gamePromptLabel;

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

@end
