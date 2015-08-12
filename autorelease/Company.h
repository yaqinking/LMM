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

+ (Company *)company;

- (Bangumi *)produceBangumi;

@end
