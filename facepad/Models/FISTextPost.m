//
//  FISTextPost.m
//  facepad
//
//  Created by Ryan Cohen on 6/24/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISTextPost.h"

@implementation FISTextPost

- (instancetype)init {
    self = [super initWithPoster:[FISUser new] datePosted:[NSDate date]];
    
    if (self) {
        _user = [FISUser new];
        _textContent = @"";
    }
    
    return self;
}

- (instancetype)initWithText:(NSString *)text poster:(FISUser *)poster {
    self = [super initWithPoster:poster datePosted:[NSDate date]];
    
    if (self) {
        _user = poster;
        _textContent = text;
    }
    
    return self;
}

@end
