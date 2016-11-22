//
//  ViewController.m
//  WXPayTest
//
//  Created by 夏远全 on 16/11/22.
//  Copyright © 2016年 广州市东德网络科技有限公司. All rights reserved.
//

#import "ViewController.h"
#import "WXApiRequestHandler.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

//点击调用微信接口(切记需要自己去wxchatpay.pch文件设置必须的参数：商户id、appid等等)
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    //支付
    [WXApiRequestHandler jumpToWxPay];
}

@end
