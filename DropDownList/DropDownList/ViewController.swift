//
//  ViewController.swift
//  DropDownList
//
//  Created by Dawood on 21/06/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var cities: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(TestClass().name)
    }

    @IBAction func selectBtn(_ sender: UIButton) {
        cities.forEach { btns in
            UIView.animate(withDuration: 0.1, delay: 0.0) {
                btns.isHidden = !btns.isHidden
                self.view.layoutIfNeeded()
            }

        }
    }
    
    @IBAction func city1(_ sender: UIButton) {
        alert(title: "Allert!!!", message: "you select city 1")
    }
    @IBAction func city2(_ sender: UIButton) {
        alert(title: "Allert!!!", message: "you select city 2")
    }
    @IBAction func city3(_ sender: UIButton) {
       alert(title: "Allert!!!", message: "you select city 3")
    }
    
    func alert(title:String,message:String){
        let city1Alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: .default)
        city1Alert.addAction(ok)
        present(city1Alert, animated: true)
    }
    
}

