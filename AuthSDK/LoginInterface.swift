//
//  LoginInterface.swift
//  AuthSDK
//
//  Created by Senthilnathan on 4/4/22.
//

import Foundation
import UIKit

public protocol loginUIComponents {
    func getLoginButton() -> UIButton
    func getUserNameTextField() -> UITextField
    func getPasswordTextField() -> UITextField
    func getErrorLabel() -> UILabel
    func getForgetPasswordButton() -> UIButton
}
