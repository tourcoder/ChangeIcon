//
//  ViewController.m
//  ChangeIcon
//
//  Created by Bin Hua on 2019/2/20.
//  Copyright © 2019 TOURCODER.COM All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, retain) UIButton *btnIcon1, *btnIcon2;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initUI];
}

- (void)initUI {
    _btnIcon1 = [[UIButton alloc] initWithFrame:CGRectMake((self.view.frame.size.width - 100) / 2, 60, 100, 44)];
    [_btnIcon1 setTitle:@"Set 2 A" forState:UIControlStateNormal];
    [_btnIcon1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_btnIcon1 addTarget:self action:@selector(actionClick:) forControlEvents:UIControlEventTouchUpInside];
    _btnIcon1.tag = 1;
    [self.view addSubview:_btnIcon1];
    
    _btnIcon2 = [[UIButton alloc] initWithFrame:CGRectMake((self.view.frame.size.width - 100) / 2, 200, 100, 44)];
    [_btnIcon2 setTitle:@"Set 2 B" forState:UIControlStateNormal];
    [_btnIcon2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_btnIcon2 addTarget:self action:@selector(actionClick:) forControlEvents:UIControlEventTouchUpInside];
    _btnIcon2.tag = 2;
    [self.view addSubview:_btnIcon2];
}

- (void)actionClick:(UIButton *)btn {
    switch (btn.tag) {
        case 1:
        {
            [[UIApplication sharedApplication] setAlternateIconName:@"icon1" completionHandler:^(NSError * _Nullable error) {
                NSLog(@"%@",error);
            }];
        }
            break;
        case 2:
        {
            [[UIApplication sharedApplication] setAlternateIconName:@"icon2" completionHandler:^(NSError * _Nullable error) {
                NSLog(@"%@",error);
            }];
        }
            break;
        default:
            break;
    }
}

@end
