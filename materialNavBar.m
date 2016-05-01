//
//  materialNavBar.m
//  Material NavBar and StatusBar
//
//  Created by Daniel Katz on 5/1/16.
//  Copyright © 2016 Stratton Design. All rights reserved.
//

#import "materialNavBar.h"

@implementation materialNavBar
-(void)setMaterialColor:(UIColor *)color{
    self.translucent = NO;
    [self setBarTintColor:color];
    [self calculateDarkColorfromColor:color];
    
    self.layer.shadowOffset = CGSizeMake(0, 1);
    self.layer.shadowRadius = 3;
    self.layer.shadowOpacity = .6f;
    
    [self setShadowImage:[[UIImage alloc] init]];
    [self setBackgroundImage:[[UIImage alloc]init] forBarMetrics:UIBarMetricsDefault];
}
-(void)calculateDarkColorfromColor : (UIColor *)color{
    
    CGFloat red, green, blue, alpha;
    
    [color getRed: &red
               green: &green
                blue: &blue
               alpha: &alpha];
    NSLog(@"red = %f. Green = %f. Blue = %f. Alpha = %f",
          red,
          green,
          blue,
          alpha);
    
    color = [UIColor colorWithRed:red*.7 green:green*.7 blue:blue*.7 alpha:alpha];
    
    [self setStatusBarBackgroundColor:color];
    
}
- (void)setStatusBarBackgroundColor:(UIColor *)color {
    
    UIView *statusBar = [[[UIApplication sharedApplication] valueForKey:@"statusBarWindow"] valueForKey:@"statusBar"];
    
    if ([statusBar respondsToSelector:@selector(setBackgroundColor:)]) {
        statusBar.backgroundColor = color;
    }
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.



@end
