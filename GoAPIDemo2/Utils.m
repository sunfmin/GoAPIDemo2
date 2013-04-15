//
//  Utils.m
//  GoAPIDemo2
//
//  Created by Felix Sun on 4/15/13.
//  Copyright (c) 2013 Felix Sun. All rights reserved.
//

#import "Utils.h"

@implementation Utils
+(NSDictionary*)Though:(id)data {
    NSError *requestError;
    NSData *input = [NSJSONSerialization dataWithJSONObject:[data dictionary] options:NSJSONWritingPrettyPrinted error:&requestError];
    NSString *inputString = [[NSString alloc] initWithData:input encoding:NSUTF8StringEncoding];
    
    NSLog(@"%@", inputString);
    
    const char *utfString = [inputString UTF8String];
    NSData *myData = [NSData dataWithBytes: utfString length: strlen(utfString)];
    
    NSError *returnError;
    
    NSDictionary * dict = [NSJSONSerialization JSONObjectWithData:myData options:NSJSONReadingAllowFragments error:&returnError];
    return dict;
}

@end
