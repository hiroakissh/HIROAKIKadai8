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

    private var appDelegate: AppDelegate {
        // swiftlint:disable:next force_cast
        UIApplication.shared.delegate as! AppDelegate
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view2Label.text = "0.0"
        view2Slider.value = 0.0
    }

    @IBAction private func view2SliderAction(_ sender: Any) {
        let view2Value = String(view2Slider.value)
        view2Label.text = view2Value
        appDelegate.number = view2Value
    }

    override func viewWillAppear(_ animated: Bool) {
        view2Label.text = appDelegate.number
        view2Slider.value = Float(appDelegate.number) ?? 0.0
    }
}
