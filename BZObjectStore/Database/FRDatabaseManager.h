//
//  FRDataBaseManager.h
//  Aidian
//
//  Created by Aidian on 15/8/30.
//  Copyright (c) 2015年 Aidian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FRDatabaseManager : NSObject

+ (void)initDatabaseWithName:(NSString *)name error:(NSError**)error;

@end
