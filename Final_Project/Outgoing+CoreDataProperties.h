//
//  Outgoing+CoreDataProperties.h
//  Final_Project
//
//  Created by iOS Xcode User on 2016-04-15.
//  Copyright © 2016 Industry of Marie. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Outgoing.h"

NS_ASSUME_NONNULL_BEGIN

@interface Outgoing (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *amount;
@property (nullable, nonatomic, retain) NSString *category;
@property (nullable, nonatomic, retain) NSDate *date;
@property (nullable, nonatomic, retain) NSString *transactionDesc;
@property (nullable, nonatomic, retain) NSString *transactionType;

@end

NS_ASSUME_NONNULL_END
