//
//  main.m
//  MultiObjects
//
//  Created by 小笠原やきん on 15/8/12.
//  Copyright © 2015年 yaqinking. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Company.h"
#import "Bangumi.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Company *company = [[Company alloc] init];
        Bangumi *bangumi = [[Bangumi alloc] init];
        
        [company setBangumi:bangumi];//将用一个对象作为参数设置到另一个对象里时，到后者的 setter 里将传入的对象 retain 下，保证拥有传入对象的所有权，以便自己调用方法不会出错。而在后者的 dealloc 方法中要把拥有的对象进行 release，以保证传入的对象的 retainCount - 1
        [company produce];
        
        [bangumi release];
        [company release];
        
    }
    return 0;
}
