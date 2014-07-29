//
//  CEViewController.h
//  CellFromXibExample
//
//  Created by Kemal Kocabiyik on 7/29/14.
//  Copyright (c) 2014 Ovidos Creative. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CEViewController : UIViewController <UITableViewDataSource , UITableViewDelegate>

@property (strong, nonatomic) NSArray *itemsArray;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
