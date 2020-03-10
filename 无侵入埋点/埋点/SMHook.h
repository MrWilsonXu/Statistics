//
//  SMHook.h
//  无侵入埋点
//
//  Created by Wilson on 2020/3/10.
//  Copyright © 2020 Wilson. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SMHook : NSObject
+ (void)hookClass:(Class)classObject fromSelector:(SEL)fromSelector toSelector:(SEL)toSelector;
@end

NS_ASSUME_NONNULL_END
