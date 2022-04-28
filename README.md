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

## Creating EKS cluster on AWS

- Create cluster on AWS, adjust ```cluster.yml``` as required for vpc/subnets and nodes etc.
- Run this command to stand cluster up ```eksctl create cluster -f cluster.yml```


- ** If you want to destroy cluster** run ```eksctl delete cluster -f cluster.yml```