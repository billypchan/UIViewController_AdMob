//
//  UIViewController_AdMob.m
//  UIViewController(AdMob)
//
//  Created by chan bill on 15/7/2017.
//  Copyright © 2017 home. All rights reserved.
//

#import "UIViewController_AdMob.h"
#import "admobConst.h"

@implementation UIViewController (AdMob)

-(void) initializeAdmob :(GADBannerView *)bannerView :(CGPoint)center :(NSString *)adUnitID{
    // 在螢幕上方建立標準大小的視圖，
    // 可用的 AdSize 常值已在 GADAdSize.h 中解釋。

    bannerView.center = center;
    
    // 指定廣告單元編號。
    bannerView.adUnitID = adUnitID;
    
    // 通知執行階段，將使用者帶往廣告到達網頁後，該恢復哪一個 UIViewController，
    // 並將其加入檢視階層中。
    bannerView.rootViewController = self;
    [self.view addSubview:bannerView];
    
    // 啟動一般請求，隨著廣告一起載入。
    GADRequest * request = [GADRequest request];
    
    // load test ad on my iPhone
    request.testDevices = @[MY_TEST_DEVICE_ID, kGADSimulatorID];
    
    [bannerView loadRequest: request];
}

@end
