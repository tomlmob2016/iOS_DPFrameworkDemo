//
//  DPEncryptDecrypt.h
//  DPSimulatorWithoutSDK_Swift
//
//  Created by Sagar Ranshur on 11/01/2019.
//  Copyright © 2019 Sagar Ranshur. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DPEncryptDecrypt : NSObject


+ (NSData *)encryptedDataForData:(NSData *)plainData error:(NSError **)error;

+ (NSData *)decryptedDataForData:(NSData *)encryptedData error:(NSError **)error;

+ (NSString *)encryptedDataForkey:(NSString *)key Data:(NSString *)plainString;

+ (NSString *)decryptedDataForkey:(NSString *)key Data:(NSString *)encryptedString;

@end

NS_ASSUME_NONNULL_END
