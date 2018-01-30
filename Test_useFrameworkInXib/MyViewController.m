//
//  MyViewController.m
//  Test_useFrameworkInXib
//
//  Created by 罗富中 on 2018/1/29.
//  Copyright © 2018年 George_luofz. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

+ (instancetype)initFromNib:(NSString *)nibName bundle:(NSBundle *)bundle{
    MyViewController *vc = [[MyViewController alloc] initWithNibName:nibName bundle:bundle];
    return vc;
}

@end
