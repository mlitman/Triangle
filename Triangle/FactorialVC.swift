//
//  FactorialVC.swift
//  Triangle
//
//  Created by Michael Litman on 10/21/15.
//  Copyright © 2015 Michael Litman. All rights reserved.
//

import UIKit

class FactorialVC: UIViewController {

    @IBOutlet weak var theValueSlider: UISlider!
    @IBOutlet weak var theValueLabel: UILabel!
    @IBOutlet weak var theAnswerLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func backButtonPressed(sender: AnyObject)
    {
        self.dismissViewControllerAnimated(true) { () -> Void in
            print("View Controller has been dismissed")
        }
    }
    
    @IBAction func sliderValueChanged(sender: UISlider)
    {
        let currVal = Int(sender.value)
        self.theValueLabel.text = "\(currVal)"
        self.theAnswerLabel.text = "\(self.factorial(currVal))"
    }

    func factorial(n: Int) -> Int
    {
        //recursion is when a function calls itself
        var answer = 1
        for(var i = n; i >= 1; i--)
        {
            answer = answer * i
        }
        return answer
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
