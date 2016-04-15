//
//  OutgoingHolder.h
//  Final_Project
//
//  Created by iOS Xcode User on 2016-04-15.
//  Copyright © 2016 Industry of Marie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OutgoingHolder : NSObject
@property (nonatomic) float amount;
@property (nonatomic, strong) NSString *category;
@property (nonatomic, strong) NSString *transactionDesc;
@property (nonatomic, strong) NSDate *date;
@property (nonatomic, strong) NSString *transactionType;

@end
