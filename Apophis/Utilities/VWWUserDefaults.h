//
//  VWWUserDefaults.h
//  Synthesizer
//
//  Created by Zakk Hoyt on 2/17/14.
//  Copyright (c) 2014 Zakk Hoyt. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VWWUserDefaults : NSObject



+(BOOL)filterRedPixels;
+(void)setFilterRedPixels:(BOOL)filter;

+(BOOL)filterGreenPixels;
+(void)setFilterGreenPixels:(BOOL)filter;

+(BOOL)filterBluePixels;
+(void)setFilterBluePixels:(BOOL)filter;

+(NSUInteger)redThreshold;
+(void)setRedThreshold:(NSUInteger)threshold;

+(NSUInteger)greenThreshold;
+(void)setGreenThreshold:(NSUInteger)threshold;

+(NSUInteger)blueThreshold;
+(void)setBlueThreshold:(NSUInteger)threshold;

+(NSUInteger)redCompare;
+(void)setRedCompare:(NSUInteger)compare;

+(NSUInteger)greenCompare;
+(void)setGreenCompare:(NSUInteger)compare;

+(NSUInteger)blueCompare;
+(void)setBlueCompare:(NSUInteger)compare;

@end
