//
//  CustomFontStyle.swift
//  TextModifiers
//
//  Created by zumin you on 2023/09/18.
//

import Foundation
import SwiftUI

enum CustomFontName: String {
    case light = "Pretendard-Light"
    case medium = "Pretendard-Medium"
    case extraBold = "Pretendard-ExtraBold"
}

enum CustomFontStyle {
    case header
    case caption
    case content
}

struct CustomFontViewModifier: ViewModifier {
    var style: CustomFontStyle
    
    @ViewBuilder // 여러 viewModifier를 위해서
    func body(content: Content) -> some View {
        switch style {
        case .content:
            content
                .font(.custom(CustomFontName.medium.rawValue, size: 16))
                .lineSpacing(25 - 16) // 행간 지정 : 피그마의 행간은 폰트의 크기까지 더해서 계산하고 SwiftUI는 행과 행 사이의 공간을 의미함
                .kerning(16 * 0.05)
        case .caption:
            content
                .font(.custom(CustomFontName.light.rawValue, size: 14))
                .lineSpacing(16)
                .kerning(0)
        case .header:
            content
                .font(.custom(CustomFontName.extraBold.rawValue, size: 36))
                .kerning(36 * 0.07)
        }
    }
}

extension View {
    func customFont(_ style: CustomFontStyle) -> some View {
        self.modifier(CustomFontViewModifier(style: style))
    }
}
