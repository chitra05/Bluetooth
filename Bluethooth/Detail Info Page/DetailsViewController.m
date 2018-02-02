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
    // audio view
    if (_isShowAudioView == YES) {
        _audioView.hidden = false;
    }
    
    self.clip1.layer.cornerRadius = self.clip1.frame.size.height/2;
    self.clip2.layer.cornerRadius = self.clip1.frame.size.height/2;
    self.clip3.layer.cornerRadius = self.clip1.frame.size.height/2;
    self.clip4.layer.cornerRadius = self.clip1.frame.size.height/2;
    
    // 
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void) hiddenView {
    _audioView.hidden = true;
}

@end
