//
//  Target_A.m
//  A
//
//  Created by 吴迪玮 on 2017/3/23.
//  Copyright © 2017年 Paodong. All rights reserved.
//

#import "Target_A.h"
#import "AViewController.h"

@implementation Target_A

- (UIViewController *)Action_viewController:(NSDictionary *)params {
    return [[AViewController alloc] init];
}

@end
