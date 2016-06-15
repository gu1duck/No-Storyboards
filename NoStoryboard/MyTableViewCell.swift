//
//  MyTableViewCell.swift
//  NoStoryboard
//
//  Created by Jeremy Petter on 2016-06-14.
//  Copyright © 2016 JeremyPetter. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    static let ReuseIdentifier = "MyTableViewCellReuseIdentifier"

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUp()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUp()
    }

    func setUp() {
        backgroundColor = .redColor()
        contentView.addSubview(label)

        label.centerXAnchor.constraintEqualToAnchor(centerXAnchor).active = true
        label.centerYAnchor.constraintEqualToAnchor(centerYAnchor).active = true
    }

    lazy var label: UILabel = {
        let label = UILabel()
        label.textColor = .blackColor()
        label.text = "Hello"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

}
