//
//  VWWSettingsTableViewController.m
//  Apophis
//
//  Created by Zakk Hoyt on 3/13/14.
//  Copyright (c) 2014 Zakk Hoyt. All rights reserved.
//

#import "VWWSettingsTableViewController.h"

@interface VWWSettingsTableViewController ()

@property (weak, nonatomic) IBOutlet UISwitch *redSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *greenSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *blueSwitch;

@property (weak, nonatomic) IBOutlet UISlider *redSlider;
@property (weak, nonatomic) IBOutlet UISlider *greenSlider;
@property (weak, nonatomic) IBOutlet UISlider *blueSlider;

@property (weak, nonatomic) IBOutlet UISegmentedControl *redSegment;
@property (weak, nonatomic) IBOutlet UISegmentedControl *greenSegment;
@property (weak, nonatomic) IBOutlet UISegmentedControl *blueSegment;


@end

@implementation VWWSettingsTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.redSlider.minimumValue = 0;
    self.redSlider.maximumValue = 0xFF;
    self.greenSlider.minimumValue = 0;
    self.greenSlider.maximumValue = 0xFF;
    self.blueSlider.minimumValue = 0;
    self.blueSlider.maximumValue = 0xFF;
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    self.redSwitch.on = [VWWUserDefaults filterRedPixels];
    self.greenSwitch.on = [VWWUserDefaults filterGreenPixels];
    self.blueSwitch.on = [VWWUserDefaults filterBluePixels];
    
    self.redSlider.value = [VWWUserDefaults redThreshold];
    self.greenSlider.value = [VWWUserDefaults greenThreshold];
    self.blueSlider.value = [VWWUserDefaults blueThreshold];
    
    self.redSegment.selectedSegmentIndex = [VWWUserDefaults redCompare];
    self.greenSegment.selectedSegmentIndex = [VWWUserDefaults greenCompare];
    self.blueSegment.selectedSegmentIndex = [VWWUserDefaults blueThreshold];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark IBActions
- (IBAction)redSwitchValueChanged:(UISwitch*)sender {
    [VWWUserDefaults setFilterRedPixels:sender.on];
}
- (IBAction)greenSwitchValueChanged:(UISwitch*)sender {
    [VWWUserDefaults setFilterGreenPixels:sender.on];
}
- (IBAction)blueSwitchValueChanged:(UISwitch*)sender {
    [VWWUserDefaults setFilterBluePixels:sender.on];
}


- (IBAction)redSliderValueChanged:(UISlider*)sender {
    [VWWUserDefaults setRedThreshold:sender.value];
}
- (IBAction)greenSliderValueChanged:(UISlider*)sender {
    [VWWUserDefaults setGreenThreshold:sender.value];
}
- (IBAction)blueSliderValueChanged:(UISlider*)sender {
    [VWWUserDefaults setBlueThreshold:sender.value];
}


- (IBAction)redSegmentValueChanged:(UISegmentedControl*)sender {
    [VWWUserDefaults setRedCompare:sender.selectedSegmentIndex];
}
- (IBAction)greenSegmentValueChanged:(UISegmentedControl*)sender {
    [VWWUserDefaults setGreenCompare:sender.selectedSegmentIndex];
}
- (IBAction)blueSegmentValueChanged:(UISegmentedControl*)sender {
    [VWWUserDefaults setBlueCompare:sender.selectedSegmentIndex];
}



@end
