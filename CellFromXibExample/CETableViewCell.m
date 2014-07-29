//
//  CETableViewCell.m
//  CellFromXibExample
//
//  Created by Kemal Kocabiyik on 7/29/14.
//  Copyright (c) 2014 Ovidos Creative. All rights reserved.
//

#import "CETableViewCell.h"

@implementation CETableViewCell

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)initializeCellWithItem:(NSDictionary *)dict{
    
    self.itemImageView.image = [UIImage imageNamed:[dict valueForKey:@"image"]];
    self.titleLabel.text = [dict valueForKey:@"title"];
}

@end
