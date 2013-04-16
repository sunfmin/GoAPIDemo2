//
//  main.m
//  GoAPIDemo2
//
//  Created by Felix Sun on 4/10/13.
//  Copyright (c) 2013 Felix Sun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "qortexapi.h"
#import "Utils.h"

int main(int argc, const char *argv[]) {


//        Organization * org = [Organization alloc];
//        [org setSummary:@"Really cool org"];
//        [org setQortexURL:@"theplant"];
//        
//
//        [Utils Though:[[Organization alloc] initWithDictionary:[Utils Though:org]]];
//
//        Entry * entry = [Entry alloc];
//        [entry setId:@"234234234234"];
//        EmbedUser *author = [EmbedUser alloc];
//        [author setEmail:@"felix@theplant.jp"];
//        [author setIsShare:YES];
//        [entry setAuthor:author];
//        
//        EntryVersion *v1 = [EntryVersion alloc];
//        [v1 setId:@"111111"];
//        EntryVersion *v2 = [EntryVersion alloc];
//        [v2 setId:@"222222"];
//        [entry setVersions:[NSArray arrayWithObjects:v1, v2, nil]];
//        
//        
//        [Utils Though:[[Entry alloc] initWithDictionary:[Utils Though:entry]]];

    [[Qortexapi get] setBaseURL:@"http://qortex.theplant-dev.com/api"];
    [[Qortexapi get] setVerbose:YES];
    while (true) {
        @autoreleasepool {
            Global *g = [Global alloc];
            GlobalGetSessionResults *gsr = [g GetSession:@"sunfmin@gmail.com" password:@"nopassword"];
            NSLog(@"Session is: %@", gsr.Session);
            AuthUserService *serv = [g GetAuthUserService:gsr.Session];
            //        [[Qortexapi get] setBaseURL:@"http://qortex.net.theplant-dev.com/apiv2"];
            AuthUserServiceOrganizationInfoResults *r = [serv OrganizationInfo:@"5018d345558fbe46c4000001"];
            NSLog(@"Org Info is: %@", [r.Org dictionary]);
        }

    }
    return 0;
}

