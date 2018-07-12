//
//  ViewController.swift
//  swift-2048
//
//  Created by iwen
//

import UIKit

class ViewController: UIViewController {
                            
  override func viewDidLoad() {
    super.viewDidLoad()
    
    GifView.loadGif(name:"start")
  }

    @IBOutlet weak var GifView: UIImageView!
    @IBAction func startGameButtonTapped(_ sender : UIButton) {
    let game = NumberTileGameViewController(dimension: 4, threshold: 2048)
    self.present(game, animated: true, completion: nil)
  }
}

