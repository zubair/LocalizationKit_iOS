//
//  ViewController.swift
//  LocalizationKit
//
//  Created by Will Powell on 11/08/2016.
//  Copyright (c) 2016 Will Powell. All rights reserved.
//

import UIKit
import LocalizationKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changeLanguageFrench(_ sender:AnyObject){
        Localization.setLanguage("fr")
    }
    
    @IBAction func changeLanguageEnglish(_ sender:AnyObject){
        Localization.setLanguage("en")
    }
    
    @IBAction func changeLanguage(_ sender:AnyObject){
        let alertController = UIAlertController(title: "Select Language", message: nil, preferredStyle: UIAlertControllerStyle.actionSheet)
        
        let englishAction = UIAlertAction(title: "English", style: .default, handler: {(alert: UIAlertAction!) in Localization.setLanguage("en")
        })
        
        let frenchAction = UIAlertAction(title: "French", style: .default, handler: {(alert: UIAlertAction!) in Localization.setLanguage("fr")
        })
        
        let germanAction = UIAlertAction(title: "German", style: .default, handler: {(alert: UIAlertAction!) in Localization.setLanguage("de")
        })
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: {(alert: UIAlertAction!) in print("cancel")})
        alertController.addAction(englishAction)
        alertController.addAction(frenchAction)
        alertController.addAction(germanAction)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true, completion:{})
    }

}

