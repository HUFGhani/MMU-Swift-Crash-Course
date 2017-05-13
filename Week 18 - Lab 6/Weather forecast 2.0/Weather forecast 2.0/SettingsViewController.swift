//
//  SettingsViewController.swift
//  Weather forecast 2.0
//
//  Created by Hamza Ghani on 13/05/2017.
//  Copyright © 2017 Hamza Ghani. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var tempSetting: UISwitch!
    
    @IBOutlet weak var cityPicker: UIPickerView!
    
    var city : [String] = ["Manchester","London"]
    var lat : [Double] = [53.47218,51.507351]
    var long: [Double] = [-2.274084,-0.127758]
    
    
    var chossenCity:String?
    var choosenLat:Double?
    var choosenLog:Double?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        cityPicker.dataSource = self
        cityPicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return city.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return city[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        chossenCity = city[row]
        choosenLat = lat[row]
        choosenLog = long[row]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
       
    }
    

}
