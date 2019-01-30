//
//  ProfileTableViewCell.swift
//  Johnsurance
//
//  Created by John Xiong on 11/17/18.
//  Copyright © 2018 John Xiong. All rights reserved.
//

import UIKit

struct AddressInfo {
    var address: String
    var city: String
    var state: String
    var zipCode: String
}
struct PersonInfo {
    var firstName: String
    var middleName: String
    var lastName: String
    var address: AddressInfo
    var phoneNumber: String
}

class ProfileTableViewCell: UITableViewCell {
    
    let profileImage = UIImageView()
    let name = UILabel()
    let addressLine1 = UILabel()
    let addressLine2 = UILabel()
    let phoneLine = UILabel()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        profileImage.backgroundColor = UIColor.blue
        
        contentView.addSubview(profileImage)
        contentView.addSubview(name)
        contentView.addSubview(addressLine1)
        contentView.addSubview(addressLine2)
        contentView.addSubview(phoneLine)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
