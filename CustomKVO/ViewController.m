//
//  ViewController.m
//  CustomKVO
//
//  Created by wangmiao on 2017/2/23.
//  Copyright © 2017年 wangmiao. All rights reserved.
//

#import "ViewController.h"
#import "Student.h"
#import "NSObject+KVO.h"

@interface ViewController ()

@property (nonatomic, strong) Student *stu;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _stu = [[Student alloc] init];
    // 系统的方法
//    [_stu addObserver:self forKeyPath:@"age" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];
    // 自定义的方法
    [_stu wm_addObserver:self forKeyPath:@"age" options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld context:nil];
    
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context
{
    NSDictionary *dic = change;
    NSLog(@"%@", dic);
    NSLog(@"%ld", _stu.age);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    _stu.age++;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
