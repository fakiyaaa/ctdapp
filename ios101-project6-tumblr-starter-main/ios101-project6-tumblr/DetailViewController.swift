//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Fakiya Imangaliyeva on 4/1/24.
//

import UIKit
import Nuke


class DetailViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var applyButton: UIButton!
    @IBOutlet weak var favoriteButton: UIButton!
    var internship: Internship?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        titleLabel.text = internship?.title
        textView.text = internship?.description
        if let imageUrl = internship?.imageUrl, let url = URL(string: imageUrl) {
            Nuke.loadImage(with: url, into: imageView)
        }
    }
    
    @IBAction func applyButtonTapped(_ sender: Any) {

    // Implement application logic or open a web link for application
    print("Apply button tapped for: \(internship?.title ?? "Unknown")")
        }
    }

