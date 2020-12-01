//
//  GFFollowerItemVC.swift
//  GHFollowers
//
//  Created by Tashnik on 9/21/20.
//  Copyright © 2020 David Potashnik. All rights reserved.
//

import UIKit

class GFFollowerItemVC: GFItemInfoVC {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    configureItems()
  }
  
  private func configureItems() {
    
    itemInfoViewOne.set(itemInfoType: .followers, withCount: user.followers)
    itemInfoViewTwo.set(itemInfoType: .following, withCount: user.following)
    actionButton.set(backgroundColor: .systemGreen, title: "Get Followers")
  }
  
  override func actionButtonTapped() {
    
    guard user.followers != 0 else {
      presentGFAlertOnMainThread(title: "No followers", message: "User has no followers 😞", buttonTitle: "Ok")
      return
    }
    delegate.didTapGetFollowers(for: user)
    dismiss(animated: true)
  }
}
