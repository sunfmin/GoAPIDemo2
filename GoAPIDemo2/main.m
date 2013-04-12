//
//  main.m
//  GoAPIDemo2
//
//  Created by Felix Sun on 4/10/13.
//  Copyright (c) 2013 Felix Sun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "qortexapi.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        AuthUserService* serv = [AuthUserService alloc];
        AuthUserServiceOrganizationInfoResults* r = [serv OrganizationInfo:@"Hello"];
        if (r == nil) {
            NSLog(@"nil");
        }
    }
    return 0;
}

