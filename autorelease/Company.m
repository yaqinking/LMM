//
//  Company.m
//  LMM
//
//  Created by 小笠原やきん on 15/8/12.
//  Copyright © 2015年 yaqinking. All rights reserved.
//

#import "Company.h"

@implementation Company

/**
 原來 autorelease 在類方法中是這樣子來用的 w
 感覺 NSArray NSDictionay 中的類方法初始化也是類似的吧。
 */
+ (Company *)company {
    Company *company = [[self alloc] init];
    
    return [company autorelease];
}

- (void)dealloc {
    [super dealloc];
//    [_bangumi release];
    NSLog(@"Company dealloced w");
}

/**
 *
 */
- (Bangumi *)produceBangumi {
    Bangumi *bangumi = [[Bangumi alloc] init];
    bangumi.name = @"Gate";
    [bangumi autorelease];
    return bangumi;
}

@end
