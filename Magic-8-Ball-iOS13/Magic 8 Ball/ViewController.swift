//
//  ViewController.swift
//  Magic 8 Ball


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func askButtonPressed(_ sender: Any) {
        imageView.image = ballArray.randomElement()
    }
    
    
    let ballArray = [#imageLiteral(resourceName: "ball1.png"), #imageLiteral(resourceName: "ball1.png"), #imageLiteral(resourceName: "ball5"), #imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball4")]



}

