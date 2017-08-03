//
//  PersonProfile.swift
//  Ness Coding Test
//
//  Created by Vignan on 8/2/17.
//  Copyright © 2017 Vignan. All rights reserved.
//

import Foundation

class PersonProfile:NSObject {
    var username:String
    var name:String
    var email:String
    
    init(name:String, username:String, email:String) {
        self.name = name
        self.username = username
        self.email = email
    }
}
