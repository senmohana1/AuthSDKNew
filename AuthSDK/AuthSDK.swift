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

  //  var loginUIView_1: loginUIComponents? = nil

    

    

    public func authenticate(loginUIView: loginUIComponents? = nil,

                      clientId: String?,

                      vcntl: UIViewController?) {

        self.loginUIView = loginUIView

        self.clientId = clientId

        self.vcntl = vcntl

        if let v = loginUIView as? UIViewController, let vcntl = vcntl {

            v.view.frame = vcntl.view.bounds

            vcntl.view.addSubview(v.view)

            vcntl.addChild(v)

            v.didMove(toParent: vcntl)

            vcntl.view.addSubview(v.view ??  UIView())

            //callAPI()

            callAPI2()

        } else {

            let v =  DefaultLoginViewController()

            if let vcntl = vcntl {

                self.loginUIView = v

                v.vvv = self

                v.view.frame = vcntl.view.bounds

                vcntl.view.addSubview(v.view)

                vcntl.addChild(v)

                v.didMove(toParent: vcntl)

                vcntl.view.addSubview(v.view ??  UIView())

            }

            callAPI1()

        }

    }

    

    func test () {

 

    }

    

    func callAPI() {

        let userName = loginUIView?.getUserNameTextField()

        let password = loginUIView?.getPasswordTextField()

        let errorLabel = loginUIView?.getErrorLabel()

     //   let nl = NetworkLayer()

      /*  nl.validateUserCredentails(userName: userName?.text ?? "", passWord: password?.text ?? "") { result in

            errorLabel?.text = result

            

        } */

    }

    func callAPI2() {

        let loginButton = loginUIView?.getLoginButton()

        //loginUIView?.setCurrentViewController(vcntl: self)

        loginButton?.addTarget(self, action: #selector(buttonAction(_:)), for: .touchUpInside)

        loginButton?.addAction( UIAction(title: "Button Title", handler: { _ in

      

            //let nl = NetworkLayer()

            let userName = self.loginUIView?.getPasswordTextField()

            let password = self.loginUIView?.getPasswordTextField()

            let errorLabel = self.loginUIView?.getErrorLabel()

//            nl.validateUserCredentails(userName: userName?.text ?? "", passWord: password?.text ?? "") { result in
//
//                errorLabel?.text = result
//
//                errorLabel?.backgroundColor = .green
//
//            }

                        errorLabel?.text = "Success"
            
                        errorLabel?.backgroundColor = .green
            

        }), for: .touchUpInside)

        

    }

    func callAPI1() {

        let loginButton = loginUIView?.getLoginButton()

        loginButton?.addTarget(self, action: #selector(buttonAction(_:)), for: .touchUpInside)

    }

    

    @objc func buttonAction(_ sender:UIButton!)

    {

     //   let nl = NetworkLayer()

        let userName = loginUIView?.getPasswordTextField()

        let password = loginUIView?.getPasswordTextField()

        let errorLabel = loginUIView?.getErrorLabel()
        
        
                    errorLabel?.text = "Success"
        
                    errorLabel?.backgroundColor = .green

//        nl.validateUserCredentails(userName: userName?.text ?? "", passWord: password?.text ?? "") { result in
//
//            errorLabel?.text = result
//
//            errorLabel?.backgroundColor = .green
//
//        }

    }

}
