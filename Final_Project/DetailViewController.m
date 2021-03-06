//
//  DetailViewController.m
//  Final_Project
//
//  Created by iOS Xcode User on 2016-04-15.
//  Copyright © 2016 Industry of Marie. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {  //!! here
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.detailDescriptionLabel.text = [[self.detailItem valueForKey:@"date"] description];
        self.lblTwo.text = [[self.detailItem valueForKey:@"transactionDesc"] description];
        self.lblThree.text = [[self.detailItem valueForKey:@"category"] description];
        self.lblFour.text = [[self.detailItem valueForKey:@"transactionType"] description];    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
