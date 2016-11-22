//
//  DDWxApiManger.h
//  WXPayTest
//
//  Created by 夏远全 on 16/11/22.
//  Copyright © 2016年 广州东德科技. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WXApiManager : NSObject<WXApiDelegate>

+ (instancetype)sharedManager;

@end
