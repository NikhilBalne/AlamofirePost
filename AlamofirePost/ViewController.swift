//
//  ViewController.swift
//  AlamofirePost
//
//  Created by iHub on 31/03/20.
//  Copyright © 2020 iHubTechnologiesPvtLtd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let constants = Constants()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        callPostRequest()
    }

    func callPostRequest(){
        
        let loginUrl = "post"
        
        let params = ["category": "Movies","genre":"Action"] as [String : Any]
        
                NetworkingClient.networkingClient.excutePostServiceCall(url:constants.baseUrl+loginUrl,  controller:self, parameters:params){ response in
                    
                    if response.response?.statusCode == 200 {
                        print("StatusCode:\(response.response!.statusCode)")
                        
                        do {
                            
                            let decoder = JSONDecoder()
//                            let results = try decoder.decode(Movies.self, from: response.data!)
                            
//                            print(results)
                            
                        } catch let error {
                            print("ErrorDescription:",error.localizedDescription)
                        }
                        
                    } else {
                        print("StatusCode:\(response.response!.statusCode)")
                    }
        }
        }

}

