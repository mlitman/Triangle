//
//  ViewController.swift
//  Triangle
//
//  Created by Michael Litman on 10/21/15.
//  Copyright © 2015 Michael Litman. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var aValueLable: UILabel!
    @IBOutlet weak var bSlider: UISlider!
    @IBOutlet weak var aSlider: UISlider!
    @IBOutlet weak var cValueLabel: UILabel!
    @IBOutlet weak var bValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func calcAndSetC()
    {
        var a = aSlider.value
        var b = bSlider.value
        a = a * a
        b = b * b
        let c = sqrt(a + b)
        cValueLabel.text = "\(c)"
    }
    
    @IBAction func sliderValueChanged(sender: UISlider)
    {
        if(sender == self.aSlider)
        {
            aValueLable.text = "\(sender.value)"
        }
        else if(sender == self.bSlider)
        {
            bValueLabel.text = "\(sender.value)"
        }
        self.calcAndSetC()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

