//
//  ViewController.swift//  miraclePills
//
//  Created by Nicole Bolden on 8/17/16.
//  Copyright © 2016 Inclined Tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
   
    @IBOutlet weak var buyNowBtn: UIButton!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var miraclePillsEmoji: UIImageView!
    @IBOutlet weak var fullNamed: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var successIndicatorPic: UIImageView!
    @IBOutlet weak var namePills: UILabel!
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var enterCity: UITextField!
    @IBOutlet weak var stateLabel: UILabel!
    @IBOutlet weak var enterStreetAdd: UITextField!
    @IBOutlet weak var enterFullNamed: UITextField!
    @IBOutlet weak var streetAddress: UILabel!
    @IBOutlet weak var grayDivide: UIView!
    let states = ["Alabama", "Alaska","Arizona","Arkansas","California","Colorado","Conneticut", "Delaware","Florida","Georgia","Hawaii","Idaho","Illinois","Indiana","Iowa","Kansas","Kentucky","Louisiana","Maine","Maryland","Massachusettes","Michican","Minnesota","Mississippi","Missouri","Montana","Nebraska","Nevada","New Hampshire","New Jersey","New Mexico","New York","North Carolina","North Dakota","Ohio","Oklahoma","Oregon","Pennsylvania","Rhode Island","South Carolina","South Dakota","Tennessee","Texas","Utah","Vermont","Virgina","Washington","West Virgina","Wisconsin","Wyoming"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: AnyObject) {
        statePicker.isHidden = false
    }
    // Once the buynow button is pressed, everything on the screen will dissappear and then the success image will show
    @IBAction func buyNowBtnPressed(_ sender: AnyObject) {
        statePickerBtn.isHidden = true
        miraclePillsEmoji.isHidden = true
        fullNamed.isHidden = true
        price.isHidden = true
        successIndicatorPic.isHidden = false
        namePills.isHidden = true
        city.isHidden = true
        enterCity.isHidden = true
        stateLabel.isHidden = true
        enterFullNamed.isHidden = true
        streetAddress.isHidden = true
        grayDivide.isHidden = true
        enterStreetAdd.isHidden = true
        buyNowBtn.isHidden = true
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

