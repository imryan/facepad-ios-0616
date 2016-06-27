//
//  FISTextTableViewCell.h
//  facepad
//
//  Created by Ryan Cohen on 6/25/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FISTextTableViewCell : UITableViewCell

@property (nonatomic, strong) IBOutlet UIImageView *userProfileImageView;
@property (nonatomic, strong) IBOutlet UILabel *usernameLabel;

@property (nonatomic, strong) IBOutlet UITextView *postTextView;

@end
