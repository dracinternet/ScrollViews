//
//  ViewController.swift
//  ScrollViews
//
//  Created by Eduardo Lozano Gálvez on 12/8/16.
//  Copyright © 2016 DracInternet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var images = [UIImageView]()
    let frameWidth: CGFloat = 150.0
    let frameHeight: CGFloat = 150.0
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        var contentWidth: CGFloat = 0.0
        let scrollWidth = scrollView.frame.size.width
        let scrollHeight = scrollView.frame.size.height
        
        for x in 0...2 {
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            newX = scrollWidth / 2 + scrollWidth * CGFloat(x)
            contentWidth += newX
            scrollView.addSubview(imageView)
            imageView.frame = CGRect(x: newX - (frameWidth / 2), y: (view.frame.size.height / 2) - (frameHeight / 2), width: 150, height: 150)
        }
        
        scrollView.clipsToBounds = false
        scrollView.contentSize = CGSize(width: contentWidth, height: scrollHeight)
    }

}

