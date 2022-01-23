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

  var weightbody :Double
var heightbody :Double

init(weightbody:Double,heightbody:Double){
  self.weightbody = weightbody
  self.heightbody = heightbody
}

func bmi()->Double {
  return weightbody/(heightbody*heightbody)

}
}
