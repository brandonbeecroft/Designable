//
//  GradientView.m
//  Designable
//
//  Created by beecroft on 5/19/15.
//  Copyright (c) 2015 Awesometistic, LLC. All rights reserved.
//

#import "GradientView.h"

@implementation GradientView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

- (void)drawRect:(CGRect)rect {
    // Drawing code

    CAGradientLayer *gradient = [CAGradientLayer layer];
    [gradient setFrame:rect];
    [gradient setLocations:@[@0, @0.25, @1]];
    [gradient setColors:[NSArray arrayWithObjects:(id)[self.topColor CGColor], (id)[self.midColor CGColor], (id)[self.bottomColor CGColor], nil]];
    [[self layer] setMasksToBounds:YES];
    
    [[self layer] insertSublayer:gradient atIndex:0];
}


@end
