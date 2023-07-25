//
//  MenuViewController.swift
//  SpellCheck
//
//  Created by Trung on 21/07/2023.
//  Copyright © 2023 Developers Usage. All rights reserved.
//

import UIKit
import Toast
class MenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    let appVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String
    
   
    var menuItems: [MenuItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuItems = [
            MenuItem(title: "Share", image: UIImage(named: "shareicon")),
            MenuItem(title: "Terms and Conditions", image: UIImage(named: "inforicon")),
            MenuItem(title: "Latest Version : \(appVersion ?? "0.0")", image: UIImage(named: "versionicon"))
        ]
        
        let nib = UINib(nibName: "MenuTableViewCell", bundle: nil)
            tableView.register(nib, forCellReuseIdentifier: MenuTableViewCell.identifier)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.tableFooterView = UIView()
        tableView.rowHeight = UITableView.automaticDimension
        tableView.separatorStyle = .none
        
    }
    
    private func showToast(message: String){
        self.view.makeToast(message, duration: 2.0, position: .bottom)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let menuItem = menuItems[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: MenuTableViewCell.identifier, for: indexPath) as! MenuTableViewCell
        cell.configure(with: menuItem)
        return cell
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.separatorInset = UIEdgeInsets(top: 20, left: 16, bottom: 20, right: 16)
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        
        let selectedItem = menuItems[indexPath.row]
        
        if selectedItem.title == "Share" {
            showToast(message: "Coming soon")
        } else if selectedItem.title == "Terms and Conditions" {
            let storyboard = UIStoryboard(name: "Term", bundle: nil)
            let vc = storyboard.instantiateViewController(identifier: "Term")
            navigationController?.pushViewController(vc, animated: true)
        } else if selectedItem.title.starts(with: "Latest Version") {
            showToast(message: "Latest Version is \(appVersion ?? "0.0")")
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
}
