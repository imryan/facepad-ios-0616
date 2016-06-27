//
//  FISUser.h
//  facepad
//
//  Created by Ryan Cohen on 6/24/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISUser : NSObject

@property (nonatomic, strong) NSString *username;
@property (nonatomic, strong) NSArray *posts;
@property (nonatomic, strong) UIImage *profilePic;
@property (nonatomic, strong) UIImage *cover;

- (instancetype)initWithUsername:(NSString *)username
                      profilePic:(UIImage *)profilePic
                    coverPicture:(UIImage *)coverPicture
                           posts:(NSArray *)posts;

@end
