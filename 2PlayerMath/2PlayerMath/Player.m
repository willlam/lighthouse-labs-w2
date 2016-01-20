//
//  Player.m
//  2PlayerMath
//
//  Created by William Lam on 2016-01-18.
//  Copyright © 2016 William Lam. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype)init
{
	self = [super init];
	if (self) {
		_hasLives = hasLives;
	}
	return self;
}

@end
