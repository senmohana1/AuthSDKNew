//
//  DefaultLoginViewController.swift
//  AuthSDK
//
//  Created by Senthilnathan on 4/4/22.
//

import Foundation
import UIKit

class DefaultLoginViewController: UIViewController {

    

    let titleLabel = UILabel()

    let loginButton = UIButton(type: .system)

    

    let userNameTextField = UITextField()

    

    let passwordTextField = UITextField()

    

    let errorLabel = UILabel()

    

    let forgetPasswordButton = UIButton(type: .system)

    

    var vvv = UIViewController()

    

    override func viewDidLoad() {

        super.viewDidLoad()

        self.view.backgroundColor = .cyan

        loadUIElements()

    }

    

    func loadUIElements()  {

        titleLabel.frame = CGRect(x: 100, y: 50, width: 160, height: 21)

        titleLabel.text = "Default Login Page"

        userNameTextField.frame = CGRect(x: 100, y: 130, width: 140, height: 21)

        passwordTextField.frame = CGRect(x: 100, y: 200, width: 140, height: 21)

        

        loginButton.frame = CGRect(x: 120, y: 240, width: 70, height: 50)

        

        errorLabel.frame = CGRect(x: 120, y: 300, width: 70, height: 50)

        

        loginButton.setTitle("Login", for: .normal)

        

        userNameTextField.placeholder = "User Name"

        passwordTextField.placeholder = "Password"

        loginButton.addTarget(vvv, action: #selector(buttonAction(_:)), for: .touchUpInside)

        userNameTextField.backgroundColor = .lightGray

        passwordTextField.backgroundColor = .lightGray

     

        self.view.addSubview(userNameTextField)

        self.view.addSubview(passwordTextField)

        self.view.addSubview(loginButton)

        self.view.addSubview(errorLabel)

        self.view.addSubview(titleLabel)

    }

    

    @objc func buttonAction(_ sender:UIButton!)

    {

        

    }

}



extension DefaultLoginViewController: loginUIComponents {

    func setCurrentViewController(vcntl: UIViewController) {

        

    }

    

    func getErrorLabel() -> UILabel {

        return errorLabel

    }

    

    func getForgetPasswordButton() -> UIButton {

        return forgetPasswordButton

    }

    

    func getLoginButton() -> UIButton {

        return loginButton

    }

    

    func getUserNameTextField() -> UITextField {

        return userNameTextField

    }

    

    func getPasswordTextField() -> UITextField {

        return passwordTextField

    }

}
