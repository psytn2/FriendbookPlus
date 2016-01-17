//
//  FriendDetailsViewController.swift
//  FriendbookPlus
//
//  Created by Tai Nguyen Bui on 17/01/16.
//  Copyright © 2016 Tai Nguyen Bui. All rights reserved.
//

import UIKit

class FriendDetailsViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var friendImageView: UIImageView!
    
    var friend = Friend()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.nameLabel.text = self.friend.name
        self.birthdayLabel.text = self.friend.birthday
        self.phoneLabel.text = self.friend.phone
        self.friendImageView.image = self.friend.picture
        self.friendImageView.contentMode = UIViewContentMode.ScaleAspectFit
    }


}
