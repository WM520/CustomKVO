//
//  WMKVONotifying_Student.m
//  CustomKVO
//
//  Created by wangmiao on 2017/2/24.
//  Copyright © 2017年 wangmiao. All rights reserved.
//

#import "WMKVONotifying_Student.h"
#import <objc/runtime.h>

@implementation WMKVONotifying_Student

- (void)setAge:(NSInteger)age
{
    [super setAge:age];
    
    // 通知观察者
    id object = objc_getAssociatedObject(self, @"observer");
    
    [object observeValueForKeyPath:@"age" ofObject:object change:nil context:nil];
    
}

@end
