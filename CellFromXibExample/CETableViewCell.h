//
//  CETableViewCell.h
//  CellFromXibExample
//
//  Created by Kemal Kocabiyik on 7/29/14.
//  Copyright (c) 2014 Ovidos Creative. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CETableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *itemImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

-(void) initializeCellWithItem:(NSDictionary *) dict;
@end
