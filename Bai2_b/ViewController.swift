//
//  ViewController.swift
//  Bai2_b
//
//  Created by Cntt06 on 7/5/17.
//  Copyright © 2017 Cntt06. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var txtInput1: UITextField!
    @IBOutlet weak var txtInput2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnTai1(_ sender: Any) {
        let imageURL: URL = URL(string: self.txtInput1.text!)!
        
        (URLSession(configuration: URLSessionConfiguration.default)).dataTask(with: imageURL, completionHandler: { (imageData, response, error) in
            
            if let data = imageData {
                DispatchQueue.main.async {
                    self.img1.image = UIImage(data: data)
                }
            }
        }).resume()
    }

    @IBAction func btnTai2(_ sender: Any) {
        let imageURL: URL = URL(string: self.txtInput2.text!)!
        
        (URLSession(configuration: URLSessionConfiguration.default)).dataTask(with: imageURL, completionHandler: { (imageData, response, error) in
            
            if let data = imageData {
                DispatchQueue.main.async {
                    self.img2.image = UIImage(data: data)
                }
            }
        }).resume()
    }
    
}

