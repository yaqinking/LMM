//
//  main.m
//  autorelease
//
//  Created by 小笠原やきん on 15/8/12.
//  Copyright © 2015年 yaqinking. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Company.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        Company *company = [[Company alloc] init];
        Company *company = [Company company];
        Bangumi *bgm = [company produceBangumi];
//        [company release];
        NSLog(@"Bangumi -> %@",bgm.name);
    }
    return 0;
}
