//
//  VSRItemDetailViewController.h
//  Visor
//
//  Created by Bradley Ringel on 7/15/14.
//  Copyright (c) 2014 Bradley Ringel. All rights reserved.
//

#import <UIKit/UIKit.h>
@class AsyncImageView;

@interface GUMMovieDetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet AsyncImageView *posterImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UITextView *synopsisTextView;

@property (strong, nonatomic) NSString *itemId;

- (IBAction)addItem:(id)sender;
@end