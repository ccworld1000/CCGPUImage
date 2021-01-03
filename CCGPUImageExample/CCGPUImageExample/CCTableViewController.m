//
//  CCTableViewController.m
//  CCGPUImageExample
//
//  Created by CC on 2021/1/3.
//  Copyright © 2021 - now youhua deng (deng you hua | CC) <ccworld1000@gmail.com>. All rights reserved.
//

#import "CCTableViewController.h"

@interface CCTableViewController ()

@property (nonatomic, copy, readonly) NSArray *exampleList;

@end

@implementation CCTableViewController

- (NSArray *)exampleList {
    return @[
        @"SimpleImageFilter",
    ];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"CCGPUImageExample";
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"CCReuseIdentifierID"];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.exampleList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CCReuseIdentifierID" forIndexPath:indexPath];
    
    NSInteger row = indexPath.row;
    if (row < self.exampleList.count) {
        cell.textLabel.text = self.exampleList[row];
    }
    
    return cell;
}



@end
