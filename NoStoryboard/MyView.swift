//
//  MyView.swift
//  NoStoryboard
//
//  Created by Jeremy Petter on 2016-06-14.
//  Copyright © 2016 JeremyPetter. All rights reserved.
//

import UIKit

class MyView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUp()
    }

    override func layoutSubviews() {
        let sizeClasses = (traitCollection.verticalSizeClass, traitCollection.horizontalSizeClass)

        switch sizeClasses {
        case (.Compact, .Compact):
            // modify constraints
            break
        case (.Compact, .Regular):
            // modify constraints
            break
        case (.Regular, .Compact):
            // modify constraints
            break
        case (.Regular, .Regular):
            // modify constraints
            break
        default:
            break
        }
    }

    func setUp() {
        backgroundColor = .blueColor()

        addSubview(whiteView)
        whiteView.addSubview(button1)
        whiteView.addSubview(button2)

        whiteView.topAnchor.constraintEqualToAnchor(topAnchor, constant:50).active = true
        whiteView.leftAnchor.constraintEqualToAnchor(leftAnchor, constant:50).active = true
        whiteView.bottomAnchor.constraintEqualToAnchor(bottomAnchor, constant:-50).active = true
        whiteView.rightAnchor.constraintEqualToAnchor(rightAnchor, constant:-50).active = true

        let formats: [String: NSLayoutFormatOptions] = [
            "V:|-verticalSpacing-[button1]-verticalSpacing-[button2(==button1)]-verticalSpacing-|": [.AlignAllLeading, .AlignAllTrailing],
            "H:|-[button1]-|": [],
            ]

        let views = [
            "button1": button1,
            "button2": button2,
        ]

        let metrics = [
            "verticalSpacing": 40,
        ]

        for (format, options) in formats {
            addConstraints(
                NSLayoutConstraint.constraintsWithVisualFormat(format, options: options, metrics: metrics, views: views)
            )
        }
    }

    lazy var whiteView: UIView = {
        let whiteView = UIView()
        whiteView.translatesAutoresizingMaskIntoConstraints = false
        whiteView.backgroundColor = .whiteColor()
        return whiteView
    }()

    lazy var button1: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .yellowColor()
        button.setTitle("button", forState: .Normal)
        button.setTitleColor(.blueColor(), forState: .Normal)
        return button
    }()

    lazy var button2: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .purpleColor()
        button.setTitle("button", forState: .Normal)
        button.setTitleColor(.greenColor(), forState: .Normal)
        return button
    }()

}
