//
//  FriendsTableViewController.swift
//  Friends-Animation-2
//
//  Created by Andrew Dhan on 8/30/18.
//  Copyright © 2018 Andrew Liao. All rights reserved.
//

import UIKit

class FriendsTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendController.friends.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath)
        let friend =  friendController.friends[indexPath.row]
        cell.textLabel?.text = friend.name
        cell.imageView?.image = friend.image
        return cell
    }
    
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationVC = segue.destination as? DetailViewController ,
            let indexPath = tableView.indexPathForSelectedRow else {return}
        
        destinationVC.friend = friendController.friends[indexPath.row]
    }
    
    let friendController = FriendController()
}
