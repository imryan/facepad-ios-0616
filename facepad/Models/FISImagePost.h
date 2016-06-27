//
//  FISImagePost.h
//  facepad
//
//  Created by Ryan Cohen on 6/24/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISFeedPost.h"

@interface FISImagePost : FISFeedPost

@property (nonatomic, strong) FISUser *user;
@property (nonatomic, strong) UIImage *imageContent;

- (instancetype)initWithImage:(UIImage *)image poster:(FISUser *)poster;

@end
