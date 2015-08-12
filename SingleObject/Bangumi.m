//
//  Bangumi.m
//  LMM
//
//  Created by 小笠原やきん on 15/8/12.
//  Copyright © 2015年 yaqinking. All rights reserved.
//

#import "Bangumi.h"

@implementation Bangumi

-(void)dealloc {
    [super dealloc];
    NSLog(@"Bangumi dealloc w");
}

-(NSString *)description {
    return [NSString stringWithFormat:@"Episode = %d",_episode];
}

- (void)onAir {
    NSLog(@"Now on air");
}

@end
