//
//  FRQueryCondition.h
//  Aidian
//
//  Created by Aidian on 15/8/29.
//  Copyright (c) 2015年 Aidian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FRDatabaseQueryCondition : NSObject

@property (nonatomic,strong) NSString *where;
@property (nonatomic,strong) NSArray *parameters;
@property (nonatomic,strong) NSString *orderBy;
@property (nonatomic,strong) NSNumber *limit;

+ (instancetype)conditionWithWhere:(NSString *)where parameters:(NSArray *)parameters;

@end
