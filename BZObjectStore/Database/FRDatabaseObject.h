//
//  FRDatabaseObject.h
//  Aidian
//
//  Created by Aidian.Tang on 14-11-28.
//  Copyright (c) 2014年 Aidian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FRDatabaseQueryCondition.h"

@interface FRDatabaseObject : NSObject

@property (nonatomic, assign, readonly) long long identity;

+ (NSArray*)fetchAllWithError:(NSError**)error;

+ (NSArray *)fetchWithCondition:(FRDatabaseQueryCondition *)condition error:(NSError**)error;

+ (void)fetchWithCondition:(FRDatabaseQueryCondition *)condition completion:(void(^)(NSArray *objects,NSError *error))completion;

- (NSArray*)fetchAllWithError:(NSError**)error;

- (NSArray *)fetchWithCondition:(FRDatabaseQueryCondition *)condition error:(NSError**)error;

- (void)fetchWithCondition:(FRDatabaseQueryCondition *)condition completion:(void(^)(NSArray *objects,NSError *error))completion;

- (void)saveWithError:(NSError**)error;

- (void)saveWithCompletion:(void(^)(NSError *error))completion;

- (void)deleteWithError:(NSError**)error;

- (void)deleteWithCompletion:(void(^)(NSError *error))completion;

@end
