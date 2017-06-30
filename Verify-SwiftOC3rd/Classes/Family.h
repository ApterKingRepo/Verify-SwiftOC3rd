//
//  Family.h
//  Pods
//
//  Created by wangcong on 30/06/2017.
//
//

#import <Foundation/Foundation.h>
#import "Kid.h"

@interface Family : NSObject

@property (nonatomic, strong) Kid *kid;

// 打印爸妈各自的喂食
- (void)fatherFeed:(NSString *)fFood mother:(NSString *)mFood;

@end
