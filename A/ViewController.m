//
//  ViewController.m
//  A
//
//  Created by 吴迪玮 on 2017/3/23.
//  Copyright © 2017年 Paodong. All rights reserved.
//

#import "ViewController.h"
#import <HandyFrame/UIView+LayoutMethods.h>
#import "AViewController.h"

@interface ViewController ()

@property (strong, nonatomic) UIButton *tagButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.tagButton];
}

-(void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    
    [self.tagButton sizeToFit];
    [self.tagButton centerEqualToView:self.view];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)didTappedPushAViewController:(UIButton *)btn {
    AViewController *viewController = [[AViewController alloc] init];
    [self.navigationController pushViewController:viewController animated:YES];
}

-(UIButton *)tagButton {
    if (!_tagButton) {
        _tagButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_tagButton setTitle:@"Push A View Controller" forState:UIControlStateNormal];
        [_tagButton setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
        [_tagButton addTarget:self action:@selector(didTappedPushAViewController:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _tagButton;
}

@end
