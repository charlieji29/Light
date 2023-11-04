//
//  ViewController.swift
//  Light
//
//  Created by Jiayi Ji on 11/4/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lightButton: UIButton!

    var lightOn = true
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    fileprivate func updateUI() {
        if lightOn {
            view.backgroundColor = .white
            lightButton.setTitle("On", for: .normal)
        } else {
            view.backgroundColor = .black
            lightButton.setTitle("Off", for: .normal)
        }
    }

    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        updateUI()
    }
}
