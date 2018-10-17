//
//  ViewController.swift
//  SimplePicker
//
//  Created by Huy Tran on 16/10/18.
//  Copyright © 2018 Huy Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var selectedData: UILabel!
    
    var pickerData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // assign the delegates
        self.picker.delegate = self
        self.picker.dataSource = self
        
        // initialise picker data
        pickerData = ["A", "B", "C", "D", "E", "F"]
    }
    
    // protocol UIPickerViewDataSource
    // number of data components/columns
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // protocol UIPickerViewDataSource
    // number of rows for a specified component/column
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    // protocol UIPickerViewDelegate
    // setting the content/title of the corresponding row and component/column
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }

    // protocol UIPickerViewDelegate
    // responding to row selection
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedData.text = pickerData[row]
    }

}

