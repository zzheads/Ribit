//
//  EditFriendsViewController.m
//  Ribbit
//
//  Copyright (c) 2013 Treehouse. All rights reserved.
//

#import "EditFriendsViewController.h"
#import "User.h"
#import "App.h"

@interface EditFriendsViewController ()

@end

@implementation EditFriendsViewController

- (NSArray *)allUsers {
    return [App allUsers];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.currentUser = [User currentUser];
    [self.tableView reloadData];
    for (int row=0;row<[self.allUsers count];row++) {
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:row inSection:0];
        User *user = self.allUsers[row];
        if ([self.currentUser isFriend:user]) {
            [self.tableView selectRowAtIndexPath:indexPath animated:true scrollPosition:UITableViewScrollPositionNone];
            [self tableView:self.tableView didSelectRowAtIndexPath:indexPath];
        }
    }    
}

- (void)viewWillDisappear:(BOOL)animated {
    for (int i=0;i<[self.allUsers count];i++) {
        User *user = self.allUsers[i];
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:i inSection:0];
        if ([self.tableView cellForRowAtIndexPath:indexPath].isSelected) {
            if (![self.currentUser isFriend:user]) {
                [self.currentUser addFriend:user];
            }
        } else {
            if ([self.currentUser isFriend:user]) {
                [self.currentUser removeFriend:user];
            }
        }
    }
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.allUsers count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    User *user = [self userForRowAtIndexPath:indexPath];
    cell.textLabel.text = user.username;
    return cell;
}

-(User *)userForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [self.allUsers objectAtIndex:indexPath.row];
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    [cell setAccessoryType:UITableViewCellAccessoryCheckmark];
}

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    [cell setAccessoryType:UITableViewCellAccessoryNone];
}

@end
