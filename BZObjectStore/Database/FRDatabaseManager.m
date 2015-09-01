//
//  FRDataBaseManager.m
//  Aidian
//
//  Created by Aidian on 15/8/30.
//  Copyright (c) 2015年 Aidian. All rights reserved.
//

#import "FRDatabaseManager.h"
#import "BZObjectStore.h"
#import "BZActiveRecord.h"

@implementation FRDatabaseManager

+ (void)initDatabaseWithName:(NSString *)name error:(NSError *__autoreleasing *)error
{
    BZObjectStore *databaseStore = [BZObjectStore openWithPath:name error:error];
    [BZActiveRecord setupWithObjectStore:databaseStore];
}

@end
