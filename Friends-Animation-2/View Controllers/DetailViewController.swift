//
//  DetailViewController.swift
//  Friends-Animation-2
//
//  Created by Andrew Dhan on 8/30/18.
//  Copyright © 2018 Andrew Liao. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup(){
        guard let friend = friend else {return}
        self.title = friend.name
        
        //Create labels
        let imageView = UIImageView(frame: CGRect(x: view.frame.midX - 200/2,
                                                  y: 120,
                                                  width: 200,
                                                  height: 200))
        imageView.image = UIImage(named: friend.name)
        imageView.clipsToBounds = true
        let nameLabel = UILabel()
        let descriptionLabel = UILabel()
        
        nameLabel.text = friend.name
        descriptionLabel.text = friend.fact
        
//        imageView.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        //Add to subview
        view.addSubview(imageView)
        view.addSubview(nameLabel)
        view.addSubview(descriptionLabel)
        
        //Image Constraints
        var constraints = [NSLayoutConstraint]()

        let imageXConstraints = NSLayoutConstraint(item: imageView,
                                                        attribute: .centerX,
                                                        relatedBy: .equal,
                                                        toItem: view,
                                                        attribute: .centerX,
                                                        multiplier: 1.0,
                                                        constant: 0)
        constraints.append(imageXConstraints)
        let imageYConstraints = NSLayoutConstraint(item: imageView,
                                                   attribute: .top,
                                                   relatedBy: .equal,
                                                   toItem: view,
                                                   attribute: .firstBaseline,
                                                   multiplier: 1.0,
                                                   constant: 40)
        constraints.append(imageYConstraints)
        //Set Name Constraints
        let nameXConstraint = NSLayoutConstraint(item: nameLabel,
                                                 attribute: .left,
                                                 relatedBy: .equal,
                                                 toItem: view,
                                                 attribute: .left,
                                                 multiplier: 1.0,
                                                 constant: 16)
        constraints.append(nameXConstraint)
        
        let nameYConstraint = NSLayoutConstraint(item: nameLabel,
                                                 attribute: .top,
                                                 relatedBy: .equal,
                                                 toItem: imageView,
                                                 attribute: .bottom,
                                                 multiplier: 1.0,
                                                 constant: 8)
        constraints.append(nameYConstraint)
        
        //Create description constraint
        let descriptionXConstraint = NSLayoutConstraint(item: descriptionLabel,
                                                       attribute: .left,
                                                       relatedBy: .equal,
                                                       toItem: nameLabel,
                                                       attribute: .left,
                                                       multiplier: 1.0,
                                                       constant: 0)
        constraints.append(descriptionXConstraint)
        
        let descriptionYConstraint = NSLayoutConstraint(item: descriptionLabel,
                                                        attribute: .top,
                                                        relatedBy: .equal,
                                                        toItem: nameLabel,
                                                        attribute: .bottom,
                                                        multiplier: 1.0,
                                                        constant: 8)
        constraints.append(descriptionYConstraint)
        NSLayoutConstraint.activate(constraints)
        
        
        
    }
    
    var friend: Friend?{
        didSet{
            setup()
        }
    }
    
}
