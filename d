

pipeline {
    agent any

    stages {
        stage('Build Assets') {
            agent any
            steps {
                echo 'Building Assets...'
            }
        }
        stage('Test') {
            agent any
            steps {
                echo 'Testing stuff...'
            }
        }
    }
}




integrate kub and doc
    1 install doc-enable kuber-verify insta-config kubectl-create kub dep file-apply dep-expose dep-get servicesurl-verify dep
apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx-deployment
spec:
  replicas: 1
  selector:
    matchLabels:
      app: nginx
    template:
  metadata:
      labels:
        app: nginx
    spec:
      containers:
      - name: nginx
        image: nginx:latest
        ports:
        - containerPort: 80
