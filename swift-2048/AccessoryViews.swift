//
//  AccessoryViews.swift
//  swift-2048
//
//  Created by iwen
//

import UIKit

//protocol的作用是方便有些class中要用score
protocol ScoreViewProtocol {
  func scoreChanged(to s: Int)
  func getScore()->Int
}

/// 顯示玩家分數的view
class ScoreView : UIView, ScoreViewProtocol {
  var score : Int = 0 {
    didSet {
      label.text = "SCORE: \(score)"
    }
  }

  let defaultFrame = CGRect(x: 0, y: 0, width: 140, height: 40)
  var label: UILabel

  init(backgroundColor bgcolor: UIColor, textColor tcolor: UIColor, font: UIFont, radius r: CGFloat) {
    label = UILabel(frame: defaultFrame)
    label.textAlignment = NSTextAlignment.center
    super.init(frame: defaultFrame)
    backgroundColor = bgcolor
    label.textColor = tcolor
    label.font = font
    layer.cornerRadius = r
    self.addSubview(label)
  }

  required init(coder aDecoder: NSCoder) {
    fatalError("NSCoding not supported")
  }

  func scoreChanged(to s: Int)  {
    score = s
  }
    
    func getScore()->Int  {
        //print(score)
        return score
    }
}

// A simple view that displays several buttons for controlling the app
//class ControlView {
  //let defaultFrame = CGRect(x: 0, y: 0, width: 140, height: 40)
  // TODO: Implement me
//}
