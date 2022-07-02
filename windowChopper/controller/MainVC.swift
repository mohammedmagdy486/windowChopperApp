//
//  ViewController.swift
//  windowChopper
//
//  Created by AMN on 1/24/22.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxtField: CurrencyTxtField!
    @IBOutlet weak var itemPrice: CurrencyTxtField!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var HoursLabel: UILabel!
    @IBOutlet weak var numberOfHours: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

  func setup(){
      wageTxtField.placeholderText(placeholderText: "Enter your wage")
      itemPrice.placeholderText(placeholderText: "Enter item price")
      
      let calculateButton = UIButton(frame : CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
      calculateButton.setTitle("calculate", for: .normal)
      calculateButton.setTitleColor(.white, for: .normal)
      calculateButton.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
      calculateButton.addTarget(self, action: #selector(calculate), for: .touchUpInside)
      wageTxtField.inputAccessoryView = calculateButton
      itemPrice.inputAccessoryView = calculateButton
    
      clearButton.setTitle("clear hours", for: .normal)
      clearButton.setTitleColor(.white, for: .normal)
      clearButton.addTarget(self, action: #selector(clear), for: .touchUpInside)
    }
    @objc func calculate (){
        if let wageTxt = wageTxtField.text , let priceTxt = itemPrice.text{
            if let wageByHour = Double(wageTxt), let price = Double(priceTxt){
                view.endEditing(true)
                HoursLabel.isHidden = false
                numberOfHours.isHidden = false
                numberOfHours.text = ("\(wage.getHours(getwage: wageByHour, andprice: price))")
                HoursLabel.text = "Hours"
            }
        }
    }
    @objc func clear(){
        HoursLabel.isHidden = true
        numberOfHours.isHidden = true
        wageTxtField.text = ""
        itemPrice.text = ""
    }
}

