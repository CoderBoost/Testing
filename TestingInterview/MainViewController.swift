//
//  MainViewController.swift
//  TestingInterview
//
//  Created by Daymein Gregorio on 4/19/20.
//  Copyright © 2020 Daymein Gregorio. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    var resultLabel: UILabel = {
        let lbl = UILabel()
        lbl.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
        lbl.text = "Result Label"
        lbl.textAlignment = .center
        return lbl
    }()
    
    lazy var firstWordTextField: UITextField = {
        let tF = UITextField()
        tF.placeholder = MainVCStrings.firstWordPlaceholder.rawValue
        tF.borderStyle = .roundedRect
        tF.delegate = self
        return tF
    }()
    
    // add a second textField here
    
    var checkButton: UIButton = {
        let btn = UIButton()
        btn.setTitle(MainVCStrings.butonTitle.rawValue, for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = .systemBlue
        btn.layer.cornerRadius = 6
        btn.clipsToBounds = true
        btn.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        return btn
    }()

    // MARK: - start of functions
    override func viewDidLoad() {
        super.viewDidLoad()
        title = MainVCStrings.mainTitle.rawValue
        tapToDismissKeyboard()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        view.backgroundColor = .white
        layoutUIComponents()
    }
    
    func layoutUIComponents() {
        layoutResultLabel()
        layoutFirstWordTextField()
        layoutSecondWordTextField()
        layoutCheckButton()
    }
    
    func tapToDismissKeyboard() {
        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
    }
    
    // create function that checks if the second word is an anagram of
    // the first word. This function should be called when the button is tapped.
    
    @objc func buttonTapped() {}
    
    func updateResultLabel(with success: Bool) {
        let txt = success ? MainVCStrings.successLabel : MainVCStrings.failureLabel
        resultLabel.text = txt.rawValue
        resultLabel.textColor = success ? .systemBlue : .systemRed
    }
    
}

extension MainViewController: UITextFieldDelegate {
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        resultLabel.text = " "
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}

// MARK: - layout functions
extension MainViewController {
    
    func layoutResultLabel() {
        view.addSubview(resultLabel)
        resultLabel.translatesAutoresizingMaskIntoConstraints = false
        resultLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40).isActive = true
        resultLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        resultLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
    }
    
    func layoutFirstWordTextField() {
        view.addSubview(firstWordTextField)
        firstWordTextField.translatesAutoresizingMaskIntoConstraints = false
        firstWordTextField.topAnchor.constraint(equalTo: resultLabel.bottomAnchor, constant: 40).isActive = true
        firstWordTextField.leadingAnchor.constraint(equalTo: resultLabel.leadingAnchor).isActive = true
        firstWordTextField.trailingAnchor.constraint(equalTo: resultLabel.trailingAnchor).isActive = true
    }
    
    func layoutSecondWordTextField() {
        // layout textField
    }
    
    func layoutCheckButton() {
        view.addSubview(checkButton)
        checkButton.translatesAutoresizingMaskIntoConstraints = false
        checkButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        checkButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
        checkButton.widthAnchor.constraint(equalToConstant: 140).isActive = true
        checkButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
    }
    
}
