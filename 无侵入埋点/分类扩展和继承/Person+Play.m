//
//  Person+Play.m
//  无侵入埋点
//
//  Created by Wilson on 2020/3/13.
//  Copyright © 2020 Wilson. All rights reserved.
//

#import "Person+Play.h"
#import <objc/runtime.h>

@interface Person(Play)

@property (nonatomic, strong) NSString *basketball;

@end

@implementation Person (Play)
@dynamic basketball;

- (NSString *)basketball {
    return objc_getAssociatedObject(self, _cmd);
}

- (void)setBasketball:(NSString *)basketball {
    objc_setAssociatedObject(self, @selector(basketball), basketball, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
@end
