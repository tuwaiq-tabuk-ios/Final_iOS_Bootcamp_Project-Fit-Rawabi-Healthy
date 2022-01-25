//
//  BMICalculator.swift
//  The final project-fitness-rawabi bajafar
//
//  Created by روابي باجعفر on 18/06/1443 AH.
//

import Foundation
import UIKit

class BMIModel {

  // MARK: - Properties

  var weightbody :Float
var heightbody :Float

init(weightbody:Double,heightbody:Double){
  self.weightbody = Float(weightbody)
  self.heightbody = Float(heightbody)
}

func bmi()->Double {
  return Double(weightbody/(heightbody*heightbody))

}
}
