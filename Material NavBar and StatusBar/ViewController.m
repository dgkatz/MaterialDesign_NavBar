//
//  ViewController.m
//  Material NavBar and StatusBar
//
//  Created by Daniel Katz on 5/1/16.
//  Copyright © 2016 Stratton Design. All rights reserved.
//
#import "ViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    navBar = [[materialNavBar alloc]init];
    [navBar setMaterialColor:[UIColor paperColorPink]];
    self.navigationItem.title = @"Material Nav Bar";
    [self.navigationController setValue: navBar forKeyPath:@"navigationBar"];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
