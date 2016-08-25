//
//  ViewControllerB.m
//  GCProtocol&Delegate
//
//  Created by baijiawei on 1/8/15.
//  Copyright (c) 2015 1147626297@qq.com. All rights reserved.
//

#import "ViewControllerB.h"

@interface ViewControllerB ()

@property (strong, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewControllerB

- (IBAction)backAction:(id)sender
{
    if ([_delegate respondsToSelector:@selector(sendValue:)]) { // 如果协议响应了sendValue:方法
        NSString *result = [_delegate sendValue:_textField.text]; // 通知执行协议方法
        NSLog(@"result = %@" ,result);
    }
    [self.navigationController popViewControllerAnimated:YES];
}

@end
