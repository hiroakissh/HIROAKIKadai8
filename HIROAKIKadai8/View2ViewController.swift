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

    override func viewDidLoad() {
        super.viewDidLoad()
        view2Label.text = String(view2Slider.value)
    }
}
