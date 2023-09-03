//
//  NJEmojiPicker.swift
//
//  Created by najin shin
//  contact : skwls2087@gmail.com
//

import SwiftUI

/**
 Create Emoji Picker!
 
 이모지 피커를 이용하여 쉽게 이모지를 입력할 수 있어요.
 
 You can easily enter an emoji using the emoji picker.
 - warning: Available only in ios version 13.0 and later.
 ___
     NJEmojiPicker($emoji,
                   language: [.ko | .en],
                   column: Int,
                   multipleSelect: Bool,
                   showsIndicators: Bool,
                   accentColor: Color,
                   textColor: Color)
 
 ___
  >매개변수와 반환 값 등도 적절히 표기해줄 수 있다.
  - parameters:
- language: Language (English or Korean)
- column: Number of emojis to be seen per line
- multipleSelect: Whether to allow multiple selections
- showsIndicators: Scroll bar visible or not
- accentColor: Background color to highlight when selecting
- textColor: Text color that matches the background you highlighted
*/

public struct NJEmojiPicker: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @Binding var selectedEmojiList: [String]
    
    var language: NJLanguage = .ko
    var column: Int = 5
    var multipleSelect: Bool = true
    var showsIndicators: Bool = false
    var accentColor: Color = .yellow
    var textColor: Color = .black
    var emojiList = NJEmoji.list
    
    public init(_ selectedEmojiList: Binding<[String]>) {
        emojiList.removeFirst()
        self._selectedEmojiList = selectedEmojiList
    }
    
    public init(_ selectedEmojiList: Binding<[String]>, language: NJLanguage = .ko, column: Int = 5, multipleSelect: Bool = false, showsIndicators: Bool = true, accentColor: Color = .yellow, textColor: Color = .black, suggestEmojis: String = "") {
        self._selectedEmojiList = selectedEmojiList
        self.language = language
        self.column = column
        self.multipleSelect = multipleSelect
        self.showsIndicators = showsIndicators
        self.accentColor = accentColor
        self.textColor = textColor
        
        // 추천 이모지 넣는 경우
        if suggestEmojis == "" {
            emojiList.removeFirst()
        } else {
            emojiList[0].1 = Array(suggestEmojis).map { String($0) }
        }
    }
    
    public var body: some View {
        VStack(spacing: 20) {
            
            // Title 영역
            HStack {
                Spacer().frame(width: 30)
                Text(language == .ko ? "이모지 선택" : "Emoji Picker")
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .center)
                Image(systemName: "xmark")
                    .frame(width: 30)
                    .foregroundColor(.black)
                    .onTapGesture {
                        presentationMode.wrappedValue.dismiss()
                    }
            }
            
            GeometryReader { geo in
                let width = (geo.size.width / CGFloat(column)) - 20 // 이모지 너비

                ScrollView(.vertical, showsIndicators: showsIndicators) {
                    ForEach(emojiList, id:\.self.0.0) { type in
                        
                        // 카테고리명
                        Text(language == .ko ? type.0.0 : type.0.1)
                            .font(.system(size: 15))
                            .bold()
                            .padding(EdgeInsets(top: 20, leading: 10, bottom: 10, trailing: 10))
                            .frame(maxWidth: .infinity, alignment: .leading)

                        let cnt = type.1.count // 이모지 개수
                        let rows = (cnt / column) + ((cnt % column) == 0 ? 0 : 1) // 전체 행 개수

                        // Emoji List
                        if #available(iOS 14.0, *) {
                            LazyVStack {
                                emojiView(rows: rows, cnt: cnt, type: type, width: width)
                            }
                        } else {
                            VStack {
                                emojiView(rows: rows, cnt: cnt, type: type, width: width)
                            }
                        }
                    }
                }
            }
            
            if multipleSelect && !selectedEmojiList.isEmpty {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text(language == .ko ? "완료" : "Complete")
                        .frame(maxWidth: .infinity, maxHeight: 50)
                        .background(accentColor)
                        .cornerRadius(10)
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(.white, lineWidth: 2))
                        .foregroundColor(textColor)
                }
            }
        }
        .padding(20)
        .onAppear {
            selectedEmojiList = []
        }
    }
    
    //MARK: Emoji Item View
    
    func emojiView(rows: Int, cnt: Int, type: ((String, String), [String]), width: CGFloat) -> some View {
        ForEach(0..<rows, id: \.self) { row in
            HStack {
                ForEach(0..<column, id: \.self) { idx in
                    let item = (column * row) + idx
                    
                    if idx != 0 {
                        Spacer()
                    }
                    
                    // 이모지 박스
                    if cnt > item {
                        let emoji = type.1[item]
                        let isSelected = selectedEmojiList.contains(emoji)
                        
                        ZStack {
                            
                            // 이모지 순서
                            if let index = selectedEmojiList.firstIndex(of: emoji), multipleSelect {
                                Text("\(index + 1)")
                                    .font(.system(size: 12))
                                    .frame(width: 16, height: 16)
                                    .background(accentColor)
                                    .cornerRadius(8)
                                    .padding(EdgeInsets(top: 0, leading: width - 10, bottom: width - 10, trailing: 0))
                                    .zIndex(2)
                                    .foregroundColor(textColor)
                            }
                            
                            Button {
                                // 이모지 클릭 이벤트
                                if multipleSelect {
                                    if let index = selectedEmojiList.firstIndex(of: emoji) {
                                        selectedEmojiList.remove(at: index)
                                    } else {
                                        selectedEmojiList.append(emoji)
                                    }
                                } else {
                                    selectedEmojiList.append(emoji)
                                    presentationMode.wrappedValue.dismiss()
                                }
                            } label: {
                                Text(emoji)
                            }
                            .frame(width: width, height: width)
                            .background(isSelected && multipleSelect ? .white : Color(red: 245 / 255, green: 245 / 255, blue: 245 / 255))
                            .cornerRadius(15)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(accentColor, lineWidth: isSelected && multipleSelect ? 2 : 0)
                            )
                        }
                        .frame(width: width + 7, height: width + 7)
                    } else {
                        Text("")
                            .frame(width: width, height: width)
                    }
                }
            }
            .frame(maxWidth:. infinity)
        }
    }
}
