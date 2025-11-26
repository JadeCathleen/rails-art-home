# Art@Home

**Art@Home** was our first group project as Le Wagon students. The goal was to create a fake e-commerce website. We chose to make a website on which you can rent art pieces.

## Installation
*Warning: this project is no longer deployed, so you'll need to launch it locally.*

Add your Cloudinary key on your .env file, otherwise the pictures would be broken in your local server:

#### `.env`
```bash
CLOUDINARY_URL=cloudinary://YOUR_KEY_HERE
```

Then install the required gem versions with below command line:
```bash
bundle install
```

Then create the database seed with below command line:
```bash
rails db:seed
```

Then you can launch rails server with below command line:
```bash
rails server
```

The website is accessible at this url: http://localhost:3000/

## License

Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.
