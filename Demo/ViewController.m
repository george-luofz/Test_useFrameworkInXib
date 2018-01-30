//
//  ViewController.m
//  Demo
//
//  Created by 罗富中 on 2018/1/26.
//  Copyright © 2018年 George_luofz. All rights reserved.
//

#import "ViewController.h"
#import "MyButton.h"

#import "MyViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet MyButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [_button test];
    
    NSBundle *bundle = [self bundle];
    [bundle load]; //load 的只是executble库
    MyViewController *vc = [MyViewController initFromNib:NSStringFromClass([MyViewController class]) bundle:bundle];
    if(vc){
        [self.view addSubview:vc.view];
    }else{
        NSLog(@"vc nil");
    }
    
}

- (NSBundle *)bundle{
    NSString *bundlePath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"YXAdSDK.bundle"];
    return [NSBundle bundleWithPath:bundlePath];
}
@end
