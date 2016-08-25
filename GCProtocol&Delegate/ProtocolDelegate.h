//
//  ProtocolDelegate.h
//  GCProtocol&Delegate
//
//  Created by baijiawei on 1/8/15.
//  Copyright (c) 2015 1147626297@qq.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ProtocolDelegate <NSObject>

// 必须实现的方法
@required
- (void)error;
// 代理传值方法
- (NSString *)sendValue:(NSString *)value;

// 可选实现的方法
@optional
- (void)other;
- (void)other2;
- (void)other3;

@end
