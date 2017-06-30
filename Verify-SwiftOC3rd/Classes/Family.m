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

- (void)fatherFeed:(NSString *)fFood mother:(NSString *)mFood {
    Father *father = [[Father alloc] initWithName:@"Davi" kid:self.kid];
    [father feed:fFood];
    
    Mother *mother = [[Mother alloc] initWithName:@"Lily" kid:self.kid];
    [mother feed:mFood];
}

@end
