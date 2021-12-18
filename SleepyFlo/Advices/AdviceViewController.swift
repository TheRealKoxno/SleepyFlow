//
//  ViewController.swift
//  SleepyFlo
//
//  Created by mac on 15.12.2021.
//

import UIKit

class AdviceViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var table: UITableView!
    
    var models = [Model]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        models.append(Model(text: "Sleepy1", imageName: "image_advice_1"))
        
        models.append(Model(text: "Sleepy2", imageName: "image_advice_2"))
        
        models.append(Model(text: "Sleepy3", imageName: "image_advice_3"))
        
        models.append(Model(text: "Sleepy4", imageName: "image_advice_4"))
        
        models.append(Model(text: "Sleepy1", imageName: "image_advice_1"))
        
        models.append(Model(text: "Sleepy2", imageName: "image_advice_2"))
        
        models.append(Model(text: "Sleepy3", imageName: "image_advice_3"))
        
        models.append(Model(text: "Sleepy4", imageName: "image_advice_4"))
        
        models.append(Model(text: "Sleepy1", imageName: "image_advice_1"))
        
        models.append(Model(text: "Sleepy2", imageName: "image_advice_2"))
        
        models.append(Model(text: "Sleepy3", imageName: "image_advice_3"))
        
        models.append(Model(text: "Sleepy4", imageName: "image_advice_4"))
        
        table.register(CollectionTableViewCell.nib(), forCellReuseIdentifier: CollectionTableViewCell.identifier)
        table.delegate = self
        table.dataSource = self
    }
    
    //Table
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as! CollectionTableViewCell
        cell.configure(with: models)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250.0
    }
}

struct Model {
    let text: String
    let imageName: String
    
    init(text: String, imageName: String) {
        self.text = text
        self.imageName = imageName
    }
}

