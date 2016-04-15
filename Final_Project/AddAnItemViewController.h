//
//  AddAnItemViewController.h
//  Final_Project
//
//  Created by iOS Xcode User on 2016-04-15.
//  Copyright © 2016 Industry of Marie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OutgoingHolder.h"
@protocol ItemDataDelegate<NSObject>  //ItemDataDelegate = ExpenseDataDelegate

@required
-(void)passDataBack:(OutgoingHolder*)item;  //aka item = expense

@end

@interface AddAnItemViewController : UIViewController
@property (nonatomic, weak) id<ItemDataDelegate> delegate;
@end
