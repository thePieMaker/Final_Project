//
//  AddAnItemViewController.m
//  Final_Project
//
//  Created by iOS Xcode User on 2016-04-15.
//  Copyright © 2016 Industry of Marie. All rights reserved.
//

#import "AddAnItemViewController.h"

@interface AddAnItemViewController ()
@property (weak, nonatomic) IBOutlet UITextField *txtType;
@property (weak, nonatomic) IBOutlet UITextField *txtCategory;
@property (weak, nonatomic) IBOutlet UITextField *txtDescription;
@property (weak, nonatomic) IBOutlet UITextField *txtAmount;
@property (weak, nonatomic) IBOutlet UIDatePicker *itemDate;

@end

@implementation AddAnItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Add A New Transaction";
}

-(void) passBackData{
    OutgoingHolder *holder = [[OutgoingHolder alloc] init];
    
    holder.category = self.txtCategory.text;
    holder.transactionDesc = self.txtDescription.text;
    holder.transactionType = self.txtType.text;
    holder.date = self.itemDate.date;
    holder.amount = [self.txtAmount.text floatValue];
    
    [self.delegate passDataBack: holder];  //important
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) viewWillDisappear:(BOOL)animated{
    [self passBackData];
}
/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end

