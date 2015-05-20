//
//  GradientView.h
//  Designable
//
//  Created by Brandon Beecroft on 5/19/15.
//  Copyright (c) 2015 Awesometistic, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface GradientView : UIView

@property (nonatomic) IBInspectable UIColor *topColor;
@property (nonatomic) IBInspectable UIColor *midColor;
@property (nonatomic) IBInspectable UIColor *bottomColor;

@end


