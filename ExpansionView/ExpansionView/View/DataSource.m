//
//  View.m
//  ExpansionView
//
//  Created by 石場清子 on 2019/06/29.
//  Copyright © 2019 石場清子. All rights reserved.
//

#import "DataSource.h"

@implementation DataSource

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    NSArray *getModels = [Models sentModels];
    cell.textLabel.text = getModels[indexPath.row];
    
    cell.textLabel.lineBreakMode = NSLineBreakByClipping;
    cell.textLabel.numberOfLines = 0;
    [cell.textLabel sizeToFit];
    
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    NSArray *getModels = [Models sentModels];
    return getModels.count;
}

@end
