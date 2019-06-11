//
//  ViewController.swift
//  datePicker
//
//  Created by mac on 11/06/19.
//  Copyright © 2019 gammastack. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePickerController: UIDatePicker!
   
    @IBOutlet weak var formatThreeLabel: UILabel!
    @IBOutlet weak var formatFourLabel: UILabel!
    @IBOutlet weak var formatOneLAbel: UILabel!
    @IBOutlet weak var formatTwoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clickHereButton(_ sender: Any) {
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = DateFormatter.Style.long
        dateFormatter.timeStyle = DateFormatter.Style.medium
        formatOneLAbel.text = dateFormatter.string(from: datePickerController.date)
        
        dateFormatter.dateFormat = "MMMM dd, YYYY"
        formatTwoLabel.text = dateFormatter.string(from: datePickerController.date)
        dateFormatter.dateFormat = "MMM dd, YYYY"
        formatThreeLabel.text = dateFormatter.string(from: datePickerController.date)
        dateFormatter.dateFormat = "EEEE, YYYY/mm/dd"
        formatFourLabel.text = dateFormatter.string(from: datePickerController.date)
    }
}
