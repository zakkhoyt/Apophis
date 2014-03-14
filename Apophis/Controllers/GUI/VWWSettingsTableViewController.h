//
//  VWWSettingsTableViewController.h
//  Apophis
//
//  Created by Zakk Hoyt on 3/13/14.
//  Copyright (c) 2014 Zakk Hoyt. All rights reserved.
//

#import <UIKit/UIKit.h>
@class VWWSettingsTableViewController;

@protocol VWWSettingsTableViewControllerDelegate <NSObject>



@end
@interface VWWSettingsTableViewController : UITableViewController
@property (nonatomic, weak) id <VWWSettingsTableViewControllerDelegate> delegate;
@end
