//
//  Const.swift
//  TodayNewsFirst
//
//  Created by lalala on 2017/10/23.
//  Copyright © 2017年 吕山虎. All rights reserved.
//

import UIKit
import AdSupport //广告框架

enum CellType: Int {
    case normalCell = 0  //一般的Cell
    case userCell = 32 //带有用户的Cell
    case relationCell = 50 //他们也在用头条
}

//屏幕的宽度
let screenWidth = UIScreen.main.bounds.width
//屏幕的高度
let screenHeight = UIScreen.main.bounds.height

let IID: String = "5034850950"

let device_id: String = "6096495334"

let app_name = "news_article"

let channel = "App%20Store"

let device_platform = "iphone"
//当前的时间
let date = Date()
let currentTimeInterval = UInt64(date.timeIntervalSince1970 * 1000)

let resolution = "\(screenWidth * 2)*\(screenHeight * 2)"

let idfv = UIDevice.current.identifierForVendor?.uuidString

//版本号
let versionCode = Bundle.main.infoDictionary?["CFBundleShortVersionString"]
// 系统的版本号
let systemVersion = UIDevice.current.systemVersion
//idfa
let idfa = ASIdentifierManager.shared().advertisingIdentifier.uuidString

//服务器地址
let BASE_URL = "https://is.snssdk.com"

//左右间距
let kMargin: CGFloat = 15.0
//导航栏高度
let kNavBarHeight: CGFloat = 64.0
//tabbar 高度
let kTabbarHeight: CGFloat = 49.0
//首页新闻间距
let kHomeMargin: CGFloat = 15.0
//微头条界面 头部视图的高度
let kWeiTouTiaoHeaderheight:CGFloat = 45.0
/// 我的界面 头部视图 的高度
let kMineHeaderViewHieght: CGFloat = 260.0
/// 关注详情界面 头部视图 的高度
var kConcernHeaderViewHieght: CGFloat = 330.0

//iphone 5
let isIPhone5 = screenHeight == 568 ? true : false
//iphone6
let isIPhone6 = screenHeight == 667 ? true : false
//iphone6p
let isIPhone6P = screenHeight == 736 ? true : false


let isNight = "isNight"

let TabBarDidSelectedNotification = "TabBarDidSelectedNotification"








