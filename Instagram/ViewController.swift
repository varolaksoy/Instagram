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
