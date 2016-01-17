//
//  ViewController.swift
//  FriendbookPlus
//
//  Created by Tai Nguyen Bui on 09/01/16.
//  Copyright © 2016 Tai Nguyen Bui. All rights reserved.
//

import UIKit

class FriendListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var tableView: UITableView!
    
    var friends = [Friend]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        createFriends()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
    }

    func createFriends(){
        self.friends.append(Friend(name: "George", birthday: "1st February", phone:  "1234567890", picture: UIImage(named: "logo-android.png")!))
        self.friends.append(Friend(name: "Jerry", birthday: "25th March", phone: "4567890123", picture: UIImage(named: "logo-android.png")!))
        self.friends.append(Friend(name: "Mike", birthday: "13th January", phone:  "7890123456", picture: UIImage(named: "logo-apple.png")!))
        self.friends.append(Friend(name: "Richard", birthday: "19th December", phone: "9012345678", picture: UIImage(named: "logo-apple.png")!))
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.friends.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let friend = self.friends[indexPath.row]
        
        cell.textLabel?.text = friend.name
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        let friend = self.friends[indexPath.row]
        performSegueWithIdentifier("detailSegue", sender: friend)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let detailsViewController = segue.destinationViewController as! FriendDetailsViewController
        
        detailsViewController.friend = sender as! Friend
    }
}

