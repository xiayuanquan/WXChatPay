//
//  AppDelegate.m
//  WXPayTest
//
//  Created by 夏远全 on 16/11/22.
//  Copyright © 2016年 广州市东德网络科技有限公司. All rights reserved.
//

#import "AppDelegate.h"
#import "WXApiManager.h"

@interface AppDelegate ()<WXApiDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //注册微信支付
    [WXApi registerApp:WX_APPID withDescription:@"wxchatpay"];
    
    return YES;
}

+(AppDelegate *)shareAppDelegate{
    return (AppDelegate *)[UIApplication sharedApplication].delegate;
}


#pragma mark - 微信支付回调

- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url
{
    return  [WXApi handleOpenURL:url delegate:[WXApiManager sharedManager]];
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation
{
    return [WXApi handleOpenURL:url delegate:[WXApiManager sharedManager]];
}

// NOTE: 9.0以后使用新API接口
- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<NSString*, id> *)options
{
    return [WXApi handleOpenURL:url delegate:[WXApiManager sharedManager]];
}
@end
