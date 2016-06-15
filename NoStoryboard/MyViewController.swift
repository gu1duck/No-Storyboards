//
//  MyViewController.swift
//  NoStoryboard
//
//  Created by Jeremy Petter on 2016-06-14.
//  Copyright © 2016 JeremyPetter. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {

    let myView = MyView()

    override func loadView() {
        view = myView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        myView.button1.addTarget(self, action: #selector(pushToSelf), forControlEvents: .TouchUpInside)
        myView.button2.addTarget(self, action: #selector(pushToTableView), forControlEvents: .TouchUpInside)

    }

    func pushToSelf() {
        let viewController = MyViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }

    func pushToTableView() {
        let viewController = MyTableViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }
}
