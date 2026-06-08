# FaceFacts

A SwiftUI-based iOS application that helps you remember and manage the people you meet. Never forget a face, name, or the context of where you met someone!

## 📱 Features

### Contact Management
- **Add & Edit Contacts** - Create detailed profiles for people you meet
- **Store Essential Information**
  - Name
  - Email address
  - Personal notes and details
  - Profile photos from your photo library

### Event Tracking
- **Organize by Events** - Link contacts to specific events or locations where you met them
- **Event Management** - Create and manage events with names and locations
- **Context Association** - Remember exactly where and when you met someone

### Search & Discovery
- **Search Contacts** - Quickly find people by name, email, or details
- **Smart Filtering** - Real-time search across all contact information
- **Sorting Options** - Sort contacts alphabetically (A-Z or Z-A)

### User Experience
- **Clean Interface** - Intuitive navigation and easy-to-use forms
- **Photo Picker Integration** - Easily add profile photos from your device
- **Persistent Storage** - All data is automatically saved using SwiftData

## 🛠 Tech Stack

- **Language**: Swift
- **Framework**: SwiftUI
- **Data Persistence**: SwiftData
- **Platform**: iOS 17+
- **Architecture**: MVVM with SwiftUI

## 📋 Project Structure

```
FaceFacts/
├── FaceFactsApp.swift          # Main app entry point
├── ContentView.swift            # Main navigation and contacts list
├── PeopleView.swift             # Contacts list view with search
├── EditPersonView.swift         # Add/edit contact details form
├── EditEventView.swift          # Add/edit event information
├── Person.swift                 # Person data model
├── Event.swift                  # Event data model
├── Previewer.swift              # Preview helpers for SwiftUI previews
└── Assets.xcassets/             # App icons and colors
```

## 🚀 Getting Started

### Prerequisites
- macOS 13.0+
- Xcode 15.0+
- iOS 17.0+ (deployment target)

### Installation

1. Clone the repository:
```bash
git clone https://github.com/yourusername/FaceFacts.git
cd FaceFacts
```

2. Open the project in Xcode:
```bash
open FaceFacts.xcodeproj
```

3. Build and run the app:
   - Select a simulator or physical device
   - Press `Cmd + R` or click the Run button

## 💾 Data Models

### Person
- `name` - Contact's full name
- `email` - Contact's email address
- `details` - Personal notes about the person
- `metAt` - Event where you met this person (optional)
- `photo` - Profile photo stored externally for efficiency

### Event
- `name` - Event name or title
- `location` - Event location
- `people` - Array of Person objects met at this event

## 🎯 Usage

### Adding a Contact
1. Tap the "+" button in the top toolbar
2. Fill in the contact's name, email, and details
3. (Optional) Select a photo from your photo library
4. (Optional) Link to an event where you met them
5. Changes are automatically saved

### Managing Events
1. Navigate to a contact's edit screen
2. Tap "Add a new event" or select an existing one
3. Edit the event name and location
4. Save changes automatically

### Searching Contacts
1. Use the search bar at the top of the contacts list
2. Search by name, email, or personal details
3. Results update in real-time as you type

### Sorting Contacts
1. Tap the "Sort" menu in the toolbar
2. Choose between:
   - Name (A-Z)
   - Name (Z-A)

## 📱 Device Compatibility

- iPhone 15 and later
- iPad (with appropriate screen size adaptations)
- iOS 17.0 and later

## 🔐 Privacy & Storage

- All data is stored locally on your device using SwiftData
- No data is transmitted to external servers
- Photos are stored efficiently with external storage optimization
- Full control over your contact information

## 🐛 Known Limitations

- Photo storage optimization requires adequate device storage
- Event association is one-to-one per contact (a person is linked to one event)
- No cloud synchronization in current version

## 🔮 Future Enhancements

- [ ] Multiple event associations per contact
- [ ] Contact groups and categories
- [ ] Photo gallery for events
- [ ] Export/import contacts
- [ ] Cloud synchronization
- [ ] Integration with device contacts
- [ ] Contact reminders and follow-ups
- [ ] Dark mode optimization

## 📝 Code Quality

- Built following SwiftUI best practices
- Clean separation of concerns (Models, Views, Business Logic)
- Comprehensive use of SwiftData for data persistence
- Preview support for all views for rapid development

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 👨‍💻 Author

Created by Vaibhav Upadhyay

## 🙏 Acknowledgments

- Built with SwiftUI and SwiftData
- Inspired by the need to remember people we meet
- Thanks to the Swift community for excellent documentation

---

**Remember: FaceFacts helps you never forget a face again! 👤✨**
