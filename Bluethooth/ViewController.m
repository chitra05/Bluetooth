//
//  ViewController.m
//  Bluethooth
//  
//  Created by chitra on 1/19/18.
//  Copyright © 2018 chitra. All rights reserved.
//

#import "ViewController.h"
#import <CoreBluetooth/CoreBluetooth.h>
#import "JNKeychain.h"
#import "BluetoothManager.h"
#import "BluetoothDeviceCell.h"

static NSString *BluetoothCellIdenfier = @"BluetoothDeviceCell";
static BluetoothManager *_bluetoothManager = nil;
@interface ViewController ()<CBCentralManagerDelegate, UIAlertViewDelegate,UITableViewDataSource,UITableViewDelegate>
@property (readwrite, nonatomic, strong) CBCentralManager *centralManager;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSBundle *b = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/BluetoothManager.framework"];
        if (![b load]) {
            NSLog(@"Error"); 
        } else {
            _bluetoothManager = [NSClassFromString(@"BluetoothManager") valueForKey:@"sharedInstance"];
        }
    });
    
    
    
    self.centralManager = [[CBCentralManager alloc]
                           initWithDelegate:self
                           queue:dispatch_get_main_queue()
                           options:@{CBCentralManagerOptionShowPowerAlertKey: @(YES)}];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    UINib *nib = [UINib nibWithNibName:BluetoothCellIdenfier bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:BluetoothCellIdenfier];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

- (void)centralManagerDidUpdateState:(nonnull CBCentralManager *)central {
    
    if (central.state == CBCentralManagerStatePoweredOff) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message: @"Application is requesting permission to turn on Bluetooth. Allow?" delegate: nil cancelButtonTitle:@"NO" otherButtonTitles:@"YES", nil];
        alert.delegate = self;
        [alert show];
    } else if (central.state == CBCentralManagerStatePoweredOn) {
        [_bluetoothManager deviceScanningEnabled];
        id pair = [_bluetoothManager pairedDevices];
        NSLog(@"hi = %@",pair);
    }
}

- (void)alertView:(UIAlertView*)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    if (buttonIndex == 1) {
        [_bluetoothManager setEnabled:true];
        
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    BluetoothDeviceCell *cell = [tableView dequeueReusableCellWithIdentifier:BluetoothCellIdenfier forIndexPath:indexPath];
    return cell;
}

@end
