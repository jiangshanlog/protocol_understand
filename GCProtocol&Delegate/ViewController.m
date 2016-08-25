//
//  ViewController.m
//  GCProtocol&Delegate
//
//  Created by baijiawei on 1/8/15.
//  Copyright (c) 2015 1147626297@qq.com. All rights reserved.
//

#import "ViewController.h"
#import "ProtocolDelegate.h"
#import "ViewControllerB.h"

@interface ViewController () <ProtocolDelegate>

@end

@implementation ViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ViewControllerB *vc = segue.destinationViewController;
    [vc setDelegate:self];
}

// 这里实现B控制器的协议方法
- (NSString *)sendValue:(NSString *)value
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"成功" message:value delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
    [alertView show];
    return value;
}

- (void)error
{
    
}


@end
