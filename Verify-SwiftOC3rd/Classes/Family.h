//
//  Family.h
//  Pods
//
//  Created by wangcong on 30/06/2017.
//
//

#import <Foundation/Foundation.h>
#import "Kid.h"

@class Father, Mother;
@interface Family : NSObject

@property (nonatomic, strong) Kid *kid;
@property (nonatomic, strong) Father *father;
@property (nonatomic, strong) Mother *mother;

@end