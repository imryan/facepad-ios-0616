//
//  FISImagePost.m
//  facepad
//
//  Created by Ryan Cohen on 6/24/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISImagePost.h"

@implementation FISImagePost

- (instancetype)init {
    self = [super initWithPoster:[FISUser new] datePosted:[NSDate date]];
    
    if (self) {
        _user = [FISUser new];
        _imageContent = [UIImage imageNamed:@""];
    }
    
    return self;
}

- (instancetype)initWithImage:(UIImage *)image poster:(FISUser *)poster {
    self = [super initWithPoster:poster datePosted:[NSDate date]];
    
    if (self) {
        _user = poster;
        _imageContent = image;
    }
    
    return self;
}

@end
