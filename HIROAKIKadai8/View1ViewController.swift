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

    private let valueKEY = "value"

    override func viewDidLoad() {
        super.viewDidLoad()
        view1Label.text = "0.0"
        view1Slider.value = 0.0
    }

    @IBAction private func view1SliderAction(_ sender: Any) {
        let view1Value = view1Slider.value
        view1Label.text = String(view1Value)
        UserDefaults.standard.set(view1Value, forKey: valueKEY)
    }

    override func viewWillAppear(_ animated: Bool) {
        let value = UserDefaults.standard.float(forKey: valueKEY)
        view1Label.text = String(value)
        view1Slider.value = value
    }
}
