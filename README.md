## CI/CD Pipeline

This project uses GitHub Actions for continuous integration and deployment. Below are the main steps in the pipeline:

- **Checkout Code**: Clones the repository.
- **Set Up Ruby**: Installs the specified Ruby version.
- **Install Dependencies**: Installs required gems using Bundler.
- **Database Setup**: Creates and loads the database schema.
- **Run Tests**: Executes the test suite using RSpec.