node{
   
   stage("App Build started"){
      echo 'App build started..'
      #git credentialsId: 'Github-ID', url: 'https://github.com/pattaabhi/python-docker-app.git'
      git credentialsId: 'Github-ID', url: 'https://github.com/joeyghb/python-docker-app.git'
      }
   
   stage('Docker Build') {
     def app = docker.build "joeychu/flaskapp"
    }
   
   stage("Tag & Push image"){
      withDockerRegistry([credentialsId: 'DockerID', url: 'https://hub.docker.com']) {
          sh 'docker tag joeychu/flaskapp joeychu/flaskapp:001'
          sh 'docker push joeychu/flaskapp:001'
          sh 'docker push joeychu/flaskapp:latest'
      }
    }
   stage("App deployment started"){
     #sh 'oc login https://api.starter-us-west-2.openshift.com --token=xqb1I1kwQDVW5k5tB-zara52kAn3yyfOsu3_wVLG2is'
     sh 'oc login https://192.168.64.4:8443/ --token=C9ZzojzRwMVEEpElMf_1JPw1vhkhm_ojUH_VjOSWSe8'
     #sh 'oc new project rockstar'
     sh 'oc new-app joeychu/python-app:flask-1.0 --name python-app'
     sh 'oc expose svc python-app --name=python-app'
     sh 'oc status'
    }
   
    stage('App deployed to Docker') {
     echo 'App deployed to Hub..'
    }

   
























}
