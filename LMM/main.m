//
//  main.m
//  LMM
//
//  Created by 小笠原やきん on 15/8/12.
//  Copyright © 2015年 yaqinking. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bangumi.h"
/*
原则：
看到 alloc new retain 就要 release or autorelease
 
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Bangumi *bangumi = [[Bangumi alloc] init];//1
        [bangumi retain];//2
        NSLog(@"Current retain count %lu",(unsigned long)bangumi.retainCount);
        
        [bangumi release];//1
        NSLog(@"Current retain count %lu",(unsigned long)bangumi.retainCount);
        
        [bangumi release];//0
        
    }
    return 0;
}
