//
//  BasicView.swift
//  TextModifiers
//
//  Created by zumin you on 2023/09/17.
//

import SwiftUI

struct BasicView: View {
    let customFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter
    }()
    
    var today = Date()
    
    var body: some View {
        VStack {
            Text("""
대통령은 법률이 정하는 바에 의하여 사면·감형 또는 복권을 명할 수 있다. 국가는 과학기술의 혁신과 정보 및 인력의 개발을 통하여 국민경제의 발전에 노력하여야 한다.

모든 국민은 법 앞에 평등하다. 누구든지 성별·종교 또는 사회적 신분에 의하여 정치적·경제적·사회적·문화적 생활의 모든 영역에 있어서 차별을 받지 아니한다.

법관이 중대한 심신상의 장해로 직무를 수행할 수 없을 때에는 법률이 정하는 바에 의하여 퇴직하게 할 수 있다. 이 헌법은 1988년 2월 25일부터 시행한다. 다만, 이 헌법을 시행하기 위하여 필요한 법률의 제정·개정과 이 헌법에 의한 대통령 및 국회의원의 선거 기타 이 헌법시행에 관한 준비는 이 헌법시행 전에 할 수 있다.

헌법재판소의 장은 국회의 동의를 얻어 재판관중에서 대통령이 임명한다. 헌법재판소 재판관의 임기는 6년으로 하며, 법률이 정하는 바에 의하여 연임할 수 있다.

형사피의자 또는 형사피고인으로서 구금되었던 자가 법률이 정하는 불기소처분을 받거나 무죄판결을 받은 때에는 법률이 정하는 바에 의하여 국가에 정당한 보상을 청구할 수 있다.

국방상 또는 국민경제상 긴절한 필요로 인하여 법률이 정하는 경우를 제외하고는, 사영기업을 국유 또는 공유로 이전하거나 그 경영을 통제 또는 관리할 수 없다.

국가는 모성의 보호를 위하여 노력하여야 한다. 국가는 농업 및 어업을 보호·육성하기 위하여 농·어촌종합개발과 그 지원등 필요한 계획을 수립·시행하여야 한다.

사회적 특수계급의 제도는 인정되지 아니하며, 어떠한 형태로도 이를 창설할 수 없다. 공공필요에 의한 재산권의 수용·사용 또는 제한 및 그에 대한 보상은 법률로써 하되, 정당한 보상을 지급하여야 한다.

모든 국민은 법률이 정하는 바에 의하여 국방의 의무를 진다. 국무회의는 대통령·국무총리와 15인 이상 30인 이하의 국무위원으로 구성한다. 탄핵결정은 공직으로부터 파면함에 그친다. 그러나, 이에 의하여 민사상이나 형사상의 책임이 면제되지는 아니한다.

국가는 균형있는 국민경제의 성장 및 안정과 적정한 소득의 분배를 유지하고, 시장의 지배와 경제력의 남용을 방지하며, 경제주체간의 조화를 통한 경제의 민주화를 위하여 경제에 관한 규제와 조정을 할 수 있다.
""")
            .font(.system(.caption, design: .rounded)) // 폰트를 지정
            .fontWeight(.medium) // 폰트 굵기 지정
            .multilineTextAlignment(.leading) // 폰트 정렬
            .lineLimit(10) // UIKit과 달리 SwiftUI에서는 nil이 제한 없음, 0이 한줄로 표현됨
            .lineSpacing(10) // 줄과 줄 사이 간격
            .truncationMode(.middle) // 말줄임표 표시 부분 지정 (처음, 중간, 끝)
            .background(.gray)
            .foregroundColor(.white)
            .padding(.bottom, 400) // SwiftUI에서 text를 표시할 공간이 충분하지 않고, lineLimit이 nil로 설정되어 있는 경우 말줄임표가 아닌 내용이 잘려버리게 됨
            .tracking(2) // 글자와 글자 사이 간격
            
            Text(Date(), formatter: customFormatter) // formatter 파라미터를 사용해서 날짜를 포멧할 수 있음
            Text("\(Date(), formatter: customFormatter)") // 이것도 위와 동일한 결과 출력됨
            
        }
    }
}

struct BasicView_Previews: PreviewProvider {
    static var previews: some View {
        BasicView()
    }
}
