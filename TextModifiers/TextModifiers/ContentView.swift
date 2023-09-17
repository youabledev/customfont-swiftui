//
//  ContentView.swift
//  TextModifiers
//
//  Created by zumin you on 2023/09/17.
//

import SwiftUI

/**
 family: Pretendard
 name: Pretendard-Light
 name: Pretendard-Medium
 name: Pretendard-ExtraBold
 */

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            Group {
                Text("상단 폰트입니다.")
                    .customFont(.header)
                    .padding(.top, 32)
                    .multilineTextAlignment(.center)
                
                Text("캡션은 주로 설명할 때 사용됩니다")
                    .customFont(.caption)
                    .multilineTextAlignment(.center)
                    .padding(.top, 5)
                
                Text("그거 아시나요? 여러줄로 표시되는 폰트를 그릴 때는 주의를 기울여야 합니다. 디자인과 동일하게 그리려면 어떻게 해야 할까요?  디자이너와 개발자 간에 텍스트 스타일을 정의하고 공유하는 과정이 필요합니다. ")
                    .multilineTextAlignment(.leading)
                    .customFont(.content)
                    .padding(.top, 40)
                
            }
            .frame(maxWidth: .infinity)
            
            Spacer()
        }
        .padding(.horizontal, 18)
        .onAppear {
//            getFontName()
        }
    }
    
    private func getFontName() {
        for family in UIFont.familyNames {

            let sName: String = family as String
            print("family: \(sName)")
                    
            for name in UIFont.fontNames(forFamilyName: sName) {
                print("name: \(name as String)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
