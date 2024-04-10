//
//  HomeViewController.swift
//  DemoApp
//
//  Created by Rajul Arora on 10/26/17.
//  Copyright © 2017 Twitter. All rights reserved.
//

import UIKit

@objc protocol HomeViewControllerDelegate {
    @objc func homeViewControllerDidTapProfileButton(viewController: HomeViewController)
}

class HomeViewController: DemoCollectionViewController {

    // MARK: - Public Variables

    weak var delegate: HomeViewControllerDelegate?

    // MARK: - Init

    required init() {
        super.init(demos: [
            ComplexTweetDemo(),
            TimelineDemo(),
            TweetViewDemo()
        ])
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - UIViewController

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        view.backgroundColor = .groupTableViewBackground
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "circle-user-tick-7"), style: .plain, target: self, action: #selector(didTapProfile))
    }

    // MARK: - Actions

    @objc func didTapProfile() {
        TWTRTwitter.sharedInstance().logIn(with: self) { session, error in
            if error == nil {
                self.shareContentToTwitter(image: UIImage(named: "circle-user-tick-7")!, viewcontroller: self)
            }
        }
        //delegate?.homeViewControllerDidTapProfileButton(viewController: self)
    }
    
    func shareContentToTwitter(image:UIImage, viewcontroller:UIViewController) {
        let composer = TWTRComposer()
        composer.setText("women doushi hao haizi")
        //composer.setImage(image)
        
        composer.show(from: viewcontroller) {
            [weak self] (result) in
            guard let self = self else {
                return
            }
            
            print("twitter result:\(result)")
        }
    }
}
