//
//  Company.m
//  LMM
//
//  Created by 小笠原やきん on 15/8/12.
//  Copyright © 2015年 yaqinking. All rights reserved.
//

#import "Company.h"

@implementation Company

- (void)dealloc {
    [super dealloc];
    [_bangumi release];
    NSLog(@"Company dealloced w");
}

@end
