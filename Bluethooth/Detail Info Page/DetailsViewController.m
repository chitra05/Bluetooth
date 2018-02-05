//
//  DetailsViewController.m
//  Bluethooth
//
//  Created by chitra on 1/24/18.
//  Copyright © 2018 chitra. All rights reserved.
//

#import "DetailsViewController.h"
#import "CustomColor.h"

@interface DetailsViewController ()

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = YES;
    _audioView.hidden = true;
    _intelligentLightView.hidden = true;
    _weaponView.hidden = true;
    _interiorView.hidden = true;
    // audio view
    if (_isShowAudioView == YES) {
        _topLabel.text = @"Audio";
        _audioView.hidden = false;
    }else if (_isShowIntelligentLightView == YES) {
        _topLabel.text = @"Intelligent Light";
        _intelligentLightView.hidden = false;
    }else if (_isShowInteriorView == YES) {
        _topLabel.text = @"Interior Light";
        _interiorView.hidden = false;
    }else if (_isShowWeaponView == YES) {
        _topLabel.text = @"Weapon";
        _interiorView.hidden = false;
    }
    
    self.clip1.layer.cornerRadius = self.clip1.frame.size.height/2;
    self.clip2.layer.cornerRadius = self.clip1.frame.size.height/2;
    self.clip3.layer.cornerRadius = self.clip1.frame.size.height/2;
    self.clip4.layer.cornerRadius = self.clip1.frame.size.height/2;
    self.clip5.layer.cornerRadius = self.clip1.frame.size.height/2;
    self.clip6.layer.cornerRadius = self.clip1.frame.size.height/2;
    self.clip7.layer.cornerRadius = self.clip1.frame.size.height/2;
    self.clip8.layer.cornerRadius = self.clip1.frame.size.height/2;
    self.clip9.layer.cornerRadius = self.clip1.frame.size.height/2;
    self.clip10.layer.cornerRadius = self.clip1.frame.size.height/2;
    
    // Intelligent Light view
    self.navigationLight.layer.cornerRadius = self.navigationLight.frame.size.height/2;
    self.strobeLight.layer.cornerRadius = self.strobeLight.frame.size.height/2;
    self.impulseEngines.layer.cornerRadius = self.impulseEngines.frame.size.height/2;
    self.deflectorDish.layer.cornerRadius = self.deflectorDish.frame.size.height/2;
    self.warpEffect.layer.cornerRadius = self.warpEffect.frame.size.height/2;
    
    //Interior View
    self.allInteriorLight.layer.cornerRadius = self.allInteriorLight.frame.size.height/2;
    self.saurcerLight.layer.cornerRadius = self.saurcerLight.frame.size.height/2;
    self.secondaryHull.layer.cornerRadius = self.secondaryHull.frame.size.height/2;
    self.neckLight.layer.cornerRadius = self.neckLight.frame.size.height/2;
    self.chillerGrill.layer.cornerRadius = self.chillerGrill.frame.size.height/2;
    self.bridgeLight.layer.cornerRadius = self.bridgeLight.frame.size.height/2;
    
    //Weapon
    self.photonTorpedo.layer.cornerRadius = self.photonTorpedo.frame.size.height/2;
    self.quantumTorpedo.layer.cornerRadius = self.quantumTorpedo.frame.size.height/2;
    self.phaser.layer.cornerRadius = self.phaser.frame.size.height/2;
    self.phaserArray.layer.cornerRadius = self.phaserArray.frame.size.height/2;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)tapToAudio:(UIButton *)sender {
    UIButton *button = (UIButton *)sender;
    NSInteger tag = button.tag;
    if ([button.backgroundColor isEqual:[CustomColor customRedColor]]) {
        button.backgroundColor = [CustomColor customGreenColor];
    }else {
        button.backgroundColor = [CustomColor customRedColor];
    }
}
@end
