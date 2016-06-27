//
//  FISTextPost.h
//  facepad
//
//  Created by Ryan Cohen on 6/24/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISFeedPost.h"

@interface FISTextPost : FISFeedPost

@property (nonatomic, strong) FISUser *user;
@property (nonatomic, strong) NSString *textContent;

- (instancetype)initWithText:(NSString *)text poster:(FISUser *)poster;

@end
