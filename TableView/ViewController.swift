//
//  ViewController.swift
//  TableView
//
//  Created by Darkhan on 17.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelPrice: UILabel!
    @IBOutlet weak var labelTime: UILabel!
    @IBOutlet weak var labelDescription: UILabel!
    
    var titled = ""
    var price = ""
    var time = ""
    var desc = ""
    var image = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        labelTitle.text = titled
        labelPrice.text = price
        labelTime.text = time
        labelDescription.text = desc
        ImageView.image = UIImage(named: image)
    }


}

