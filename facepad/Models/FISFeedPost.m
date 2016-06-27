//
//  FISFeedPost.m
//  facepad
//
//  Created by Ryan Cohen on 6/24/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISFeedPost.h"

@implementation FISFeedPost

- (instancetype)init {
    return [self initWithPoster:[FISUser new] datePosted:[NSDate date]];
}

- (instancetype)initWithPoster:(FISUser *)poster datePosted:(NSDate *)datePosted {
    self = [super init];
    
    if (self) {
        _poster = poster;
        _datePosted = datePosted;
    }
    
    return self;
}

@end
