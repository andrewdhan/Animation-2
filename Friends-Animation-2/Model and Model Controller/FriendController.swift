//
//  FriendController.swift
//  Friends-Animation-2
//
//  Created by Andrew Dhan on 8/30/18.
//  Copyright © 2018 Andrew Liao. All rights reserved.
//

import UIKit

class FriendController{
    
    init() {
        for (name, description) in friendList {
            let image = UIImage(named: name)!
            let friend = Friend(image: image, name: name, fact: description)
            friends.append(friend)
        }
    }
    
    
    //MARK: - Properties
    var friends = [Friend]()
    private let friendList = [("Rachel", "The pretty but stupid one"),
                              ("Monica", "The baker"),
                              ("Ross", "La llorona"),
                              ("Joey", "The other pretty but stupid one"),
                              ("Chandler", "Tryna be a comedian"),
                              ("Phoebe", "Best guitar player")]
}
