//
//  ProfileViewModel.swift
//  Ness Coding Test
//
//  Created by Vignan on 8/2/17.
//  Copyright © 2017 Vignan. All rights reserved.
//

import Foundation
class ProfileViewModel {
    fileprivate var personProfile: PersonProfile
    
    var name:String {
        return personProfile.name
    }
    
    var username:String {
        return personProfile.username
    }
    
    var email:String {
        return personProfile.email
    }
    
    init(personProfile:PersonProfile) {
        self.personProfile = personProfile
    }
}
