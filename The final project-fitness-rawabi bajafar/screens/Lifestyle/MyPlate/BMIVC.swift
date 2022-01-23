//
//  BMIVC.swift
//  The final project-fitness-rawabi bajafar
//
//  Created by روابي باجعفر on 18/06/1443 AH.
//

import UIKit
import Firebase

class BMIVC: UIViewController {
  
  // MARK: - IBOutlets
  
  @IBOutlet var measurementSegmentedControl: UISegmentedControl!
  
  @IBOutlet var heightTextField: UITextField!
  
  @IBOutlet var weightTextField: UITextField!
  
  @IBOutlet var showBMILabel: UILabel!
  
  
  let db = Firestore.firestore()
  
  // MARK: - View controller lifecycle
  
  override func viewDidLoad()
  {
    super.viewDidLoad()
    self.Keyboard()
    
    overrideUserInterfaceStyle = .light
    navigationItem.setHidesBackButton(true, animated: true)
    
    let user = Auth.auth().currentUser
    print(user?.uid)
    if let currentUser = user
    {
      db.collection("users").document(currentUser.uid).getDocument
      { doc, err in
        if err != nil
        {
          print(err)
          
        }
        else
        {
          let data = doc!.data()!
          
          self.heightTextField.text = data ["height"] as! String
          self.weightTextField.text = data ["weight"] as! String
        }
        
        
        // Do any additional setup after loading the view.
      }
    }
  }
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  
  
  // MARK: - @IBAction
  
  @IBAction func computeBMI(_ sender: Any) {
    
    let h = Double(heightTextField.text!)
    let w = Double(weightTextField.text!)
    let bmiM = BMIModel(weightbody: w!, heightbody: h!)
    showBMILabel.text = String (bmiM.bmi())
    
  }
}
