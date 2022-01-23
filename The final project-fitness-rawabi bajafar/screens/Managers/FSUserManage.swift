//
//  FSUserManage.swift
//  The final project-fitness-rawabi bajafar
//
//  Created by روابي باجعفر on 15/06/1443 AH.
//
//
import Foundation
import Firebase
 
class FSUserManager {
  static let shared = FSUserManager()
  
  private init() {}
  
  private var email: String = ""
  private var password: String = ""
  private var confirmPassword: String = ""
  private var firstname: String = ""
  private var lastname: String = ""
  private  var height: String = ""
  private  var weight: String = ""
  private var dateOfBirth: String = ""
  
  
  
  // MARK: - Register
  func signUpUserWith(
    email: String,
    password: String,
    confirmPassword: String,
    firstname: String,
    lastname: String ,
    height: String ,
    weight: String ,
   dateOfBirth: String ,
    
    completion: @escaping (_ error: Error?) -> Void
  ) {

    self.email = email
    self.password = password
    self.confirmPassword = confirmPassword
    self.firstname = firstname
    self.lastname = lastname
    self.height = height
    self.weight = weight
    self.dateOfBirth = dateOfBirth
    

    Auth
      .auth()
      .createUser(withEmail: email, password: password) { (authDataResult, error) in
        completion(error)
        
        guard let id = authDataResult?.user.uid else {
          print("DEBUG : ERROR getting the id of the new user registration")
          return
        }
        
        if error != nil {
          print("DEBUG: Error: \(String(describing:error?.localizedDescription))")
          completion(error)
        } else {
          getFSCollectionReference(.users).document(authDataResult!.user.uid).setData( ["email":email,"firstname":firstname,"lastname":lastname,"height":height,"weight":weight,"dateOfBirth":dateOfBirth, "uid": id ,"type":"users"]) { (error) in
            if error != nil {
              completion(error)
            }
            
          }
        }
        
      }
  }
  
}

