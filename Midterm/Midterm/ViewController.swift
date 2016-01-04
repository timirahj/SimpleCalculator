//
//  ViewController.swift
//  Midterm
//
//  Created by Timirah James on 1/2/16.
//  Copyright © 2016 Timirah James. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var isTypingNumber = false
    var firstNumber = Float()
    var nextNumber = Float()
    var operation = ""
    var result = Float()
    

    @IBOutlet weak var totalLabel: UILabel!

    @IBOutlet weak var clearBttn: UIButton!
    @IBOutlet weak var allClearBttn: UIButton!
    
    //Number buttons . . .
    @IBOutlet weak var oneBttn: UIButton!
    @IBOutlet weak var twoBttn: UIButton!
    @IBOutlet weak var threeBttn: UIButton!
    @IBOutlet weak var fourBttn: UIButton!
    @IBOutlet weak var fiveBttn: UIButton!
    @IBOutlet weak var sixBttn: UIButton!
    @IBOutlet weak var sevenBttn: UIButton!
    @IBOutlet weak var eightBttn: UIButton!
    @IBOutlet weak var nineBttn: UIButton!
    @IBOutlet weak var zeroBttn: UIButton!
    
    //Operation buttons . . .
    @IBOutlet weak var pmBttn: UIButton!
    @IBOutlet weak var percentBttn: UIButton!
    @IBOutlet weak var decimalBttn: UIButton!
    @IBOutlet weak var multiplyBttn: UIButton!
    @IBOutlet weak var divBttn: UIButton!
    @IBOutlet weak var plusBttn: UIButton!
    @IBOutlet weak var minusBttn: UIButton!
    @IBOutlet weak var equalBttn: UIButton!
    @IBOutlet weak var sqBttn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //White borders for all buttons . . .
        
        totalLabel.layer.cornerRadius = 3
        clearBttn.layer.borderColor = UIColor.whiteColor().CGColor
        clearBttn.layer.borderWidth = 2
        
        allClearBttn.layer.borderWidth = 2
        allClearBttn.layer.borderColor = UIColor.whiteColor().CGColor
        
        oneBttn.layer.borderWidth = 2
        oneBttn.layer.borderColor = UIColor.whiteColor().CGColor
        
        twoBttn.layer.borderColor = UIColor.whiteColor().CGColor
        twoBttn.layer.borderWidth = 2
        
        threeBttn.layer.borderWidth = 2
        threeBttn.layer.borderColor = UIColor.whiteColor().CGColor
        
        fourBttn.layer.borderWidth = 2
        fourBttn.layer.borderColor = UIColor.whiteColor().CGColor
        
        fiveBttn.layer.borderWidth = 2
        fiveBttn.layer.borderColor = UIColor.whiteColor().CGColor
        
        sixBttn.layer.borderWidth = 2
        sixBttn.layer.borderColor = UIColor.whiteColor().CGColor
        
        sevenBttn.layer.borderWidth = 2
        sevenBttn.layer.borderColor = UIColor.whiteColor().CGColor
        
        eightBttn.layer.borderWidth = 2
        eightBttn.layer.borderColor = UIColor.whiteColor().CGColor
        
        nineBttn.layer.borderWidth = 2
        nineBttn.layer.borderColor = UIColor.whiteColor().CGColor
        
        zeroBttn.layer.borderWidth = 2
        zeroBttn.layer.borderColor = UIColor.whiteColor().CGColor
        
        
        pmBttn.layer.borderWidth = 2
        pmBttn.layer.borderColor = UIColor.whiteColor().CGColor

        plusBttn.layer.borderWidth = 2
        plusBttn.layer.borderColor = UIColor.whiteColor().CGColor

        decimalBttn.layer.borderWidth = 2
        decimalBttn.layer.borderColor = UIColor.whiteColor().CGColor

        divBttn.layer.borderWidth = 2
        divBttn.layer.borderColor = UIColor.whiteColor().CGColor
        
        percentBttn.layer.borderWidth = 2
        percentBttn.layer.borderColor = UIColor.whiteColor().CGColor

        minusBttn.layer.borderWidth = 2
        minusBttn.layer.borderColor = UIColor.whiteColor().CGColor

        equalBttn.layer.borderWidth = 2
        equalBttn.layer.borderColor = UIColor.whiteColor().CGColor

        multiplyBttn.layer.borderWidth = 2
        multiplyBttn.layer.borderColor = UIColor.whiteColor().CGColor

        sqBttn.layer.borderWidth = 2
        sqBttn.layer.borderColor = UIColor.whiteColor().CGColor
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    
    //Entering Numbers . . .
    @IBAction func numberPressed(sender: AnyObject) {
        
        let number: String! = sender.currentTitle
        
        if isTypingNumber {
            
            totalLabel.text = "\(totalLabel.text!)\(number)"
            
        }
         else {
            
            totalLabel.text = number
            isTypingNumber = true
        }
        
    }
    
    //Reset current number . . .
    @IBAction func clear(sender: AnyObject) {
        
        isTypingNumber = false
        totalLabel.text = "0"
        
    }
    
    //Reset the total to zero . . .
    @IBAction func clearAll(sender: AnyObject) {

        isTypingNumber = false
        
        var resetNum:Int? = Int(result)
        
        resetNum = 0
        
        totalLabel.text = "\(resetNum!)"
        
    }
    
    
    //Handle Decimal . . .
    @IBAction func decimal(sender: AnyObject) {
        
        let decimal = sender.currentTitle!
        
        totalLabel.text = totalLabel.text! + decimal!
    
    }
    
    //Set Operation Action . . .
    @IBAction func operationPressed(sender: UIButton) {
        
       isTypingNumber = false
       firstNumber = Float(totalLabel.text!)!
        
    //assign operation according to the currentTitle ot the UIButton . . .
       operation = sender.currentTitle!
        
         if (operation == "%"){
            
            result = firstNumber / 100
            
            totalLabel.text = "\(result)"
      }
        
        if (operation == "√") {
            
            result = sqrt(firstNumber)
            
            totalLabel.text = "\(result)"
      }
        
}
    
    //Negative & Positive Integers . . .
    @IBAction func changeInt(sender: AnyObject) {
        
        isTypingNumber = false
        firstNumber = Float(totalLabel.text!)!
    
            
        let opposite: Float! = firstNumber * -1
        
        totalLabel.text = "\(opposite)"
            
            print(opposite)
        
    }

   //Assign Equations according to operation . . .
    @IBAction func getTotal(sender: AnyObject) {
        
        isTypingNumber = false
        
        nextNumber = Float(totalLabel.text!)!
        
        if (operation == "+") {
            
            result = firstNumber + nextNumber
            
        }
          else if (operation == "-") {
            
            result = firstNumber - nextNumber
            
        }
          else if (operation == "X"){
            
            result = firstNumber * nextNumber
            
        }
          else if (operation == "÷"){
            
            result = firstNumber / nextNumber
        }
          else if (operation == "%") {
            
            result = (firstNumber * nextNumber) / 100
            
        }
        
                 
        totalLabel.text = "\(result)"
    }
    
    
}













