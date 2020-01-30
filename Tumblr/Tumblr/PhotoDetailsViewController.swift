//
//  PhotoDetailsViewController.swift
//  Tumblr
//
//  Created by Brandon Elmore on 1/29/20.
//  Copyright © 2020 codepath. All rights reserved.
//

import UIKit

class PhotoDetailsViewController: UIViewController {

    @IBOutlet weak var postImage: UIImageView!
    
    var post = [String: Any]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let photos = post["photos"] as? [[String: Any]] {
            let photo = photos[0]
            let originalSize = photo["original_size"] as! [String: Any]
                       // 3.
                       let urlString = originalSize["url"] as! String
                       // 4.
                       let url = URL(string: urlString)
                       self.postImage.af_setImage(withURL: url!)
            
        }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
