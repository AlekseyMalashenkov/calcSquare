//
//  ViewController.swift
//  calcSquare
//
//  Created by Aleksei Malashenkov on 17.09.16.
//  Copyright © 2016 Aleksei Malashenkov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    
    func calcResult (num : Int) -> Int {
        var result = 0
        var iterat = num
        while (iterat != 0)  {
            result += num
            iterat -= 1
        }
        return result
    }

    @IBOutlet weak var enterNumberField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func calculate() {
        
        let tmp = Int(enterNumberField.text!)
        
        if tmp != nil {
            let value = calcResult(num: tmp!)
            resultLabel!.text = String(value)
            count = count + 1
            countLabel!.text = String(count)
        } else {
            resultLabel!.text = String("результат")
        }
    }

    @IBAction func refresh() {
        count = 0
        countLabel!.text = String("#")
        resultLabel!.text = String("результат")
    }
}

