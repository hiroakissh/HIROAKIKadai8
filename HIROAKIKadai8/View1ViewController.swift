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

    let delegate = UIApplication.shared.delegate as? AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()
        view1Label.text = "0.0"
        view1Slider.value = 0.0
    }

    @IBAction private func view1SliderAction(_ sender: Any) {
        let view1Value = String(view1Slider.value)
        view1Label.text = view1Value
        delegate!.number = view1Value
    }

    override func viewWillAppear(_ animated: Bool) {
        view1Label.text = delegate?.number
        view1Slider.value = Float(delegate!.number) ?? 0.0
    }
}
