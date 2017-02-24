//
//  NSObject+KVO.h
//  CustomKVO
//
//  Created by wangmiao on 2017/2/23.
//  Copyright © 2017年 wangmiao. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (KVO)
- (void)wm_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(nullable void *)context;
@end
