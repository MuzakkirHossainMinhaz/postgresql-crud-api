# postgresql-crud-api

This is a simple CRUD (Create, Read, Update, Delete) API built using Node.js, Express, and PostgreSQL. It allows you to manage user data with basic functionalities. The user data is stored in a PostgreSQL database.

## Table of Contents

-   [Features](#features)
-   [Prerequisites](#prerequisites)
-   [Getting Started](#getting-started)
    -   [Installation](#installation)
    -   [Database Setup](#database-setup)
    -   [Running the Server](#running-the-server)
-   [API Endpoints](#api-endpoints)
-   [Usage](#usage)
-   [Contributing](#contributing)
-   [License](#license)

## Features

This CRUD API provides the following features:

-   Create a user with a POST request.
-   Retrieve a list of all users with a GET request.
-   Retrieve a specific user by user ID with a GET request.
-   Update a specific user's data by user ID with a PUT request.
-   Delete a specific user by user ID with a DELETE request.

## Prerequisites

Before you start, make sure you have the following installed on your system:

-   Node.js
-   PostgreSQL

## Getting Started

### Installation

1. Clone this repository to your local machine:

    ```bash
    git clone https://github.com/MuzakkirHossainMinhaz/postgresql-crud-api.git
    ```

2. Navigate to the project directory:

    ```bash
    cd postgresql-crud-api
    ```

3. Install the project dependencies:

    ```bash
    npm install
    ```

### Database Setup

1. Ensure you have PostgreSQL installed and running.

2. Create a PostgreSQL database and table for the project. You can use a tool like `psql` or a graphical interface like pgAdmin.

3. Update the database configuration in the `config.js` file to connect to your PostgreSQL database:

    ```javascript
        host: 'your-database-host',
        port: 'your-database-port',
        user: 'your-database-username',
        password: 'your-database-password',
        database: 'your-database-name'
    ```

### Running the Server

Start the Express server:

```bash
npm start
```

Your server should now be running on http://localhost:5000.

## API Endpoints

The following API endpoints are available:

-   **Create User**: `POST /user`

    -   Use this endpoint to create a new user by sending a JSON payload containing user details (name, email, and phone).

-   **Get All Users**: `GET /users`

    -   Retrieve a list of all users.

-   **Get User by ID**: `GET /user/:id`

    -   Retrieve a specific user by providing the user's ID in the URL.

-   **Update User by ID**: `PUT /user/:id`

    -   Update the data of a specific user by providing the user's ID in the URL and sending a JSON payload with the updated information.

-   **Delete User by ID**: `DELETE /user/:id`
    -   Delete a specific user by providing the user's ID in the URL.

## Usage

You can use tools like [Postman](https://www.postman.com/) or `curl` to interact with the API endpoints. Here's an example of how to make API requests:

-   Creating a user:

    ```http
    POST http://localhost:3000/user
    Content-Type: application/json

    {
      "name": "John Doe",
      "email": "johndoe@example.com",
      "phone": "123-456-7890"
    }
    ```

-   Getting all users:

    ```http
    GET http://localhost:3000/users
    ```

-   Getting a specific user by ID:

    ```http
    GET http://localhost:3000/user/1
    ```

-   Updating a specific user by ID:

    ```http
    PUT http://localhost:3000/user/1
    Content-Type: application/json

    {
      "name": "Updated Name",
      "email": "updated@example.com",
      "phone": "987-654-3210"
    }
    ```

-   Deleting a specific user by ID:

    ```http
    DELETE http://localhost:3000/user/1
    ```

## Contributing

This is my personal project for practicing PostgreSQL with Node.js and Express, and I do not expect any contributions. However, if you'd like to contribute to this project, please follow the standard GitHub workflow:

1. Fork the project.
2. Create a new branch for your feature or bug fix.
3. Make your changes and commit them with clear and concise messages.
4. Push your changes to your fork.
5. Create a pull request to the original repository.

## License

This project is licensed under the MIT License. See the [LICENSE](/LICENSE.md) file for details.
