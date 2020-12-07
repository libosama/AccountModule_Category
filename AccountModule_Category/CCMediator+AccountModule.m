//
//  CCMediator+AccountModule.m
//  AccountModule_Category
//
//  Created by Alec. on 2020/12/7.
//

#import "CCMediator+AccountModule.h"

NSString * const MediatorTargetAccount = @"Account";
NSString * const MediatorActionAccountLoginViewController = @"nativeLoginViewController";

@implementation CCMediator (AccountModule)

- (UIViewController *) Account_viewControllerForLogin {
    UIViewController *viewController = [self performTarget:MediatorTargetAccount action:MediatorActionAccountLoginViewController params: @{} shouldCacheTarget:NO];
    if ([viewController isKindOfClass:[UIViewController class]]) {
        return viewController;
    }else {
        return [[UIViewController alloc] init];
    }
}

@end
