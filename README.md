# Simple HTTP based web app.

python virtual env setup:

    ``` pipenv shell ```

Get dependencies:

    ``` pipenv install --deploy ```

Run:

    ``` FLASK_APP=app.py flask run

## Docker container

    ```docker run -d -p 5000:5000 flask-app```

- To check container is running ```docker ps```