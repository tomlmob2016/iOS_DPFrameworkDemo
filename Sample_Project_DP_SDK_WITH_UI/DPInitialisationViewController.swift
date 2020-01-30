//
//  DPInitialisationViewController.swift
//  Sample_Project_DP_SDK_WITH_UI
//
//  Created by Lucky Lakhwani on 24/01/20.
//  Copyright © 2020 Lucky Lakhwani. All rights reserved.
//

import UIKit
import FrameworkDP

class DPInitialisationViewController: UIViewController, DPCallBackDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func agregatorClicked(_ sender: Any) {
        self.generateAggregatorBitMap()
    }
    
    @IBAction func merchantClicked(_ sender: Any) {
        self.generateMerchantHostedBitMap()
    }
    
    
    func generateMerchantHostedBitMap() {
        
        //Stagging Values
        let bitMapGenerator = BitMapGenerator()
        
        bitMapGenerator.bitMapInformation = BitMapInformation()
        bitMapGenerator.bitMapInformation?.strMerchantId = "202001071000001"
        bitMapGenerator.bitMapInformation?.strCryptoKey = "xwuIYt0MqKkRylO0FN7SBSNqQBkQftMZH4WZvX8OTEg="
        bitMapGenerator.bitMapInformation?.platFormType = .JAVA
        bitMapGenerator.bitMapInformation?.integrationModel = .MERCHANT_HOSTED
        bitMapGenerator.bitMapInformation?.strTransactionURL = "https://staging.bayanpay.sa/direcpay/secure/PaymentTxnServlet"
        bitMapGenerator.bitMapInformation?.strCollaboratorID = "BAYANPAY"
        bitMapGenerator.bitMapInformation?.isShippingEnabled = true
        bitMapGenerator.bitMapInformation?.isBillingEnabled = true
        bitMapGenerator.bitMapInformation?.isDCCEnabled = true
        bitMapGenerator.bitMapInformation?.isFRMEnabled = false
        
        // This paramter and paramter in the billingInfo.strEmailID is used to display the saved cards and
        //save the card of the customer for faster checkouts
        bitMapGenerator.otherDetailInfo.strCustomerID = "direcpay555"
        
        //Pass if you want else they will be empty string
        //        bitMapGenerator.otherDetailInfo.strTransactionSource = "";
        //        bitMapGenerator.otherDetailInfo.strProductInfo = "";
        //        bitMapGenerator.otherDetailInfo.strIsUserLoggedIn = "";
        //        bitMapGenerator.otherDetailInfo.strItemTotal = "";
        //        bitMapGenerator.otherDetailInfo.strItemCategory = "";
        //        bitMapGenerator.otherDetailInfo.strIgnoreValidationResult = "";
        
        bitMapGenerator.transactionInfo.strOrderNo = "1232345"
        bitMapGenerator.transactionInfo.strAmount = "10"
        bitMapGenerator.transactionInfo.strSuccessURL = "https://test.direcpay.com/direcpay/secure/BayanPaybitMapEncDecRevTxnResponse.jsp"
        bitMapGenerator.transactionInfo.strFailureURL = "https://test.direcpay.com/direcpay/secure/BayanPaybitMapEncDecRevTxnFailResponse.jsp"
        bitMapGenerator.transactionInfo.strChannelMode = "INTERNET" // "MOTO" OR "RECURRING"
        bitMapGenerator.transactionInfo.strTxnType = "01" //IF transaction type is SALE then set it to "01" else set it to "02"
        bitMapGenerator.transactionInfo.strCurrencyCode = "SAR"
        
        bitMapGenerator.billingInfo.strFirstName = "TestFirst"
        bitMapGenerator.billingInfo.strLastName = "TestLast"
        bitMapGenerator.billingInfo.strStreet1 = "Mumbai"
        bitMapGenerator.billingInfo.strStreet2 = "Mumbai"
        bitMapGenerator.billingInfo.strCity = "Mumbai"
        bitMapGenerator.billingInfo.strState = "Maharashtra"
        bitMapGenerator.billingInfo.strPincode = "123456"
        bitMapGenerator.billingInfo.strCountry = "IN"
        bitMapGenerator.billingInfo.strEmailID = "ap030719@gmail.com"
        bitMapGenerator.billingInfo.strMobileNo = "1234567890"
        bitMapGenerator.billingInfo.strLandlineNo = "34|34|34355344"  //  Format for Landline is fixed, must be passed in this format only.
        
        
        bitMapGenerator.shippinginfo.strFirstName = "ShipFirst"
        bitMapGenerator.shippinginfo.strLastName = "ShipSecond"
        bitMapGenerator.shippinginfo.strStreet1 = "ShipStreet1"
        bitMapGenerator.shippinginfo.strStreet2 = "ShipStreet2"
        bitMapGenerator.shippinginfo.strCity = "ShipCity"
        bitMapGenerator.shippinginfo.strState = "ShipState"
        bitMapGenerator.shippinginfo.strPincode = "123456"
        bitMapGenerator.shippinginfo.strCountry = "IN"
        bitMapGenerator.shippinginfo.strMobileNo = "987654321"
        bitMapGenerator.shippinginfo.strLandlineNo = "34|34|34355344"  //  Format for Landline is fixed, must be passed in this format only.
        
        
        //        bitMapGenerator.merchantFieldInfo.strUDF1 = "Test"
        //        bitMapGenerator.merchantFieldInfo.strUDF2 = "Test"
        //        bitMapGenerator.merchantFieldInfo.strUDF3 = "Test"
        //        bitMapGenerator.merchantFieldInfo.strUDF4 = "Test"
        //        bitMapGenerator.merchantFieldInfo.strUDF5 = "Test"
        //        bitMapGenerator.merchantFieldInfo.strUDF6 = "Test"
        //        bitMapGenerator.merchantFieldInfo.strUDF7 = "Test"
        //        bitMapGenerator.merchantFieldInfo.strUDF8 = "Test"
        //        bitMapGenerator.merchantFieldInfo.strUDF9 = "Test"
        //        bitMapGenerator.merchantFieldInfo.strUDF10 = "Test"
        
        
        //TO CUSTOMIZE SDK UI
        let font = UIFont.init(name: "Avenir Next Condensed", size: 16)
        let customStyle = DPCustomStyles.init(merchantLogo: #imageLiteral(resourceName: "dp"), fontFamily: font, titleBgColor: UIColor.black, titleTextColor: UIColor.white, buttonTextColor: UIColor.white, buttonBgColor: UIColor.black)
        
        let initSDK = InitialiseDPSDK.init()
        initSDK.callBackDelegate = self
        initSDK.setData(bitMapGenerator: bitMapGenerator, customStyle: customStyle, language: .ENGLISH)
        
    }
    
    
    func generateAggregatorBitMap() {
        
        //Stagging Values
        let bitMapGenerator = BitMapGenerator()
        bitMapGenerator.bitMapInformation = BitMapInformation()
        bitMapGenerator.bitMapInformation?.strMerchantId = "201810031000002"
        bitMapGenerator.bitMapInformation?.strCryptoKey = "9wOysSHmjOzn2B3dnsDcietAQurH7eRusY3wdbe6YWY="
        bitMapGenerator.bitMapInformation?.platFormType = .JAVA
        bitMapGenerator.bitMapInformation?.integrationModel = .AGGREGATOR_HOSTED
        bitMapGenerator.bitMapInformation?.strTransactionURL = "https://staging.bayanpay.sa/direcpay/secure/PaymentTxnServlet"
        bitMapGenerator.bitMapInformation?.strCollaboratorID = "BAYANPAY"
        
         bitMapGenerator.transactionInfo.strOrderNo = "1232345"
        bitMapGenerator.transactionInfo.strAmount = "10"
        bitMapGenerator.transactionInfo.strSuccessURL = "https://test.direcpay.com/direcpay/secure/BayanPaybitMapEncDecRevTxnResponse.jsp"
        bitMapGenerator.transactionInfo.strFailureURL = "https://test.direcpay.com/direcpay/secure/BayanPaybitMapEncDecRevTxnFailResponse.jsp"
        bitMapGenerator.transactionInfo.strChannelMode = "INTERNET" // "MOTO" OR "RECURRING"
        bitMapGenerator.transactionInfo.strTxnType = "01" //IF transaction type is SALE then set it to "01" else set it to "02"
        bitMapGenerator.transactionInfo.strCurrencyCode = "SAR"

        
//        bitMapGenerator.bitMapInformation?.isShippingEnabled = false
//        bitMapGenerator.bitMapInformation?.isBillingEnabled = false
//        bitMapGenerator.bitMapInformation?.isDCCEnabled = false
//        bitMapGenerator.bitMapInformation?.isFRMEnabled = false
        
        
        //Pass if you want else they will be empty string
        //        bitMapGenerator.otherDetailInfo.strTransactionSource = "";
        //        bitMapGenerator.otherDetailInfo.strProductInfo = "";
        //        bitMapGenerator.otherDetailInfo.strIsUserLoggedIn = "";
        //        bitMapGenerator.otherDetailInfo.strItemTotal = "";
        //        bitMapGenerator.otherDetailInfo.strItemCategory = "";
        //        bitMapGenerator.otherDetailInfo.strIgnoreValidationResult = "";
        
        
//        bitMapGenerator.billingInfo.strFirstName = "TestFirst"
//        bitMapGenerator.billingInfo.strLastName = "TestLast"
//        bitMapGenerator.billingInfo.strStreet1 = "Mumbai"
//        bitMapGenerator.billingInfo.strStreet2 = "Mumbai"
//        bitMapGenerator.billingInfo.strCity = "Mumbai"
//        bitMapGenerator.billingInfo.strState = "Maharashtra"
//        bitMapGenerator.billingInfo.strPincode = "123456"
//        bitMapGenerator.billingInfo.strCountry = "IN"
//        bitMapGenerator.billingInfo.strEmailID = "ap030719@gmail.com"
//        bitMapGenerator.billingInfo.strMobileNo = "1234567890"
//        bitMapGenerator.billingInfo.strLandlineNo = "34|34|34355344"  //  Format for Landline is fixed, must be passed in this format only.
//
//
//        bitMapGenerator.shippinginfo.strFirstName = "ShipFirst"
//        bitMapGenerator.shippinginfo.strLastName = "ShipSecond"
//        bitMapGenerator.shippinginfo.strStreet1 = "ShipStreet1"
//        bitMapGenerator.shippinginfo.strStreet2 = "ShipStreet2"
//        bitMapGenerator.shippinginfo.strCity = "ShipCity"
//        bitMapGenerator.shippinginfo.strState = "ShipState"
//        bitMapGenerator.shippinginfo.strPincode = "123456"
//        bitMapGenerator.shippinginfo.strCountry = "IN"
//        bitMapGenerator.shippinginfo.strMobileNo = "987654321"
//        bitMapGenerator.shippinginfo.strLandlineNo = "34|34|34355344"  //  Format for Landline is fixed, must be passed in this format only.
        
        
        //        bitMapGenerator.merchantFieldInfo.strUDF1 = "Test"
        //        bitMapGenerator.merchantFieldInfo.strUDF2 = "Test"
        //        bitMapGenerator.merchantFieldInfo.strUDF3 = "Test"
        //        bitMapGenerator.merchantFieldInfo.strUDF4 = "Test"
        //        bitMapGenerator.merchantFieldInfo.strUDF5 = "Test"
        //        bitMapGenerator.merchantFieldInfo.strUDF6 = "Test"
        //        bitMapGenerator.merchantFieldInfo.strUDF7 = "Test"
        //        bitMapGenerator.merchantFieldInfo.strUDF8 = "Test"
        //        bitMapGenerator.merchantFieldInfo.strUDF9 = "Test"
        //        bitMapGenerator.merchantFieldInfo.strUDF10 = "Test"
        
        
        let initSDK = InitialiseDPSDK.init()
        initSDK.callBackDelegate = self
        initSDK.setData(bitMapGenerator: bitMapGenerator)
        
    }
    
    
    //MARK: - DPCallBack Delegate
    
    func dpCallbackResponse(transactionResponse: TransactionResponse) {
        let msg = "\(transactionResponse.strStatusFlag ?? "") \n\n \(transactionResponse.strErrorMessage ?? "")"
        showAlert(WithTitle: "Status", message: msg)
        print("Transaction Finished :- \(String(describing: transactionResponse.strStatusFlag))")
    }
    
    func showAlert(WithTitle title: String, message: String?){
        
        
        //        DispatchQueue.main.async {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
        //        }
    }

    
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
