//
//  ViewController.swift
//  chapter6-2
//
//  Created by SMB開発部 on 2014/11/18.
//  Copyright (c) 2014年 Sorimachi,corp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var myURL = NSURL(string: "http://sportiva.shueisha.co.jp/clm/baseball/entry_img/0610miura-001.jpg")
        var myData = NSData(contentsOfURL: myURL!)
        var myImage = UIImage(data: myData!)
        
        var imgPath = NSBundle.mainBundle().pathForResource("0610miura-001", ofType: "jpg")
        
        myImageView.image = myImage
//        myImageView.image = UIImage(contentsOfFile: imgPath!)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

