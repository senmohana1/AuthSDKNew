//
//  AuthSDK.swift
//  AuthSDK
//
//  Created by Senthilnathan on 4/4/22.
//

import Foundation
import UIKit

public class AuthSDK: UIViewController {
    var loginUIView: loginUIComponents? = nil
    var clientId: String?
    var vcntl: UIViewController?
    
    public func authenticate(loginUIView: loginUIComponents? = nil,
                      clientId: String?,
                      vcntl: UIViewController?) {
        self.loginUIView = loginUIView
        self.clientId = clientId
        self.vcntl = vcntl
        
        if let vc = loginUIView as? UIViewController, let vcntl = vcntl {
            vc.view.frame = vcntl.view.bounds
            vcntl.view.addSubview(vc.view)
            vcntl.addChild(vc)
            vc.didMove(toParent: vcntl)
            vcntl.view.addSubview(vc.view )
            getLoginButton()
        } else {
            let vc =  DefaultLoginViewController()
            if let vcntl = vcntl {
                self.loginUIView = vc
                vc.view.frame = vcntl.view.bounds
                vcntl.view.addSubview(vc.view)
                vcntl.addChild(vc)
                vc.didMove(toParent: vcntl)
                vcntl.view.addSubview(vc.view)
            }
            getLoginButton()
        }
    }
    
    func getLoginButton () {
        let loginButton = loginUIView?.getLoginButton()
        loginButton?.addTarget(self, action: #selector(buttonAction(_:)), for: .touchUpInside)
    }
    
    @objc func buttonAction(_ sender:UIButton!)   {
        let nl = NetworkLayer()
        let userName = loginUIView?.getUserNameTextField()
        let password = loginUIView?.getPasswordTextField()
        let errorLabel = loginUIView?.getErrorLabel()
        nl.validateUserCredentails(userName: userName?.text ?? "", passWord: password?.text ?? "") { result in
            errorLabel?.text = result
            errorLabel?.backgroundColor = .green
        }
    }
}
