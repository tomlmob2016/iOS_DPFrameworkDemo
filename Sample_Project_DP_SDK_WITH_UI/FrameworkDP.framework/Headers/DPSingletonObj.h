//
//  DPSingletonObj.h
//  DPSimulatorWithoutSDK_Swift
//
//  Created by Sagar Ranshur on 11/01/2019.
//  Copyright © 2019 Sagar Ranshur. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DPSingletonObj : NSObject

@property (strong, nonatomic) NSString *strMerchantId;
@property (strong, nonatomic) NSString *strCollaboratorID;
@property (strong, nonatomic) NSString *strIntegrationModel;
@property (strong, nonatomic) NSString *strCryptKey;
@property (strong, nonatomic) NSString *strTransactionURL;
@property (strong, nonatomic) NSString *strPlatformType;   //New dev
@property (strong, nonatomic) NSString *strAPIUrl; 


//@property (strong, nonatomic) NSString *strShipping;
//@property (strong, nonatomic) NSString *strBilling;
//@property (strong, nonatomic) NSString *strDCC;
//@property (strong, nonatomic) NSString *strFRM;

+ (id)sharedDPMerchant;

@end

NS_ASSUME_NONNULL_END
