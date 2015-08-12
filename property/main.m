//
//  main.m
//  property
//
//  Created by 小笠原やきん on 15/8/12.
//  Copyright © 2015年 yaqinking. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Company.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Company *a1p = [[Company alloc] init];
        Bangumi *sao = [[Bangumi alloc] init];
        
        
        [a1p setBangumi:sao];
        
        [sao release];
        [a1p release];
        
        
    }
    return 0;
}
