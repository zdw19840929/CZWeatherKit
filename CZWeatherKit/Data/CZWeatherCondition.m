//
//  CZWeatherState.m
//  Copyright (c) 2014, Comyar Zaheri, http://comyar.io
//  All rights reserved.
//
//  Redistribution and use in source and binary forms, with or without
//  modification, are permitted provided that the following conditions are met:
//
//  * Redistributions of source code must retain the above copyright notice, this
//    list of conditions and the following disclaimer.
//
//  * Redistributions in binary form must reproduce the above copyright notice,
//    this list of conditions and the following disclaimer in the documentation
//    and/or other materials provided with the distribution.
//
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
//  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
//  IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
//  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
//  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
//  DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
//  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
//  CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
//  OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


#pragma mark - Imports

#import "CZWeatherCondition.h"


#pragma mark - CZWeatherCondition Class Extension

@interface CZWeatherCondition ()

// Date of the weather conditions represented.
@property (nonatomic) NSDate            *date;

// Word or phrase describing the conditions.
@property (nonatomic) NSString          *description;

// Climacon character that matches the condition description.
@property (nonatomic) Climacon          climaconCharacter;

// Predicted low temperature.
@property (nonatomic) CZTemperature     lowTemperature;

// Predicted high temperature.
@property (nonatomic) CZTemperature     highTemperature;

// Current temperature.
@property (nonatomic) CZTemperature     temperature;

// Relative humidity.
@property (nonatomic) CGFloat           humidity;

// Wind direction in degrees.
@property (nonatomic) CGFloat           windDegrees;

// Wind speed.
@property (nonatomic) CZWindSpeed       windSpeed;

@end


#pragma mark - CZWeatherCondition Implementation

@implementation CZWeatherCondition

- (instancetype)init
{
    if (self = [super init]) {
        self.lowTemperature     = (CZTemperature){CZWeatherKitNoValue, CZWeatherKitNoValue};
        self.highTemperature    = (CZTemperature){CZWeatherKitNoValue, CZWeatherKitNoValue};
        self.temperature        = (CZTemperature){CZWeatherKitNoValue, CZWeatherKitNoValue};
    }
    return self;
}

@end
