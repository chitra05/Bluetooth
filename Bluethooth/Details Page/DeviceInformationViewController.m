//
//  DeviceInformationViewController.m
//  Bluethooth
//
//  Created by chitra on 1/19/18.
//  Copyright © 2018 chitra. All rights reserved.
//

#import "DeviceInformationViewController.h"
#import "DetailsViewController.h"

@interface DeviceInformationViewController ()

@end

@implementation DeviceInformationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.disconnectBtn.layer.cornerRadius = self.disconnectBtn.frame.size.height/2;
    self.intelligentLightBtn.layer.cornerRadius = self.intelligentLightBtn.frame.size.height/2;
    self.audioBtn.layer.cornerRadius = self.audioBtn.frame.size.height/2;
    self.interiorBtn.layer.cornerRadius = self.interiorBtn.frame.size.height/2;
    self.weaponBtn.layer.cornerRadius = self.weaponBtn.frame.size.height/2;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)tapToDiscount:(id)sender {
}

- (IBAction)tapToIntelligent:(id)sender {
}

- (IBAction)tapToAudio:(id)sender {
    DetailsViewController *vc = [[DetailsViewController alloc]initWithNibName:@"DetailsViewController" bundle:nil];
    vc.isShowAudioView = YES;
    [self.navigationController pushViewController:vc animated:NO];
}

- (IBAction)tapToInterior:(id)sender {
}

- (IBAction)tapToWeapon:(id)sender {
}
@end
