//
//  VWWUserDefaults.m
//  Synthesizer
//
//  Created by Zakk Hoyt on 2/17/14.
//  Copyright (c) 2014 Zakk Hoyt. All rights reserved.
//

#import "VWWUserDefaults.h"


static NSString *VWWUserDefaultsFilterRedKey = @"filterRed";
static NSString *VWWUserDefaultsFilterGreenKey = @"filterGreen";
static NSString *VWWUserDefaultsFilterBlueKey = @"filterBlue";

static NSString *VWWUserDefaultsRedThesholdKey = @"redThreshold";
static NSString *VWWUserDefaultsGreenThesholdKey = @"greenThreshold";
static NSString *VWWUserDefaultsBlueThesholdKey = @"blueThreshold";

static NSString *VWWUserDefaultsRedCompareKey = @"redCompare";
static NSString *VWWUserDefaultsGreenCompareKey = @"greenCompare";
static NSString *VWWUserDefaultsBlueCompareKey = @"blueCompare";



@implementation VWWUserDefaults




+(BOOL)filterRedPixels{
    return [[NSUserDefaults standardUserDefaults] boolForKey:VWWUserDefaultsFilterRedKey];
}
+(void)setFilterRedPixels:(BOOL)filter{
    [[NSUserDefaults standardUserDefaults] setBool:filter forKey:VWWUserDefaultsFilterRedKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
}


+(BOOL)filterGreenPixels{
    return [[NSUserDefaults standardUserDefaults] boolForKey:VWWUserDefaultsFilterGreenKey];
}
+(void)setFilterGreenPixels:(BOOL)filter{
    [[NSUserDefaults standardUserDefaults] setBool:filter forKey:VWWUserDefaultsFilterGreenKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
}


+(BOOL)filterBluePixels{
    return [[NSUserDefaults standardUserDefaults] boolForKey:VWWUserDefaultsFilterBlueKey];
}
+(void)setFilterBluePixels:(BOOL)filter{
    [[NSUserDefaults standardUserDefaults] setBool:filter forKey:VWWUserDefaultsFilterBlueKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
}


+(NSUInteger)redThreshold{
    NSNumber *thresholdNumber = [[NSUserDefaults standardUserDefaults] objectForKey:VWWUserDefaultsRedThesholdKey];
    return thresholdNumber == nil ? 0x80 : thresholdNumber.unsignedIntegerValue;
}
+(void)setRedThreshold:(NSUInteger)threshold{
    [[NSUserDefaults standardUserDefaults] setObject:@(threshold) forKey:VWWUserDefaultsRedThesholdKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+(NSUInteger)greenThreshold{
    NSNumber *thresholdNumber = [[NSUserDefaults standardUserDefaults] objectForKey:VWWUserDefaultsGreenThesholdKey];
    return thresholdNumber == nil ? 0x80 : thresholdNumber.unsignedIntegerValue;
}
+(void)setGreenThreshold:(NSUInteger)threshold{
    [[NSUserDefaults standardUserDefaults] setObject:@(threshold) forKey:VWWUserDefaultsGreenThesholdKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
}


+(NSUInteger)blueThreshold{
    NSNumber *thresholdNumber = [[NSUserDefaults standardUserDefaults] objectForKey:VWWUserDefaultsBlueThesholdKey];
    return thresholdNumber == nil ? 0x80 : thresholdNumber.unsignedIntegerValue;
}
+(void)setBlueThreshold:(NSUInteger)threshold{
    [[NSUserDefaults standardUserDefaults] setObject:@(threshold) forKey:VWWUserDefaultsBlueThesholdKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
}


+(NSUInteger)redCompare{
    NSNumber *compareNumber = [[NSUserDefaults standardUserDefaults] objectForKey:VWWUserDefaultsRedCompareKey];
    return compareNumber == nil ? 0x80 : compareNumber.unsignedIntegerValue;
}
+(void)setRedCompare:(NSUInteger)compare{
    [[NSUserDefaults standardUserDefaults] setObject:@(compare) forKey:VWWUserDefaultsRedCompareKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
}


+(NSUInteger)greenCompare{
    NSNumber *compareNumber = [[NSUserDefaults standardUserDefaults] objectForKey:VWWUserDefaultsGreenCompareKey];
    return compareNumber == nil ? 0x80 : compareNumber.unsignedIntegerValue;
}
+(void)setGreenCompare:(NSUInteger)compare{
    [[NSUserDefaults standardUserDefaults] setObject:@(compare) forKey:VWWUserDefaultsGreenCompareKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
}


+(NSUInteger)blueCompare{
    NSNumber *compareNumber = [[NSUserDefaults standardUserDefaults] objectForKey:VWWUserDefaultsBlueCompareKey];
    return compareNumber == nil ? 0x80 : compareNumber.unsignedIntegerValue;
}
+(void)setBlueCompare:(NSUInteger)compare{
    [[NSUserDefaults standardUserDefaults] setObject:@(compare) forKey:VWWUserDefaultsBlueCompareKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

@end
