//
//  UIViewController_AdMob.h
//  UIViewController(AdMob)
//
//  Created by chan bill on 15/7/2017.
//  Copyright © 2017 home. All rights reserved.
//

#import <GoogleMobileAds/GoogleMobileAds.h>

@interface UIViewController (AdMob)
-(void) initializeAdmob :(GADBannerView *)bannerView :(CGPoint)center :(NSString *)adUnitID;
@end
