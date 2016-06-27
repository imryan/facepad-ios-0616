//
//  FISFeedPost.h
//  facepad
//
//  Created by Ryan Cohen on 6/24/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISUser.h"

@interface FISFeedPost : NSObject

@property (nonatomic, strong) FISUser *poster;
@property (nonatomic, strong) NSDate *datePosted;

- (instancetype)initWithPoster:(FISUser *)poster datePosted:(NSDate *)datePosted;

@end
