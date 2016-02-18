//
//  ThirdViewController.swift
//  TipCalculator
//
//  Created by Kristin Ho on 2/17/16.
//  Copyright (c) 2016 Kristin Ho. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var amountTextLabel: UITextField!
   
    @IBOutlet weak var tenPercLabel: UILabel!
    
    @IBOutlet weak var fifteenPercLabel: UILabel!
    
    @IBOutlet weak var twentyPercLabel: UILabel!
    
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
    
    @IBAction func roundUp(sender: AnyObject) {
        
        let amount:Double = Double(amountTextLabel.text!)!
        var tenPercAmt:Double = amount * 0.1
        var fifteenPercAmt:Double = amount * 0.15
        var twentyPercAmt:Double = amount * 0.2
        
        // reset ten, twenty, fifteen percent to make it round up as a total
        tenPercAmt = Double(Int(tenPercAmt + amount + 1)) - amount
        fifteenPercAmt = Double(Int(fifteenPercAmt + amount + 1)) - amount
        twentyPercAmt = Double(Int(twentyPercAmt + amount + 1)) - amount

        
        tenPercLabel.text = String(tenPercAmt)
        fifteenPercLabel.text = String(fifteenPercAmt)
        twentyPercLabel.text = String(twentyPercAmt)
        
        tenTotal.text = String(tenPercAmt + amount)
        fifteenTotal.text = String(fifteenPercAmt + amount)
        twentyTotal.text = String(twentyPercAmt + amount)
        
        
    }
    
    @IBAction func roundDown(sender: AnyObject) {
        
        
        let amount:Double = Double(amountTextLabel.text!)!
        var tenPercAmt:Double = amount * 0.1
        var fifteenPercAmt:Double = amount * 0.15
        var twentyPercAmt:Double = amount * 0.2
        
        // reset tip amounts to make the total round down to nearest dollar
        tenPercAmt = Double(Int(tenPercAmt + amount)) - amount
        fifteenPercAmt = Double(Int(fifteenPercAmt + amount)) - amount
        twentyPercAmt = Double(Int(twentyPercAmt + amount)) - amount
        
        
        tenPercLabel.text = String(tenPercAmt)
        fifteenPercLabel.text = String(fifteenPercAmt)
        twentyPercLabel.text = String(twentyPercAmt)
        
        tenTotal.text = String(tenPercAmt + amount)
        fifteenTotal.text = String(fifteenPercAmt + amount)
        twentyTotal.text = String(twentyPercAmt + amount)
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
