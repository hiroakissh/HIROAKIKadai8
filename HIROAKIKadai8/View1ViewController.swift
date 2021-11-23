//
//  View1ViewController.swift
//  HIROAKIKadai8
//
//  Created by HiroakiSaito on 2021/11/23.
//

import UIKit

class View1ViewController: UIViewController {
    @IBOutlet private weak var view1Label: UILabel!
    @IBOutlet private weak var view1Slider: UISlider!

    let valueKEY = "value"

    override func viewDidLoad() {
        super.viewDidLoad()
        view1Label.text = UserDefaults.standard.string(forKey: valueKEY) ?? "0"
    }

    @IBAction private func view1SliderAction(_ sender: Any) {
        let view1Value = String(view1Slider.value)
        view1Label.text = view1Value
        UserDefaults.standard.set(view1Value, forKey: valueKEY)
    }
}
