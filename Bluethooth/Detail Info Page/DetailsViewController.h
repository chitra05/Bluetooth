//
//  DetailsViewController.h
//  Bluethooth
//
//  Created by chitra on 1/24/18.
//  Copyright © 2018 chitra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *topLabel;

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
@property (weak, nonatomic) IBOutlet UIButton *navigationLight;
@property (weak, nonatomic) IBOutlet UIButton *strobeLight;
@property (weak, nonatomic) IBOutlet UIButton *impulseEngines;
@property (weak, nonatomic) IBOutlet UIButton *deflectorDish;
@property (weak, nonatomic) IBOutlet UIButton *warpEffect;

//interior
@property (nonatomic) BOOL isShowInteriorView;
@property (weak, nonatomic) IBOutlet UIView *interiorView;
@property (weak, nonatomic) IBOutlet UIButton *allInteriorLight;
@property (weak, nonatomic) IBOutlet UIButton *saurcerLight;
@property (weak, nonatomic) IBOutlet UIButton *secondaryHull;
@property (weak, nonatomic) IBOutlet UIButton *neckLight;
@property (weak, nonatomic) IBOutlet UIButton *chillerGrill;
@property (weak, nonatomic) IBOutlet UIButton *bridgeLight;


//weapon
@property (nonatomic) BOOL isShowWeaponView;
@property (weak, nonatomic) IBOutlet UIView *weaponView;

@property (weak, nonatomic) IBOutlet UIButton *photonTorpedo;
@property (weak, nonatomic) IBOutlet UIButton *quantumTorpedo;

@property (weak, nonatomic) IBOutlet UIButton *phaser;
@property (weak, nonatomic) IBOutlet UIButton *phaserArray;




@end
