//
//  AWeleczkaSwiftHelperCollection - https://github.com/AWeleczka/AWeleczkaSwiftHelperCollection
//  My "private" collection of helper-snippets I use way too often in projects
//
//  Readme:        https://github.com/AWeleczka/AWeleczkaSwiftHelperCollection/blob/master/README.md
//  License (MIT): https://github.com/AWeleczka/AWeleczkaSwiftHelperCollection/blob/master/LICENSE
//
//  Copyright (c) 2019 Alexander Weleczka - https://AWeleczka.de/
//

import UIKit

@IBDesignable
public class RoundImageView: UIView {
  private var imageView = UIImageView()

  @IBInspectable
  public var image: UIImage? {
    didSet {
      self.imageView.image = self.image
    }
  }

  @IBInspectable
  public var imageOffset: CGFloat = 0

  @IBInspectable
  public var borderWidth: CGFloat = 0 {
    didSet {
      layer.borderWidth = borderWidth
    }
  }

  @IBInspectable
  public var borderColor: UIColor = UIColor.black {
    didSet {
      layer.borderColor = borderColor.cgColor
    }
  }

  override func layoutSubviews() {
    super.layoutSubviews()

    DispatchQueue.main.async {
      self.layer.cornerRadius = self.frame.height / 2
      self.clipsToBounds = true

      if self.subviews.index(of: self.imageView) == nil {
        self.imageView.clipsToBounds = true
        self.imageView.contentMode = UIViewContentMode.scaleAspectFill
        self.imageView.frame = CGRect(
          x: self.imageOffset,
          y: self.imageOffset,
          width: self.frame.width - self.imageOffset * 2,
          height: self.frame.height - self.imageOffset * 2)
        self.addSubview(self.imageView)
      }
    }
  }
}
