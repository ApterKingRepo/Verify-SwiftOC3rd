//
//  Family.m
//  Pods
//
//  Created by wangcong on 30/06/2017.
//
//

#import "Family.h"
#import <Verify_SwiftOC3rd/Verify_SwiftOC3rd-Swift.h>

@implementation Family

- (void)feed:(NSString *)fFood mFood:(NSString *)mFood {
    [self.father feed:fFood];
    [self.mother feed:mFood];
}

@end
