//
//  MovieGridDetailsViewController.swift
//  Flix2
//
//  Created by Yuxin Chen on 9/23/22.
//

import UIKit

import AlamofireImage

class MovieGridDetailsViewController: UIViewController {


    @IBOutlet weak var backdropView: UIImageView!

    @IBOutlet weak var posterView: UIImageView!

    @IBOutlet weak var titleLabel: UILabel!

    @IBOutlet weak var synopsisLabel: UILabel!
    
    var movie: [String:Any]!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        print(movie["title"]!)
        
        titleLabel.text = movie["title"] as?String
        synopsisLabel.text = movie["overview"] as?String
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        
        let posterPAth = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPAth)
        posterView.af_setImage(withURL: posterUrl!)
        
        let backdropPAth = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPAth)
        backdropView.af_setImage(withURL: backdropUrl!)
        
        
        
    }
        
}
