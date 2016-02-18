//
//  SecondViewController.swift
//  TipCalculator
//
//  Created by Kristin Ho on 2/17/16.
//  Copyright (c) 2016 Kristin Ho. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var tenPercentTipLabel: UILabel!
    @IBOutlet weak var fifteenPercentTipLabel: UILabel!
    @IBOutlet weak var twentyPercentTipLabel: UILabel!
    @IBOutlet weak var tenTotal: UILabel!
    @IBOutlet weak var fifteenTotal: UILabel!
    @IBOutlet weak var twentyTotal: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calculateTip(sender: AnyObject) {
        let amount:Double = Double(amountTextField.text!)!
        let tenPercAmt:Double = amount * 0.1
        let fifteenPercAmt:Double = amount * 0.15
        let twentyPercAmt:Double = amount * 0.2
        tenPercentTipLabel.text = String(format: "%.2f", tenPercAmt)
        fifteenPercentTipLabel.text = String(format: "%.2f", fifteenPercAmt)
        twentyPercentTipLabel.text = String(format: "%.2f", twentyPercAmt)
        
        tenTotal.text = String(format: "%.2f", amount + tenPercAmt)
        fifteenTotal.text = String(format: "%.2f", amount + fifteenPercAmt)
        twentyTotal.text = String(format: "%.2f", amount + twentyPercAmt)
            
    }
    
    /**
     * Called when 'return' key pressed. return NO to ignore.
     */
    func textFieldShouldReturn(amountTextField: UITextField) -> Bool {
        amountTextField.resignFirstResponder()
        return true
    }
    
    /**
     * Called when the user click on the view (outside the UITextField).
     */
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
