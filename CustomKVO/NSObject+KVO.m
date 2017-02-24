//
//  NSObject+KVO.m
//  CustomKVO
//
//  Created by wangmiao on 2017/2/23.
//  Copyright © 2017年 wangmiao. All rights reserved.
//

#import "NSObject+KVO.h"
#import <objc/runtime.h>
#import "WMKVONotifying_Student.h"

@implementation NSObject (KVO)

- (void)wm_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(nullable void *)context
{
    // 修改isa指针
    object_setClass(self, [WMKVONotifying_Student class]);
    
    // 把观察者保存到当前类
    // 给那个对象添加关联
    objc_setAssociatedObject(self, @"observer", observer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
