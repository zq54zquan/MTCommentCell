//
//  MTConstants.h
//  Metro
//
//  Created by ZhouQuan on 14-2-12.
//  Copyright (c) 2014年 iOSTeam. All rights reserved.
//
#define kAPPLanguageKey                     @"appLanguage"



#define HOST                                @"http://host"                             //请求主机名
#define REGISTERPATH                        @"/register"                               //注册路径
#define LOGINPATH                           @"/login"                                  //登陆路径
#define MACADDRESSPATH                      @"/macAddress"                             //获取本机mac路径

#define kLoginPhoneNumberKey                @""                                        //登陆请求PhoneNumber对应的Key
#define kLoginValidateCodeKey               @""                                        //登陆请求ValidateCode对应的Key


#define SCREENWIDTH             CGRectGetWidth([[UIScreen mainScreen] bounds])
#define SCREENHEIGHT            CGRectGetHeight([[UIScreen mainScreen] bounds])
#define NAVHEIGHT               44
#define STATUSHEIGHT            20
#define TABHEIGHT               48

#define ios7Above               ([[[UIDevice currentDevice] systemVersion] floatValue]>=7.0)
#define isiPhone5  ([[UIScreen mainScreen] bounds].size.height == 568)?TRUE:FALSE


#define kMacAddressKeyChainKey           @"macAddress"
#define kMacAddressKeyChainServiceName   @"macAddressService"
#define kMacAddressKeyChainAccountName   @"macAddressAccount"

#define kLinkUrl @"linkurl"

#define WXAPIKEY                @"wx1f369e2f037bc24c"
#define BaiduMapKey             @"3aYkSsMkqz0tw1Xf65OI9ZHY"


#define GeneralFrame CGRectMake(10,10,320-2*10,(([[UIScreen mainScreen] bounds].size.height == 568)?480:390)-TABHEIGHT)

#define kHomeGTCPromotionCellKey          @"HomeGTCPromotionCell"
#define kHomeRecomandPromotionCellKey     @"HomeRecomandPromotionCell"
#define kHomeCouponCellKey                @"HomeCouponCell"
#define kHomePromotionHeaderKey           @"HomePromotionHeader"