//
//  ViewController.swift
//  ExFaceTouchId
//
//  Created by 김종권 on 2021/10/29.
//

import UIKit

class ViewController: UIViewController {
    let auth = BiometricsAuth()

    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        auth.delegate = self
    }

    @IBAction func didTapButton(_ sender: Any) {
        auth.execute()
    }
}

extension ViewController: AuthenticateStateDelegate {
    func didUpdateState(_ state: BiometricsAuth.AuthenticationState) {
        if case .loggedIn = state {
            label.text = "로그인 성공"
        }
    }
}
