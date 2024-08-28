//
//  ProfileViewController.swift
//  DelegtionApp
//
//  Created by Александр on 28.08.2024.
//

import UIKit

final class ProfileViewController: UIViewController {

    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var surnameTextField: UITextField!
    
    weak var delegate: ProfileViewControllerDelegate?
    
    private var user = User(name: "", surname: "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
        surnameTextField.delegate = self
    }
    
    @IBAction func saveAction() {
        view.endEditing(true)
        delegate?.setGreeting(for: user)
        dismiss(animated: true)
    }
    
    @IBAction func cancelAction() {
        dismiss(animated: true)
    }
}

// MARK: - UITextFieldDelegate
extension ProfileViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField == nameTextField {
            user.name = textField.text ?? ""
        } else {
            user.surname = textField.text ?? ""
        }
        print(user)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
}
