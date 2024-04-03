//
//  Task.swift
//  MySchedule
//
//  Created by YOSHiTAK on 2024/03/30.
//

import Foundation
import SwiftData

@Model
final class Task {
    // タイトル
    // メモ
    // 開始日時
    // 終了日時
    // 終日フラグ
    // 通知
    var timestamp: Date
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
