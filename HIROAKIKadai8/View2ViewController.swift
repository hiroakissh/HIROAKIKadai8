//
//  View2ViewController.swift
//  HIROAKIKadai8
//
//  Created by HiroakiSaito on 2021/11/23.
//

import UIKit

class View2ViewController: UIViewController {
    @IBOutlet private weak var view2Label: UILabel!
    @IBOutlet private weak var view2Slider: UISlider!

    private let valueKEY = "value"

    override func viewDidLoad() {
        super.viewDidLoad()
        view2Label.text = "0.0"
        view2Slider.value = 0.0
    }

    @IBAction private func view2SliderAction(_ sender: Any) {
        let view2Value = view2Slider.value
        view2Label.text = String(view2Value)
        UserDefaults.standard.set(view2Value, forKey: valueKEY)
    }

    override func viewWillAppear(_ animated: Bool) {
        let value = UserDefaults.standard.float(forKey: valueKEY)
        view2Label.text = String(value)
        view2Slider.value = value
    }
}
