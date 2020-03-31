//
//  NetworkingClient.swift
//  AlamofirePost
//
//  Created by iHub on 31/03/20.
//  Copyright © 2020 iHubTechnologiesPvtLtd. All rights reserved.
//

import Foundation
import Alamofire

class NetworkingClient: NSObject {
        
    static let networkingClient = NetworkingClient()
    
    func excutePostServiceCall(url:String, controller:UIViewController, parameters:Parameters, completion: @escaping (_ result: DataResponse<Any>) -> Void) {
        
        print("URL:\(url)")
        print("Parameters:\(parameters)")
        
        Alamofire.request(url, method: HTTPMethod(rawValue: "POST")!, parameters: parameters, encoding: JSONEncoding.default
            ).responseJSON{
                response in
                    completion(response)
            }
    }
}
