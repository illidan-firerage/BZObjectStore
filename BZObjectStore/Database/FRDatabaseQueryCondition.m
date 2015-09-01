//
//  FRQueryCondition.m
//  Aidian
//
//  Created by Aidian on 15/8/29.
//  Copyright (c) 2015年 Aidian. All rights reserved.
//

#import "FRDatabaseQueryCondition.h"

@implementation FRDatabaseQueryCondition

+ (instancetype)conditionWithWhere:(NSString *)where parameters:(NSArray *)parameters
{
    FRDatabaseQueryCondition *condition = [[FRDatabaseQueryCondition alloc] init];
    condition.where = where;
    condition.parameters = parameters;
    condition.orderBy = @"rowid";
    
    return condition;
}

@end
