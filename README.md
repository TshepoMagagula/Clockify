# Clockify Web Application

## Project Overview
Clockify is a web-based time-tracking application developed using ASP.NET Web Forms. The project includes various pages for authentication, registration, and user interaction. It also integrates with a SQL Server database for data storage and management.

## Features
- 🔑 User authentication (Login/Register)
- ⏳ Home page with time-tracking functionality
- ℹ️ About and Contact pages
- 💻 Bootstrap-based responsive UI
- ⚛️ ASP.NET Web Forms framework
- 📂 SQL Server database integration
- 🌐 Friendly URLs for better navigation

## Project Structure
```
tshepomagagula-clockify/
├── Clockify.sln               # Solution file 
├── ClockifyDB.bacpac          # Database backup file 
├── Clockify/                  # Main project directory 
│   ├── About.aspx             # ℹ️ About page
│   ├── AuthPg.aspx            # 🔐 Authentication page
│   ├── RegPg.aspx             # 📝 Registration page
│   ├── Default.aspx           # 🏠 Default landing page
│   ├── Home.aspx              # ⏳ Home page
│   ├── Contact.aspx           # 📧 Contact page
│   ├── Site.Master            # 🎨 Master page for consistent layout
│   ├── Web.config             # ⚙️ Configuration file
│   ├── App_Start/             # 🚀 Configuration startup files
│   ├── bin/                   # 🏗️ Compiled binaries
│   ├── Content/               # 🎨 CSS and other static assets
│   ├── Scripts/               # 📜 JavaScript files
│   ├── Properties/            # 🔍 Assembly information
│   ├── obj/                   # 🛠️ Build files
└── packages/                  # 📦 NuGet package dependencies
```

## Installation & Setup
### Prerequisites
- 🖥️ Visual Studio (2019 or later)
- 🌐 .NET Framework 4.7.2
- 🗄️ SQL Server (LocalDB or SQL Server Express)

### Steps to Run the Project
1. 📥 Clone the repository:
   ```sh
   git clone https://github.com/tshepomagagula/tshepomagagula-clockify.git
   ```
2. 📂 Open `Clockify.sln` in Visual Studio.
3. 📦 Restore NuGet packages by running:
   ```sh
   nuget restore Clockify.sln
   ```
4. 🗃️ Import the database:
   - Open SQL Server Management Studio (SSMS)
   - Restore `ClockifyDB.bacpac` to your local SQL Server instance.
5. 🔧 Update `Web.config` with your database connection string.
6. ▶️ Run the application in Visual Studio (`F5`).

## Technologies Used
- ⚙️ ASP.NET Web Forms
- 💻 C#
- 🗃️ SQL Server
- 🎨 Bootstrap 5
- 📜 jQuery
- 🔄 Newtonsoft.Json

## Contributing
🤝 Contributions are welcome! Feel free to fork the repository and submit a pull request.

## License
📜 This project is licensed under the MIT License.

## Contact
📩 For any inquiries, contact @Tshepo_Magagula on social media or visit [Portfolio](https://tshepomagagula.github.io/myPortfolio/).

