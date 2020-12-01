//
//  Dates+Ex.swift
//  GHFollowers
//
//  Created by Tashnik on 9/21/20.
//  Copyright © 2020 David Potashnik. All rights reserved.
//

import Foundation

extension Date {
  
  func convertToMonthYearFormat() -> String {
    
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "MMM yyyy"
    return dateFormatter.string(from: self)
  }
}
