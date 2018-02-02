//
//  DeviceInformationViewController.h
//  Bluethooth
// 
//  Created by chitra on 1/19/18.
//  Copyright © 2018 chitra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DeviceInformationViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *disconnectBtn;
@property (weak, nonatomic) IBOutlet UIButton *intelligentLightBtn;
@property (weak, nonatomic) IBOutlet UIButton *audioBtn;
@property (weak, nonatomic) IBOutlet UIButton *interiorBtn;
@property (weak, nonatomic) IBOutlet UIButton *weaponBtn;
@property (weak, nonatomic) IBOutlet UILabel *deviceName;
@property (weak, nonatomic) IBOutlet UILabel *deviceInfo;

- (IBAction)tapToDiscount:(id)sender;

- (IBAction)tapToIntelligent:(id)sender;
- (IBAction)tapToAudio:(id)sender;
- (IBAction)tapToInterior:(id)sender;

- (IBAction)tapToWeapon:(id)sender;



@end
