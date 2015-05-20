//
//  ViewController.m
//  Designable
//
//  Created by beecroft on 5/19/15.
//  Copyright (c) 2015 Awesometistic, LLC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

UIImageView *navBarHairlineImageView;

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self.navigationController.navigationBar setTitleTextAttributes:
    [NSDictionary dictionaryWithObjectsAndKeys: [UIFont fontWithName:@"Baskerville" size:10], NSFontAttributeName, nil]];
    
    navBarHairlineImageView.hidden = YES;
    
    self.title = @"¯\\_(ツ)_/¯";
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
    navBarHairlineImageView = [self findHairlineImageViewUnder:self.navigationController.navigationBar];
    
}

- (UIImageView *)findHairlineImageViewUnder:(UIView *)view {
    if ([view isKindOfClass:UIImageView.class] && view.bounds.size.height <= 1.0) {
        return (UIImageView *)view;
    }
    for (UIView *subview in view.subviews) {
        UIImageView *imageView = [self findHairlineImageViewUnder:subview];
        if (imageView) {
            return imageView;
        }
    }
    return nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
