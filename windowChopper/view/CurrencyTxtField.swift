//
//  CurrencyTxtField.swift
//  windowChopper
//
//  Created by AMN on 1/25/22.
//

import UIKit

class CurrencyTxtField: UITextField {
    override func draw(_ rect: CGRect) {
        let size =  20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (Int(frame.size.height)/2) - (size/2), width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 4.0
        textAlignment = .center
        clipsToBounds = true
    }
    func placeholderText(placeholderText : String){
        let placeText = NSAttributedString(string: placeholderText, attributes: [.foregroundColor : #colorLiteral(red: 0.2742793858, green: 0.5394878983, blue: 0.7683978677, alpha: 1) ])
        attributedPlaceholder = placeText
        textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    

}
