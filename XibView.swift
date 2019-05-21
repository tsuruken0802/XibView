//
//  XibView.swift
//
//
//  Created by 鶴本賢太朗 on 2018/05/22.
//  Copyright © 2018年 Kentarou. All rights reserved.
//

import UIKit

class XibView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.loadView()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.loadView()
    }
    private func loadView() {
        let className: String = String(describing: type(of: self))
        let view: UIView = Bundle.main.loadNibNamed(className, owner: self, options: nil)?.first as! UIView
        view.backgroundColor = .clear
        view.frame = self.bounds
        self.addSubview(view)
    }
}
