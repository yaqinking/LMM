//
//  main.m
//  SingleObject
//
//  Created by 小笠原やきん on 15/8/12.
//  Copyright © 2015年 yaqinking. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bangumi.h"
//避免野指针错误
void func1() {
    Bangumi *gate = [[Bangumi alloc] init];
    
    gate.episode = 24;
    
    NSLog(@"%@",gate);
    
    [gate release];
    gate = nil;//在确定不会再使用该对象的时候，将其设置为 nil 来避免野指针错误。
    [gate setEpisode:30];//相当于 [nil setEpisode:30] 给 nil 对象发消息不会产生错误。
    [gate onAir];//[nil onAir] 什么都不会发生。
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//产生内存泄漏的原因是，对象并不再使用，然而 retainCount 不为 0。（也就是一直存在于内存中）
//防止内存泄漏的一个方法是，一个 alloc or new or retain 配对一个 release or autolease 使用。
        
        
    }
    return 0;
}
