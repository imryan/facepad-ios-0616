//
//  FISUser.m
//  facepad
//
//  Created by Ryan Cohen on 6/24/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISUser.h"

@implementation FISUser

- (instancetype)initWithUsername:(NSString *)username
                      profilePic:(UIImage *)profilePic
                    coverPicture:(UIImage *)coverPicture
                           posts:(NSArray *)posts {
    
    self = [super init];
    
    if (self) {
        _username = username;
        _profilePic = profilePic;
        _cover = coverPicture;
        _posts = posts;
    }
    
    return self;
}

@end
