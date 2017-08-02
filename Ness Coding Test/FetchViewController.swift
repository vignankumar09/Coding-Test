//
//  ViewController.swift
//  Ness Coding Test
//
//  Created by Vignan Sankati on 8/2/17.
//  Copyright © 2017 Vignan. All rights reserved.
//

import UIKit
import Foundation
import Alamofire

class FetchViewController: UIViewController {
    
    let userURL = "https://jsonplaceholder.typicode.com/users"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func fetchData(_ sender: Any) {
        Alamofire.request(userURL).responseJSON(completionHandler: { response in
            if let json = response.result.value {
                print(json)
                self.jsonParsing(data: json as! Data)
            }
        })
    }
    
    func jsonParsing(data:Data) {
        
    }
}

