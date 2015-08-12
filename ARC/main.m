//
//  main.m
//  ARC
//
//  Created by 小笠原やきん on 15/8/12.
//  Copyright © 2015年 yaqinking. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bangumi.h"

/**
 ARC
 - 指针类型 ARC -> MRC 对应
    1. strong -> 「retain (默认情况下生成的，应用于对象类型)」 只要有强指针指向对象，系统就不会回收对象
    2. weak -> 「assign （应用于基本数据类型）」只要没有强指针指向对象，系统立即回收该对象
 当然虽然说的是对应，但不要混用 w
 在 ARC 下一般使用的有 strong weak （用于对象） assign（用于基本数据类型）
 当类中出现循环引用的时候，需要将一个的修饰符 strong 改为 weak 具体改哪个，看谁拥有谁 w，且在改为 weak 里面使用 @class 声明使用 weak 修饰的数据类型（类名） w，要调用方法的话，在 .m 文件中引入那个类的头文件。
 
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        __strong Bangumi *bgm = [[Bangumi alloc] init];
        __weak Bangumi *bgm = [[Bangumi alloc] init];
        
        NSLog(@"wwwww");
    }
    return 0;
}
