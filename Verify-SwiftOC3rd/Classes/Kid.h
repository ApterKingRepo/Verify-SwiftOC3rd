//
//  Kid.h
//  Pods
//
//  Created by wangcong on 30/06/2017.
//
//

#import <Foundation/Foundation.h>
#import "PersonProtocol.h"

@interface Kid : NSObject<PersonProtocol>

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *address;

@end
