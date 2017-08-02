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
    var profiles: [ProfileViewModel] = (UIApplication.shared.delegate as! AppDelegate).profiles

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
            if let data = response.data, let _ = String(data: data, encoding: .utf8) {
                let json = try! JSONSerialization.jsonObject(with: data, options: []) as? [[String:Any]]
                
                for user in json! {
                    let personProfile = PersonProfile(name: (user["name"] as? String)!, username: (user["username"] as? String)!, email: (user["email"] as? String)!)
                    self.profiles.append(ProfileViewModel(personProfile: personProfile))
                }
            }
        })
        print(profiles)
    }
}

