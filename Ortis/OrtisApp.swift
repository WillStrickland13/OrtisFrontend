//
//  OrtisApp.swift
//  Ortis
//
//  Created by William Strickland on 12/26/21.
//

import SwiftUI
import Alamofire
import SwiftyJSON
import AWSS3
import AWSCore
import AWSCognitoIdentity
import AWSCognitoIdentityProvider
import AWSCognitoIdentityProviderASF
import ClientRuntime

import AWSClientRuntime


let cognitoIdentity = CognitoIdentity()

@main

struct OrtisApp: App {
    
    init(){
        
        Task{
            let identityPool = try await cognitoIdentity.createIdentityPool()
            

            
//            let s3Client = try S3Client(region: "us-east-1")
        }

    }
    
    var body: some Scene {
        
        WindowGroup {
            
            ContentView().preferredColorScheme(.dark)
            
        }
        
        
    }
    
    
}


