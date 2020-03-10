//
//  UITableViewCell+logger.m
//  无侵入埋点
//
//  Created by Wilson on 2020/3/10.
//  Copyright © 2020 Wilson. All rights reserved.
//

#import "UITableView+logger.h"
#import "SMHook.h"

@implementation UITableView (logger)

+ (void)load {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        SEL FromSelector = @selector(tableView:didSelectRowAtIndexPath:);
        SEL ToSelector = @selector(hook_tableView:didSelectRowAtIndexPath:);
        [SMHook hookClass:self fromSelector:FromSelector toSelector:ToSelector];
    });
}

- (void)hook_tableView: (UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self insert_tableView:tableView didSelectRowAtIndexPath:indexPath];
    [self hook_tableView:tableView didSelectRowAtIndexPath:indexPath];
}

- (void)insert_tableView: (UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
     NSLog(@"%@", [NSString stringWithFormat:@"hook_点击了%ld行", (long)indexPath.row]);
}

@end
