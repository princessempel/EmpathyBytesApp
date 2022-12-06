//
//  ARArchive.swift
//  EmpathyBytesApp
//
//  Created by Nivedita Chellam on 11/11/22.
//

import Foundation
import UIKit
import SwiftUI

class ARArchive : UIViewController{
    
    //UITableViewDelegate, UITableViewDataSource
    
    var models : [ModelEntity] = []

    private let tableView : UITableView = {
        let tableView = UITableView()
        //each cell must be a CustomTableViewCell
        tableView.register(CustomTableViewCell.self,forCellReuseIdentifier: CustomTableViewCell.identifier)
        return tableView
    }()
    
    private let titleLabel : UILabel = {
        let width = UIScreen.main.bounds.width
        let label = UILabel(frame:CGRect(x: 0, y: 0, width: width, height:40 ))
        label.textColor = .black
        label.font = .systemFont(ofSize: 25,weight: .bold)
        label.textAlignment = .center
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        models = fetchData()
        configureARArchiveTitle()
        configureTableView()
    }
    
    func configureARArchiveTitle() {
        print("label add")
        titleLabel.text = "AR Archive Gallery"
        self.view.addSubview(titleLabel)
        //configureTitleConstrains()
    }
    func configureTableView() {
        // next two commands declare that ARArchive will implement the Data Source and Delegate classes
        tableView.dataSource = self
        tableView.delegate = self
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableView.automaticDimension
        self.view.addSubview(tableView)
        constrainTableView()
    }
    
    func constrainTableView() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,constant: 25).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
}

extension ARArchive : UITableViewDataSource, UITableViewDelegate {
    /** returns number of rows in tableview */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    /** Dequeue a cell and return it */
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell else {
            return UITableViewCell()
        }
        let model = models[indexPath.row % models.count]
        //Currently there is only two models avaiable so we are modding by models.count to fill the whole tableview
        cell.configure(text: model.title, imageName: model.imageName)
        return cell
    }
    /** Returns height for each row */
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if (indexPath.row == 4) {
            return 300
        }
        return 125
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let model = models[indexPath.row % models.count]
        let host = UIHostingController(rootView: ModelDescriptionView(modelEntity: model))
        navigationController?.pushViewController(host, animated: true)
    }
}

extension ARArchive {
    /** Creates models objects with name and image */
    func fetchData() -> [ModelEntity] {
        let model1 = ModelEntity(imageName: ImageConstants.olympicTorch , title: ImageConstants.olympicTorchTitle, description: ImageConstants.olympicTorchDescription)
        return [model1]
    }
    
}
