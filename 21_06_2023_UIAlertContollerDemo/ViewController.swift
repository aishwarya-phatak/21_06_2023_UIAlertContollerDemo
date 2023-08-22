//
//  ViewController.swift
//  21_06_2023_UIAlertContollerDemo
//
//  Created by Vishal Jagtap on 22/08/23.
//

import UIKit

class ViewController: UIViewController {

    var uiAlertController : UIAlertController?
    var okAction : UIAlertAction?
    var cancelAction : UIAlertAction?
    var nameTextField : UITextField?
    var passwordtextField : UITextField?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    
    @IBAction func alertButtonClicked(_ sender: UIButton) {

        print(sender.tag)
        
        if sender.tag == 0{
            simpleAlertBtnClicked()
        }
        else if sender.tag == 1{
            alertWithTextFieldBtnClicked()
        }
        else if sender.tag == 2{
            alertWithLoginFormBtnClicked()
        }
        else if sender.tag == 3{
            alertWithMultipleButtonsBtnClicked()
        }
        else if sender.tag == 4{
            standardActionSheetBtnClicked()
        }
    }
    
    func simpleAlertBtnClicked(){
        uiAlertController = UIAlertController(
            title: "Simple Alert",
            message: "Do you really want to submit the exam?",
            preferredStyle: .alert)
        
        okAction = UIAlertAction(
            title: "OK",
            style: .default,
            handler: { (action) in
            print("OK button has been clicked")
        })
        
        cancelAction = UIAlertAction(title: "Cancel", style: .cancel){ (action) in
            print("The cancel button is clicked")
        }
        
        uiAlertController?.addAction(okAction!)
        uiAlertController?.addAction(cancelAction!)
    
        self.present(uiAlertController!, animated: true)
    }
    
    func alertWithTextFieldBtnClicked(){
        uiAlertController = UIAlertController(
            title: "AlertWithTextField",
            message: "Exam Form Details",
            preferredStyle: .alert)
        okAction = UIAlertAction(title: "OK", style: .default){ (action) in
            print("OK btn has been clicked")
        }
        
        uiAlertController?.addAction(okAction!)
        
        cancelAction = UIAlertAction(title: "Cancel", style: .cancel){ (action) in
            print("Cancel btn clicked")
        }
        
        uiAlertController?.addAction(cancelAction!)
        
        uiAlertController?.addTextField(configurationHandler: { (textField) in
            self.nameTextField = textField
            self.nameTextField?.placeholder = "Enter your name here"
//            self.nameTextField?.backgroundColor = .lightGray
            self.nameTextField?.textColor = .brown
        })
        self.present(uiAlertController!, animated: true)
    }
    
    func alertWithLoginFormBtnClicked(){
        uiAlertController = UIAlertController(
            title: "AlertWithLoginForm",
            message: "",
            preferredStyle: .alert)
        okAction = UIAlertAction(title: "OK", style: .default){ (action) in
            print("OK Clicked")
        }
        
        cancelAction = UIAlertAction(title: "Cancel", style: .cancel){ (action) in
            print("Cancel clicked")
        }
        
        uiAlertController?.addTextField(configurationHandler: { (textField) in
            self.nameTextField = textField
            self.nameTextField?.placeholder = "Enter username"
        })
        uiAlertController?.addTextField(configurationHandler: { (textField) in
            self.passwordtextField = textField
            self.passwordtextField?.placeholder = "Enter password"
        })
        uiAlertController?.addAction(okAction!)
        uiAlertController?.addAction(cancelAction!)
        self.present(uiAlertController!, animated: true)
    }
    
    func alertWithMultipleButtonsBtnClicked(){
        uiAlertController = UIAlertController(
            title: "AlertWithMultipleButtons",
            message: "Select One Button",
            preferredStyle: .alert)
        
        let btnOne = UIAlertAction(title: "One", style: .default){
            (action) in
             print("btnOne clicked")
        }
        
        let btnTwo = UIAlertAction(title: "Two", style: .default){
            (action) in
             print("btnTwo clicked")
        }
        
        let btnThree = UIAlertAction(title: "Three", style: .default){
            (action) in
             print("btnThree clicked")
        }
        
        let btnFour = UIAlertAction(title: "Four", style: .default){
            (action) in
             print("btnFour clicked")
        }
        
        uiAlertController?.addAction(btnOne)
        uiAlertController?.addAction(btnTwo)
        uiAlertController?.addAction(btnThree)
        uiAlertController?.addAction(btnFour)
        
        self.present(uiAlertController!, animated: true)
    }
    
    func standardActionSheetBtnClicked(){
        uiAlertController = UIAlertController(
            title: "Action Sheet",
            message: "Action Sheet",
            preferredStyle: .actionSheet)
        okAction = UIAlertAction(title: "OK", style: .default){ (action) in
            print("OK Action")
        }
        
        cancelAction = UIAlertAction(title: "Cancel", style: .cancel){ (action)->Void in
            print("Cancel Clicked")
        }
        
        let deleteAction = UIAlertAction(title: "Delete", style: .destructive){
            (action) in
            print("delete btn clicked")
        }
        
        uiAlertController?.addAction(okAction!)
        uiAlertController?.addAction(cancelAction!)
        uiAlertController?.addAction(deleteAction)
        
        self.present(uiAlertController!, animated: true)
    }
}
