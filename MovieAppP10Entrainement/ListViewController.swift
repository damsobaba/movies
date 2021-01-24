//
//  ViewController.swift
//  MovieAppP10Entrainement
//
//  Created by Adam Mabrouki on 21/11/2020.
//

import UIKit

class ListViewController: UIViewController {
    

    @IBOutlet weak var tableView: UITableView!
    
     
    private let movieService = MovieService()
    var items:[Item] = []
    var answers: String = ""
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        movieUpdate()
        tableView.reloadData()
        
    }
    
    private func movieUpdate () {
        self.movieService.getMovie { [unowned self] result in
            switch result {
            case .success(let movieDescription):
                DispatchQueue.main.async {
                    self.items = movieDescription.items
                    self.tableView.reloadData()
                }
            case .failure(let error):  DispatchQueue.main.async {
                self.presentAlert()
                print(error)
                }
            }
        }
    }
    
}



extension ListViewController: UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let  cell = tableView.dequeueReusableCell(withIdentifier: "PresentCell", for: indexPath) as? PresentTableViewCell else { return
            UITableViewCell() }
        var  movie = items[indexPath.row].title
        
        if movie == answers {
            movie = answers
        }
        
        
        let rate = items[indexPath.row].imDBRating
        cell.configure(title: movie, ranking: rate)
//        cell.textLabel?.text = movie
//        cell.detailTextLabel?.text = rate
        return cell
    }
}











