//
//  ViewController.swift
//  MenuProfile
//
//  Created by Jackeline Pires De Lima on 20/09/22.
//

import UIKit

class ViewController: UIViewController {
    
    let viewModel = MenuProfileViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.fetch(from: .request)
    }
}

