import Foundation

extension LengthFormatter {
    public static let imperialLengthFormatter: LengthFormatter = {
        let formatter = LengthFormatter()
        formatter.unitStyle = LengthFormatter.UnitStyle.short
        formatter.isForPersonHeightUse = true
        return formatter
    }()
}
