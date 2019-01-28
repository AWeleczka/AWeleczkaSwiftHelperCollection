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

public extension UIColor {
  /// Evaluate the brightness of a UIColor.
  /// Uses include for example desicions on contrast-colors.
  /// Calculation ignores alpha-component of the UIColor.
  public var isDarkColor: Bool {
    var redComponent = CGFloat(0)
    var greenComponent = CGFloat(0)
    var blueComponent = CGFloat(0)
    var alphaComponent = CGFloat(0)

    self.getRed(
      &redComponent,
      green: &greenComponent,
      blue: &blueComponent,
      alpha: &alphaComponent)

    let brightness = (0.2126 * redComponent) +
      (0.7152 * greenComponent) +
      (0.0722 * blueComponent)

    return (brightness < 0.50)
  }
}
