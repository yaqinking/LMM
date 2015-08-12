//
//  Company.h
//  LMM
//
//  Created by 小笠原やきん on 15/8/12.
//  Copyright © 2015年 yaqinking. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bangumi.h"

@interface Company : NSObject

/**
 *  @property 默认生成简单 setter 和 getter
 其修饰符的作用
 - 内存相关
    1. assign 直接赋值（应用于 基本数据类型 or 对象）
    2. retain 生成符合内存管理原则的 setter（应用于 对象）
    3. copy
 - 多线程相关
    1. nonatomic 不生成多线程相关的代码（iOS 中一般要声明成这个）
    2. atomic 生成 （默认生成的 w）
 - set get 生成相关
    1. readonly 只生成 getter
    2. readwrite 全部生成
 - set get 命名相关
    1. setter = XXX
    2. getter = XXX
 在用 @property 时使用符合内存管理的修饰符后，在 MRC 中一定要在 dealloc 中 release 掉相应的对象。
 */


/**
 *  release 的作用是让 retainCount - 1
 而 autorelease 的作用是把对象添加到 autoreleasepool 中去
 autoreleasepool 会在自身消失的时候，把添加到 pool 里的对象发送一次 or n次 release 消息（n次的来源是这个对象在 autoreleasepool 中发送了几次 autorelease 消息。）
 
 
 */
@property (nonatomic, retain) Bangumi *bangumi;

@end
