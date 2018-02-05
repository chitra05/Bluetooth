//
//  DetailsViewController.h
//  Bluethooth
//
//  Created by chitra on 1/24/18.
//  Copyright © 2018 chitra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailsViewController : UIViewController

//Audio View
@property (nonatomic) BOOL isShowAudioView;
@property (weak, nonatomic) IBOutlet UIView *audioView;

@property (weak, nonatomic) IBOutlet UIButton *clip1;
@property (weak, nonatomic) IBOutlet UIButton *clip2;
@property (weak, nonatomic) IBOutlet UIButton *clip3;
@property (weak, nonatomic) IBOutlet UIButton *clip4;
@property (weak, nonatomic) IBOutlet UIButton *clip5;
@property (weak, nonatomic) IBOutlet UIButton *clip6;
@property (weak, nonatomic) IBOutlet UIButton *clip7;
@property (weak, nonatomic) IBOutlet UIButton *clip8;
@property (weak, nonatomic) IBOutlet UIButton *clip9;
@property (weak, nonatomic) IBOutlet UIButton *clip10;

//Intelligent Light
@property (nonatomic) BOOL isShowIntelligentLightView;
@property (weak, nonatomic) IBOutlet UIView *intelligentLightView;

//interior
@property (nonatomic) BOOL isShowInteriorView;
@property (weak, nonatomic) IBOutlet UIView *interiorView;

//weapon
@property (nonatomic) BOOL isShowWeaponView;
@property (weak, nonatomic) IBOutlet UIView *weaponView;



@end
