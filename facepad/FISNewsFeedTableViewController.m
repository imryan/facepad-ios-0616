//
//  FISNewsFeedTableViewController.m
//  facepad
//
//  Created by Ryan Cohen on 6/24/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISNewsFeedTableViewController.h"
#import "FISImageTableViewCell.h"
#import "FISTextTableViewCell.h"

#import "FISFeedPost.h"
#import "FISTextPost.h"
#import "FISImagePost.h"

@interface FISNewsFeedTableViewController ()

@property (nonatomic, strong) IBOutlet UIImageView *coverImageView;

@end

@implementation FISNewsFeedTableViewController

#pragma mark - Table

//- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
//    return self.user.cover.size.height / 3;
//}
//
//- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
//    return [[UIImageView alloc] initWithImage:self.user.cover];
//}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.user.posts.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *imageCellId = @"PostImageCell";
    static NSString *textCellId = @"PostTextCell";
    
    if ([self.user.posts[indexPath.row] isKindOfClass:[FISImagePost class]]) {
        FISImageTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:imageCellId forIndexPath:indexPath];
        FISImagePost *post = (FISImagePost *)self.user.posts[indexPath.row];
        
        cell.usernameLabel.text = self.user.username;
        cell.userProfileImageView.image = self.user.profilePic;
        cell.postImageView.image = post.imageContent;
        
        tableView.rowHeight = 219.f;
        
        return cell;
    }
    
    FISTextTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:textCellId forIndexPath:indexPath];
    FISTextPost *post = (FISTextPost *)self.user.posts[indexPath.row];
    
    cell.usernameLabel.text = self.user.username;
    cell.userProfileImageView.image = self.user.profilePic;
    cell.postTextView.text = post.textContent;
    
    tableView.rowHeight = 135.f;
    
    return cell;
}

#pragma mark - View

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = self.user.username;
    self.coverImageView.image = self.user.cover;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
