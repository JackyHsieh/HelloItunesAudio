//
//  PodcastsSearchController.swift
//  HelloItunesAudio
//
//  Created by Jacky Hsieh on 2018/11/24.
//  Copyright © 2018 Jacky Hsieh. All rights reserved.
//

import UIKit

class PodcastsSearchController: UITableViewController, UISearchBarDelegate {
    
    let podcasts:[Podcasts] = [
        Podcasts(name: "Lets Build that App",  artistName:"Jacky Hsieh"),
        Podcasts(name: "Lets Build that App",  artistName:"Jacky Hsieh")
        
    ]
    
    let cellId = "cellId"
    
    //    let impement a UISearchController
    let searchController = UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSearchBar()
        setupTableView()

    }
    
    //    MARK:- Setup work
    
    fileprivate func setupTableView() {
        //        1. register a cell for our tableview
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
    }
    
    fileprivate func setupSearchBar() {
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
        searchController.dimsBackgroundDuringPresentation = false
        searchController.searchBar.delegate = self
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
        //          later implement Alamofire to search iTunes API
        
    }
    
    //     MARK:- UITableView
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return podcasts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        
        let podcasts = self.podcasts[indexPath.row]
        cell.textLabel?.text  = "\(podcasts.name)\n\(podcasts.artistName)"
        cell.textLabel?.numberOfLines = -1
        cell.imageView?.image = UIImage(named: "appicon")
        return cell
    }
    
    
}
