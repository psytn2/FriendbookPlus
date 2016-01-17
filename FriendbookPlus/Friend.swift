//
//  Friend.swift
//  FriendbookPlus
//
//  Created by Tai Nguyen Bui on 17/01/16.
//  Copyright © 2016 Tai Nguyen Bui. All rights reserved.
//

import UIKit

class Friend
{
    var name = ""
    var birthday = ""
    var phone = ""
    var picture = UIImage()
    
    init(){
        self.name = ""
        self.birthday = ""
        self.phone = ""
        self.picture = UIImage()
    }
    
    init(name : String, birthday : String, phone : String, picture : UIImage = UIImage()){
        self.name = name
        self.birthday = birthday
        self.phone = phone
        self.picture = picture
    }
}
