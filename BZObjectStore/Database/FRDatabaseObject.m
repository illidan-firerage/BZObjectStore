//
//  FRDatabaseObject.m
//  Aidian
//
//  Created by Aidian.Tang on 14-11-28.
//  Copyright (c) 2014年 Aidian. All rights reserved.
//

#import "FRDatabaseObject.h"
#import "BZObjectStoreKit.h"

@interface FRDatabaseObject ()

@end

@implementation FRDatabaseObject

+ (BZObjectStoreConditionModel *)conditionWithQueryCondition:(FRDatabaseQueryCondition *)condition
{
    BZObjectStoreConditionModel *storeCondition = [BZObjectStoreConditionModel condition];
    storeCondition.sqlite.where = condition.where;
    storeCondition.sqlite.parameters = condition.parameters;
    storeCondition.sqlite.orderBy = condition.orderBy;
    storeCondition.sqlite.limit = condition.limit;
    
    return storeCondition;
}

+ (NSArray *)fetchAllWithError:(NSError *__autoreleasing *)error
{
    BZObjectStoreConditionModel *condition = [BZObjectStoreConditionModel condition];
    condition.sqlite.orderBy = @"rowid";
    NSArray *results = [self fetch:condition error:error];
    
    return results;
}

+ (void)fetchWithCondition:(FRDatabaseQueryCondition *)condition completion:(void (^)(NSArray *, NSError *))completion
{
    [self fetchInBackground:[self conditionWithQueryCondition:condition] completionBlock:completion];
}

- (NSArray *)fetchAllWithError:(NSError *__autoreleasing *)error
{
    return [[self class] fetchAllWithError:error];
}

+ (NSArray *)fetchWithCondition:(FRDatabaseQueryCondition *)condition error:(NSError *__autoreleasing *)error
{
    return [self fetch:[self conditionWithQueryCondition:condition] error:error];
}

+ (void)deleteAllWithError:(NSError *__autoreleasing *)error
{
    [self deleteAll:nil error:error];
}

+ (void)deleteAllWithCondition:(FRDatabaseQueryCondition *)condition error:(NSError *__autoreleasing *)error
{
    [self deleteAll:[self conditionWithQueryCondition:condition] error:error];
}

+ (void)deleteAllWithCondition:(FRDatabaseQueryCondition *)condition completion:(void (^)(NSError *))completion
{
    [self deleteAllInBackground:[self conditionWithQueryCondition:condition] completionBlock:completion];
}

- (NSArray *)fetchWithCondition:(FRDatabaseQueryCondition *)condition error:(NSError *__autoreleasing *)error
{
    return [[self class] fetchWithCondition:condition error:error];
}

- (void)fetchWithCondition:(FRDatabaseQueryCondition *)condition completion:(void (^)(NSArray *, NSError *))completion
{
    [[self class] fetchWithCondition:condition completion:completion];
}

- (long long)identity
{
    return self.rowid.longLongValue;
}

- (void)saveWithError:(NSError *__autoreleasing *)error
{
    [self save:error];
}

- (void)saveWithCompletion:(void (^)(NSError *))completion
{
    [self saveInBackground:completion];
}

- (void)deleteWithError:(NSError *__autoreleasing *)error
{
    [self delete:error];
}

- (void)deleteWithCompletion:(void (^)(NSError *))completion
{
    [self deleteInBackground:completion];
}

@end
