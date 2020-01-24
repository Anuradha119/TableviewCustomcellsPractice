//
//  ViewController.swift
//  TableviewCustomcellsPractice
//
//  Created by Marni Anuradha on 1/7/20.
//  Copyright © 2020 Marni Anuradha. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    var celebrityNames = ["Shreya Ghoshal", "Arjith Singh", "Arman Malik", "Neha Kakkar", "Sunitha", "Chitra", "Usha", "SPB", "A.R.Rehman", "DSP"]
    
    var celebritiesTV:UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        createUI()
        // Do any additional setup after loading the view.
    }
    
    func createUI()
    {
        celebritiesTV = UITableView(frame: view.frame, style: UITableView.Style.plain)
        celebritiesTV.delegate = self
        celebritiesTV.dataSource = self
        //celebritiesTV.register(UITableViewCell.self, forCellReuseIdentifier: "abc")
        var celebritiesCellXIB = UINib(nibName: "CelebritiesTableViewCell", bundle: nil)
        celebritiesTV.register(celebritiesCellXIB, forCellReuseIdentifier: "abc")
        
        view.addSubview(celebritiesTV)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        celebrityNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "abc", for: indexPath) as! CelebritiesTableViewCell
        cell.celebrityLabel!.text = celebrityNames[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
}

