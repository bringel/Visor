//
//  GUMMovieTableViewCell.h
//  Gumshoe
//
//  Created by Bradley Ringel on 7/15/14.
//  Copyright (c) 2014 Bradley Ringel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GUMMovieTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailsLabel;
@property (weak, nonatomic) IBOutlet UIImageView *posterImageView;

@end
