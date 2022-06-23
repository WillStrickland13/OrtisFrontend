//
//  CognitoIdentity.swift
//  Ortis
//
//  Created by William Strickland on 5/18/22.
//

import Foundation
import AWSS3
import AWSCore
import AWSCognitoIdentity
import AWSCognitoIdentityProvider
import AWSCognitoIdentityProviderASF
import ClientRuntime
import AWSClientRuntime
import UIKit
class CognitoIdentity {
    
    func createConfiguration(){
    
    }
    
    func uploadToS3Bucket(img:UIImage) async throws {
//        let s3Client = try S3Client(region: "us-east-2")
//        
//        guard let dataToUpload = img.pngData() else {
//            print( "Error")
//        }
//        let body = ByteStream.from(data: dataToUpload)
//
//        s3Client.putObject(input: PutObjectInput(body: body, bucket: "ortisbucket",
//                                    key: "test", metadata: ["test":"test"])) { result in
//            switch(result) {
//            case .success(let response):
//                if let eTag = response.eTag {
//                    print("Successfully uploaded the file with the etag: \(eTag)")
//                }
//
//            case .failure(let err):
//                print(err)
//            }
//        }
    }
    func createIdentityPool() /*async throws -> CreateIdentityPoolOutputResponse*/ {
        
//        let cognitoIdentityClient = try CognitoIdentityClient(region: "us-east-2")
//        let cognitoInputCall = CreateIdentityPoolInput(developerProviderName: "com.amazonaws.mytestapplication",
//                                                        identityPoolName: "identityPoolMadeWithSwiftSDK")
//
//        let result = try await cognitoIdentityClient.createIdentityPool(input: cognitoInputCall)
//        print("printing result")
//        print(result)
//
//        return result
                let poolId = "Administrators"
                let credentialsProvider = AWSCognitoCredentialsProvider(
                    regionType: .USEast2, //other regionType according to your location.
                    identityPoolId: poolId
                )
                let configuration = AWSServiceConfiguration(region: .USEast2, credentialsProvider: credentialsProvider)
                AWSServiceManager.default().defaultServiceConfiguration = configuration
                
    }
   
    
    
}
