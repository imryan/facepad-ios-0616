//
//  FISUsersTableViewController.m
//  facepad
//
//  Created by Ryan Cohen on 6/24/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISUsersTableViewController.h"
#import "FISNewsFeedTableViewController.h"
#import "FISTextPost.h"
#import "FISImagePost.h"
#import "FISUser.h"

@interface FISUsersTableViewController ()

@property (nonatomic, strong) NSArray *users;

@end

@implementation FISUsersTableViewController

#pragma mark - Table

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 65.f;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.users.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellId = @"CellId";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    
    cell.imageView.frame = CGRectMake(cell.imageView.frame.origin.x, cell.imageView.frame.origin.y, 40, 40);
    
    FISUser *user = (FISUser *)self.users[indexPath.row];
    cell.textLabel.text = user.username;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%lu post%@", user.posts.count, (user.posts.count > 1) ? @"s" : @""];
    cell.imageView.image = user.profilePic;
    
    return cell;
}

#pragma mark - View

- (void)viewDidLoad {
    [super viewDidLoad];
    
    FISUser *testUser = [[FISUser alloc] init];
    
    testUser.username = @"Joe Burgess";
    testUser.profilePic = [UIImage imageNamed:@"joe-burgess"];
    testUser.cover = [UIImage imageNamed:@"coverimage"];
    
    FISTextPost *textPost1 = [[FISTextPost alloc] init];
    textPost1.textContent = @"Excited for the first day of school!";
    textPost1.user = testUser;
    
    FISImagePost *imagePost1 = [[FISImagePost alloc] init];
    imagePost1.imageContent = [UIImage imageNamed:@"flying"];
    imagePost1.user = testUser;
    
    testUser.posts = [@[textPost1, imagePost1] mutableCopy];
    
    self.users = @[testUser];
    
//    FISTextPost *textPost = [FISTextPost new];
//    textPost.textContent = @"Hello, world!";
//    
//    FISImagePost *imagePost = [FISImagePost new];
//    imagePost.imageContent = [UIImage imageNamed:@"flying"];
//    
//    FISUser *joe = [[FISUser alloc] initWithUsername:@"joe"
//                                       profilePic:[UIImage imageNamed:@"joe-burgess"]
//                                         coverPicture:[UIImage imageNamed:@"coverimage"]
//                                                posts:@[textPost, imagePost]];
//    
//    FISUser *joel = [[FISUser alloc] initWithUsername:@"joel"
//                                      profilePic:[UIImage imageNamed:@"joe-burgess"]
//                                        coverPicture:[UIImage imageNamed:@"coverimage"]
//                                               posts:@[textPost]];
//    
//    FISUser *haaris = [[FISUser alloc] initWithUsername:@"haaris"
//                                      profilePic:[UIImage imageNamed:@"haaris"]
//                                        coverPicture:[UIImage imageNamed:@"coverimage"]
//                                               posts:@[textPost, imagePost]];
//    
//    FISUser *susan = [[FISUser alloc] initWithUsername:@"susan"
//                                         profilePic:[UIImage imageNamed:@"joe-burgess"]
//                                           coverPicture:[UIImage imageNamed:@"coverimage"]
//                                                  posts:@[textPost]];
//    self.users = @[joe, joel, haaris, susan];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    FISNewsFeedTableViewController *feed = (FISNewsFeedTableViewController *)[segue destinationViewController];
    NSInteger index = [self.tableView indexPathForSelectedRow].row;
    FISUser *user = self.users[index];
    
    feed.user = user;
}

@end
