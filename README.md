# 🎨 Art@Home

> A Ruby on Rails e-commerce style project created during *Le Wagon* bootcamp.
> The goal was to build a platform where users can **browse and “rent” art pieces** (fictional concept).

## 🧠 About the Project

Art@Home was our **first group project** in the Le Wagon web development bootcamp. This application simulates a simple art rental platform where users can explore a collection of artworks and view details about each piece.

This project was generated using **Ruby on Rails** and follows standard Rails MVC architecture.

## 🚀 Features

* View a list of art pieces
* See detailed information for each artwork
* Uploaded artwork images (Cloudinary)
* Simple front-end interface with Rails views

_This app was designed for learning and demonstration purposes — it is not deployed to production

## 🛠️ Tech Stack

- Ruby on Rails (MVC framework)
- PostgreSQL (or SQLite for local development)
- Cloudinary for image hosting
- HTML & CSS with standard Rails templates
- Active Storage for image uploads (via Cloudinary)

## 💻 Local Demo

⚠️ This project is **no longer deployed**, so you must run it locally.

### 🔧 Requirements

Make sure you have the following installed:

- Ruby 3.4.7
- Rails
- Bundler
- Node.js / Yarn
- A Cloudinary account (for image uploads)

## 🛠️ Installation

1. **Clone the repository**
  ```sh
  git clone https://github.com/JadeCathleen/my-batch-cooker.git
  cd my-batch-cooker
  ```
2. **Install dependencies**
  ```sh
  bundle install
  yarn install
  ```
3. **Set up Cloudinary**
Create a `.env` file at the root of the project and add:
```env
CLOUDINARY_URL=cloudinary://YOUR_CLOUDINARY_KEY
```
(If you don’t have a key yet, you can create an account on https://cloudinary.com/)
4. **Set up the database**
  ```sh
  rails db:prepare db:seed
  ```
This will create the database (if missing) and run migrations.
5. **Start the server**
  ```sh
  rails server
  ```
6. **Open the app**
Visit http://localhost:3000 in your browser.

## 🤝 Contributing

Contributions are welcome!
1. Fork the repository
2. Create a feature branch (`git checkout -b feature/my-new-feature`)
3. Commit your changes (`git commit -m "Add my new feature"`)
4. Push to your branch (`git push origin feature/my-new-feature`)
5. Open a Pull Request

Please update tests as needed when adding or modifying functionality.

## License

Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.
