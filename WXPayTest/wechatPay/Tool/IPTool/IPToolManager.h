//
//  IPToolManager.h
//  WXPayTest
//
//  Created by 夏远全 on 16/11/22.
//  Copyright © 2016年 广州东德科技. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IPToolManager : NSObject
/**
 *  单例
 */
+(instancetype)sharedManager;

/**
 *  获取当前的ip地址
 */
-(NSString *)currentIpAddress;

@end
