//
//  CalcViewController.m
//  Final_Project
//
//  Created by iOS Xcode User on 2016-04-15.
//  Copyright © 2016 Industry of Marie. All rights reserved.
//

#import "CalcViewController.h"

@interface CalcViewController ()
@property (strong, nonatomic) IBOutlet UILabel *lblResult;
@property (nonatomic) int operator;
@property (nonatomic) BOOL setZero;
@property (nonatomic) long operand;


@end

@implementation CalcViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _setZero = YES;
    _operator = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)numericPressed:(UIButton*)sender {
    if(_setZero){
        self.lblResult.text = @"0";
        _setZero = NO;
    }
    self.lblResult.text = [NSString stringWithFormat:@"%lli", [self.lblResult.text longLongValue] * 10 + (long)sender.tag];
}

- (IBAction)operate:(UIButton*)sender {
    if(_operator != 0){
        _operand = [self calculateResult:_operator];
        self.lblResult.text = [NSString stringWithFormat:@"%li",_operand];
        _setZero = YES;
        self.operator = (int)sender.tag;
    }
    else{
        _operand = [self.lblResult.text longLongValue];
        _setZero = YES;
        self.operator = (int)sender.tag;
    }
}

-(long)calculateResult:(int)operator{
    switch(_operator){
        case 1:  //multiply
            return _operand * [self.lblResult.text longLongValue];
            break;
        case 2: //divide
            return _operand / [self.lblResult.text longLongValue];

            break;
        case 3:  //addition
            return _operand + [self.lblResult.text longLongValue];

            break;
        case 4:  //subtraction
            return _operand - [self.lblResult.text longLongValue];

            break;
        default:
            return [self.lblResult.text longLongValue];
            break;
            
    }
    
}

- (IBAction)clearPressed:(id)sender {
    self.lblResult.text = @"0";
}

- (IBAction)equalPressed:(id)sender {
    _operand = [self calculateResult:_operator];
    self.lblResult.text = [NSString stringWithFormat:@"%li",_operand];
    _operator = 0;
    _setZero = YES;
}


















@end
