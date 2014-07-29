
//
//  CEViewController.m
//  CellFromXibExample
//
//  Created by Kemal Kocabiyik on 7/29/14.
//  Copyright (c) 2014 Ovidos Creative. All rights reserved.
//

#import "CEViewController.h"

#import "CETableViewCell.h"
@interface CEViewController ()

@end

@implementation CEViewController

- (void)viewDidLoad
{
    
    self.itemsArray = @[
                        @{ @"title" : @"BMW 1 Series" , @"image" : @"bmw-1" },
                        @{ @"title" : @"BMW 2 Series" , @"image" : @"bmw-2" },
                        @{ @"title" : @"BMW 3 Series" , @"image" : @"bmw-3" },
                        @{ @"title" : @"Mini Cooper" , @"image" : @"mini" },
                        @{ @"title" : @"Range Rover" , @"image" : @"range" },
                        @{ @"title" : @"BMW 1 Series" , @"image" : @"bmw-1" },
                        @{ @"title" : @"BMW 2 Series" , @"image" : @"bmw-2" },
                        @{ @"title" : @"BMW 3 Series" , @"image" : @"bmw-3" },
                        @{ @"title" : @"Mini Cooper" , @"image" : @"mini" },
                        @{ @"title" : @"Range Rover" , @"image" : @"range" },
                        @{ @"title" : @"BMW 1 Series" , @"image" : @"bmw-1" },
                        @{ @"title" : @"BMW 2 Series" , @"image" : @"bmw-2" },
                        @{ @"title" : @"BMW 3 Series" , @"image" : @"bmw-3" },
                        @{ @"title" : @"Mini Cooper" , @"image" : @"mini" },
                        @{ @"title" : @"Range Rover" , @"image" : @"range" },
                        @{ @"title" : @"BMW 1 Series" , @"image" : @"bmw-1" },
                        @{ @"title" : @"BMW 2 Series" , @"image" : @"bmw-2" },
                        @{ @"title" : @"BMW 3 Series" , @"image" : @"bmw-3" },
                        @{ @"title" : @"Mini Cooper" , @"image" : @"mini" },
                        @{ @"title" : @"Range Rover" , @"image" : @"range" }
                        ];
    
    
    [super viewDidLoad];
	
    [self.tableView reloadData];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.itemsArray.count;
}

#pragma mark - UITableViewDelegate


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 85;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *identifier = @"CETableViewCell";
    
    CETableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if(!cell){
        UINib *nib = [UINib nibWithNibName:identifier bundle:nil];
        
        [tableView registerNib:nib forCellReuseIdentifier:identifier];
        
        cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    }
    
    
    NSDictionary *dict = [self.itemsArray objectAtIndex:indexPath.row];
    
    [cell initializeCellWithItem:dict];
    
    return cell;
}


@end
