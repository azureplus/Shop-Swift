//
//  BasicConstants.swift
//  BasicFramework
//
//  Created by kk on 2020/1/11.
//  Copyright © 2020 kk. All rights reserved.
//

import UIKit

func countcoordinatesX(designWidth: CGFloat) -> CGFloat {
    if (designWidth == 0) {
        return 0;
    }
    return  (designWidth / 750.0) * (UIScreen.main.bounds.size.width);
}

func countcoordinatesY(designHeight: CGFloat) -> CGFloat {
    if (designHeight == 0) {
        return 0;
    }
    return  (designHeight / 1334.0) * (UIScreen.main.bounds.size.height);
}
