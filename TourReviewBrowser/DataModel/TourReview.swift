import Foundation

struct TourReview: Codable {
    
    fileprivate static let maxRating = Float(5.0)
    
    enum CodingKeys: String, CodingKey {
        case entityID                   = "review_id"
//        case rawDate                    = "date_unformatted"
        case formattedDate              = "date"
        case title
        case rawRating                  = "rating"
        case message
        case isForeignLanguage          = "foreignLanguage"
        case languageCode
        case isAnonymous
        case authorName                 = "author"
        case reviewerName
        case reviewerFirstInitial       = "firstInitial"
        case reviewerProfilePhotoURL    = "reviewerProfilePhoto"
        case reviewerCountryName        = "reviewerCountry"
    }
    
    let entityID: Int
    let title: String?
    let formattedDate: String
    private let rawRating: String
    let message: String
    let isForeignLanguage: Bool
    let languageCode: String
    let isAnonymous: Bool
    let authorName: String
    let reviewerName: String
    let reviewerFirstInitial: String
    let reviewerProfilePhotoURL: String?
    let reviewerCountryName: String
    
    //    let travelerTypeCode: String
    //    "traveler_type": "couple",
    
    var description: String {
        get {
            return "Review \(entityID):\n"
                + "\(title ?? "")\n"
                + "\(formattedDate)\n"
                + "\(rating)\n"
                + "\(message)"
        }
    }
    
    var rating: Float {
        get {
            return Float(rawRating)! / TourReview.maxRating
        }
    }
    
    var date: Date? {
        get {
            return nil
        }
    }
}
