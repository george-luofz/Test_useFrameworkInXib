//
//  MyViewController.h
//  Test_useFrameworkInXib
//
//  Created by 罗富中 on 2018/1/29.
//  Copyright © 2018年 George_luofz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyViewController : UIViewController

+ (instancetype)initFromNib:(NSString *)nibName bundle:(NSBundle *)bundle;
@end
