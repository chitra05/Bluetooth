//
//  DetailsViewController.m
//  Bluethooth
//
//  Created by chitra on 1/24/18.
//  Copyright © 2018 chitra. All rights reserved.
//

#import "DetailsViewController.h"

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
        _audioView.hidden = false;
    }else if (_isShowIntelligentLightView == YES) {
        _intelligentLightView.hidden = false;
    }else if (_isShowInteriorView == YES) {
        _interiorView.hidden = false;
    }else if (_isShowWeaponView == YES) {
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
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
