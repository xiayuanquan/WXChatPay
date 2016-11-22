# WXChatPay
# 完整的微信支付

## 文件配置截图
![image](https://github.com/xiayuanquan/WXChatPay/blob/master/WXPayTest/screenshots/1.png);
![image](https://github.com/xiayuanquan/WXChatPay/blob/master/WXPayTest/screenshots/2.png);
![image](https://github.com/xiayuanquan/WXChatPay/blob/master/WXPayTest/screenshots/3.png);
![image](https://github.com/xiayuanquan/WXChatPay/blob/master/WXPayTest/screenshots/4.png);

## 下载下来的demo只要在pch文件中配置好备注写明要配置的参数即可直接运行
      #ifndef wxchatpay_pch
      #define wxchatpay_pch
      // Include any system framework and library headers here that should be included in all compilation units.
      // You will also need to set the Prefix Header build setting of one or more of your targets to reference this file.
      #import "WechatAuthSDK.h"
      #import "WXApi.h"
      #import "WXApiObject.h"
      #import "WXApiRequestHandler.h"

      //------------------------------------------------------------------------------//
      //------------------------------------------------------------------------------//
      //----------------------------------微信支付-------------------------------------//
      //------------------------------------------------------------------------------//
      //------------------------------------------------------------------------------//
      #pragma mark - 需要配置的参数


      // 开放平台登录https://open.weixin.qq.com的开发者中心获取APPID
      #define WX_APPID @"wx01227axxxxxxxxxx"

      // 开放平台登录https://open.weixin.qq.com的开发者中心获取AppSecret。
      #define WX_APPSecret @"8edb769d5d11f25xxxxxxxxx"

      // 微信支付商户号
      #define MCH_ID  @"1412815502"

      // 安全校验码（MD5）密钥，商户平台登录账户和密码登录http://pay.weixin.qq.com
      // 平台设置的“API密钥”，为了安全，请设置为以数字和字母组成的32字符串。
      #define WX_PartnerKey @"Biaojiepay2118816806934dongdekj0"

      #pragma mark - 统一下单请求参数键值
      // 应用id
      #define WXAPPID @"appid"
      // 商户号
      #define WXMCHID @"mch_id"
      // 随机字符串
      #define WXNONCESTR @"nonce_str"
      // 签名
      #define WXSIGN @"sign"
      // 商品描述
      #define WXBODY @"body"
      // 商户订单号
      #define WXOUTTRADENO @"out_trade_no"
      // 总金额
      #define WXTOTALFEE @"total_fee"
      // 终端IP
      #define WXEQUIPMENTIP @"spbill_create_ip"
      // 通知地址
      #define WXNOTIFYURL @"notify_url"
      // 交易类型
      #define WXTRADETYPE @"trade_type"
      // 预支付交易会话
      #define WXPREPAYID @"prepay_id"

      #pragma mark - 微信下单接口
      // 微信统一下单接口连接
      #define WXUNIFIEDORDERURL @"https://api.mch.weixin.qq.com/pay/unifiedorder"
      #endif /* wxchatpay_pch */

### 文件功能介绍

- DataMD5: 用于签名

- WXApiManager: 支付结果工具类

- WXApiRequestHandler: 发起支付工具类

- XMLDictionary: 字典转XML

- IPToolManager: 获取ip地址工具类


