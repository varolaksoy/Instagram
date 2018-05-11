//
//  ViewController.swift
//  Instagram
//
//  Created by Mac on 1.05.2018.
//  Copyright © 2018 Varol. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    var signupModeActive = true
    
    func displayAlert(title:String, message:String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
            
            self.dismiss(animated: true, completion: nil)
            
        }))
        
        self.present(alert, animated: true, completion: nil)

    }
    
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBAction func signupOrLogin(_ sender: Any) {
        
        if email.text == "" || password.text == "" {
            
            displayAlert(title:"Error in form", message:"Please enter an email and password")
            
            
        } else {
            
            let activityIndicator = UIActivityIndicatorView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
            
            activityIndicator.center = self.view.center
            
            activityIndicator.hidesWhenStopped = true
            
            activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.gray
            
            view.addSubview(activityIndicator)
            
            activityIndicator.startAnimating()
            
            UIApplication.shared.beginIgnoringInteractionEvents()
            
            if (signupModeActive) {
                
                print("Signing up....")
                
                let user = PFUser()
                
                user.username = email.text
                user.password = password.text
                user.email = email.text
                
                user.signUpInBackground(block: { (success, error) in
                    
                    activityIndicator.stopAnimating()
                    UIApplication.shared.endIgnoringInteractionEvents()
                    
                    if let error = error {
                        
                        self.displayAlert(title:"Could not sign you up", message:error.localizedDescription)
                        
                        // let errorString = error.userInfo["error"] as? NSString
                        // Show the errorString somewhere and let the user try again.
                        
                        print(error)
                        
                    } else {
                        
                        print("signed up!")
                        self.performSegue(withIdentifier: "showUserTable", sender: self)
                    }
                })
                
            } else {
                
                PFUser.logInWithUsername(inBackground: email.text!, password: password.text!, block: { (user, error) in
                    
                    activityIndicator.stopAnimating()
                    UIApplication.shared.endIgnoringInteractionEvents()
                    
                    if user != nil {
                        
                        print("Login successful")
                        self.performSegue(withIdentifier: "showUserTable", sender: self)

                    } else {
                        
                        var errorText = "Unknown error: please try again"
                        
                        if let error = error {
                            
                            errorText = error.localizedDescription
                            
                        }
                        
                        self.displayAlert(title:"Could not sign you up", message:errorText)
                        
                    }
                    
                })
                
            }
            
        }
    }
    
    
    @IBOutlet weak var signupOrLoginButton: UIButton!
    
    
    @IBAction func switchLoginMode(_ sender: Any) {
        if (signupModeActive) {
            signupModeActive = false
            signupOrLoginButton.setTitle("Log In", for: [])
            switchLoginModeButton.setTitle("Sign Up", for: [])
        } else {
            signupModeActive = true
            signupOrLoginButton.setTitle("Sign Up", for: [])
            switchLoginModeButton.setTitle("Log In", for: [])
        }
    }
    
    @IBOutlet weak var switchLoginModeButton: UIButton!
    
    
    
    
    
    
    
    
    
    
    @IBAction func chooseImage(_ sender: Any) {
        
        //buton ile seçilen resmi imageview'de gösterme.
//        let imagePickerController = UIImagePickerController()
//        imagePickerController.delegate = self
//        imagePickerController.sourceType = UIImagePickerControllerSourceType.photoLibrary
//        imagePickerController.allowsEditing = false
//        self.present(imagePickerController, animated: true, completion: nil)
        
       
        // alert tepkisi
//        let alertController = UIAlertController(title: "hey there!", message: "are you sure?", preferredStyle: UIAlertControllerStyle.alert)
//        alertController.addAction((UIAlertAction(title: "ok", style: .default, handler: { (action) in
//            print("ok button pressed")
//        })))
//
//        alertController.addAction(UIAlertAction.init(title: "no", style: .default, handler: { (action) in
//            print("no button pressed")
//            self.dismiss(animated: true, completion: nil)
//        }))
//        self.present(alertController, animated: true, completion: nil)
   }
    
    @IBOutlet weak var imageView: UIImageView!
    
//    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
//        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
//            imageView.image = image
//        } else {
//            print("there was a problem getting the image")
//        }
//        self.dismiss(animated: true, completion: nil)
//    }
    
    @IBAction func pauseApp(_ sender: Any) {
        
        
    }
    
    
    
    
    
    
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        if PFUser.current() != nil {
            performSegue(withIdentifier: "showUserTable", sender: self)
        }
        
        self.navigationController?.navigationBar.isHidden = true
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        
      //insert
//    let comment = PFObject(className: "Comment")
//
//    comment["text"] = "Nice shot!"
//        comment.saveInBackground { (succes, error) in
//            if (succes) {
//                print("kayıt başarılı!")
//            } else  {
//                print("kayıt başarısız!")
//            }
//        }
        
        
        
        //select
//        let query = PFQuery(className: "Comment")
//        query.getObjectInBackground(withId: "ZfEba2Qe8T") { (object, error) in
//            if let comment = object {
//                if let text = comment["text"]{
//                    print(text)
//                }
//            }
//        }
        
        //tweet ekleme
//        let tweet = PFObject(className: "tweet")
//        tweet["text"] = "Bu benim ilk tweetim!"
//        tweet.saveInBackground { (succes, error) in
//            if (succes) {
//                print("tweet gönderildi")
//            } else  {
//                print("bi sıkıntı var galiba")
//            }
//        }
        
    }

}
