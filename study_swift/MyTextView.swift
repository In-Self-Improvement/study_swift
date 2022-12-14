//
//  MyTextView.swift
//  study_swift
//
//  Created by bong on 2022/12/15.
//

import SwiftUI

struct MyTextView: View {
    @State
    private var index: Int = 0
    private let backgroundColors = [
        Color.red,
        Color.green,
        Color.blue,
        Color.orange,
        Color.yellow,
    ]
    var body: some View {
        VStack{
            Spacer()
            Text("배경 아이템 인덱스 \(self.index + 1)")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .frame(minWidth: 0, maxWidth: .infinity)
            Spacer()
        }.background(backgroundColors[index])
        //구버전은 위아래 여백 있는듯?
        //.edgeIgnoringSafeArea(.all)
            .onTapGesture {
                self.index == self.backgroundColors.count - 1 ? (self.index = 0) :
                (self.index += 1)
                 
            }
    }
}

struct MyTextView_Previews: PreviewProvider{
    static var previews: some View {
        MyTextView()
    }
}
