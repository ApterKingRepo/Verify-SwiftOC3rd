//
//  Kid.m
//  Pods
//
//  Created by wangcong on 30/06/2017.
//
//

#import "Kid.h"

@implementation Kid


- (void)eat {
    NSLog(@"%@ is eating", self.name != nil ? self.name : @"Kid");
}

- (void)run {
    NSLog(@"%@ is running", self.name != nil ? self.name : @"Kid");
}

@end
