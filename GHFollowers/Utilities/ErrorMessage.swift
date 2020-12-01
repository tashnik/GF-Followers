//
//  ErrorMessage.swift
//  GHFollowers
//
//  Created by Tashnik on 9/13/20.
//  Copyright © 2020 David Potashnik. All rights reserved.
//

import Foundation


enum GFError: String, Error {
  
  case invalidUsername = "This username created an invalid request"
  case unableToComplete = "Unable to complete request. Please check your internet connection"
  case invalidResponse = "No response from server"
  case invalidData = "Invalid data"
  case unableToFavorite = "There was an error favoriting this user"
  case alreadyInFavorites = "You have already favorited this user"
}
