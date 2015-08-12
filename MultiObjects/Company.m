//
//  Company.m
//  LMM
//
//  Created by 小笠原やきん on 15/8/12.
//  Copyright © 2015年 yaqinking. All rights reserved.
//

#import "Company.h"

@implementation Company

- (void)setBangumi:(Bangumi *)bangumi {
    //原来要加判断的原因是这个 T_T 只要是 set 对象都需要加判断。
    if (_bangumi != bangumi) { //先判断下传入的对象是否为新的
        [_bangumi release];//把先前拥有的对象 retainCount - 1 释放旧的拥有的
        _bangumi = [bangumi retain] ;//[bangumi retain] 返回的是 id retain 新的要拥有的
        
    }
}

- (Bangumi *)bangumi {
    return _bangumi;
}

- (void)setOnAirDay:(NSString *)day {
    if (_onAirDay != day) {
        [_onAirDay release];
        _onAirDay = [day retain];
    }
}

- (NSString *)onAirDay {
    return _onAirDay;
}

- (void)produce {
    [_bangumi onAir];
    NSLog(@"Produced");
}

- (void)dealloc {
    [_bangumi release];//保证在 setter 里出现 retain 就要出现 release
    [_onAirDay release];
    [super dealloc];
    NSLog(@"Company dealloc w");
}

@end
