//
//  ContentViewController.swift
//  experimentPageControl
//
//  Created by entre on 1/20/16.
//  Copyright © 2016 entre. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    var pageViewController: UIPageViewController!
    var pageTitles = ""
    var pageImages = [String]()
    
    var pageIndex: Int = 0
    var titleText = [String]()
    var imageFile = ""
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.imageView.image = UIImage(named: imageFile)
        self.titleLabel.text = pageTitles
       
    }

    

}
