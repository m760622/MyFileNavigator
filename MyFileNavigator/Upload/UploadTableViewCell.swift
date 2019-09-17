//
//  UploadTableViewCell.swift
//  MyFileNavigator
//
//  Created by Vladislav Petrov on 27/08/2019.
//  Copyright © 2019 Vladislav Petrov. All rights reserved.
//

import UIKit

class UploadTableViewCell: UITableViewCell {
    static let identifier = "UploadTableViewCellIdentifier"
    
    @IBOutlet weak var uploadLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var document: Document!

    func configure(with document: Document) {
        self.document = document
        
        uploadLabel.text = document.name
        progressBar.observedProgress = document.progress
        
        switch document.state {
        case .downloadable, .downloaded:
            progressBar.isHidden = true
        case .downloading:
            progressBar.isHidden = false
        }
    }
}
