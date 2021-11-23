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


    override func viewDidLoad() {
        super.viewDidLoad()
        view1Label.text = String(view1Slider.value)
    }
}
