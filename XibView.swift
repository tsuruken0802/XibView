//
//  XibView.swift
//
//  Created by 鶴本 賢太朗 on 2020/06/22.
//  Copyright © 2020 鶴本 賢太朗. All rights reserved.
//

import UIKit

/// Xibで作成したViewをコードや他のXibから呼び出せるようにするView
class XibView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.loadView()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.loadView()
    }
}

private extension XibView {
    /// XibのViewを呼び出す
    func loadView() {
        let className = String(describing: type(of: self))
        let view = Bundle.main.loadNibNamed(className, owner: self, options: nil)?.first as! UIView
        view.frame = self.bounds
        self.addSubview(view)
    }
}
