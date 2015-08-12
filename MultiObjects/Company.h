//
//  Company.h
//  LMM
//
//  Created by 小笠原やきん on 15/8/12.
//  Copyright © 2015年 yaqinking. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bangumi.h"

@interface Company : NSObject {
    Bangumi *_bangumi;
    NSString *_onAirDay;
}

- (void)setBangumi:(Bangumi *)bangumi;
- (Bangumi *)bangumi;

- (void)setOnAirDay:(NSString *)day;
- (NSString *)onAirDay;

- (void)produce;

@end
