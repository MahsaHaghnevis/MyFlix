//
//  HomeViewController.swift
//  NetflixApp
//
//  Created by Mahsa on 8/17/24.
//

import UIKit

class HomeViewController: UIViewController {
    
    private let homeFeedTable : UITableView = {
        let table = UITableView(frame: .zero , style: .grouped)
        table.register(CollectionViewTableViewCell.self, forCellReuseIdentifier: "CollectionViewTableViewCell")
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        view.addSubview(homeFeedTable)
        homeFeedTable.dataSource = self
        homeFeedTable.delegate = self
        
        let headerView = HeroHeaderUIView(frame: CGRect(x: 0, y: 0, width:  view.bounds.width, height: 400))
        homeFeedTable.tableHeaderView = headerView
        
        configureNavBar()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        homeFeedTable.frame = view.bounds
    }
    
    private func configureNavBar(){
        var image = UIImage() //
        image = image?.withRenderingMode(.alwaysOriginal)
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: image, style: .done, target: self, action: nil)
    }

}

extension HomeViewController : UITableViewDelegate , UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 20
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CollectionViewTableViewCell.identifier, for: indexPath) as? CollectionViewTableViewCell else {
            return UITableViewCell()
        }
        cell.clipsToBounds = true
        cell.layer.cornerRadius = 10
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
}
