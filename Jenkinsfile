node {

stage('Clone Repository')
{
checkout scm
}


stage('Show me the files')
{
sh "ls -l"
}


stage('Build Docker Image and push image to DockerHub')

{
sh "docker build -t cynexam:version1 ."
}
  
stage('Docker login to hub and push the image'){
sh "docker login -u 'cwairoto' -p 'Catalan4810!'"
sh "docker tag cynexam:version1 cwairoto/devops-exam:version1"
sh "docker push cwairoto/devops-exam:version1"
}

stage('Deploy (Docker run the image)')
{
sh "docker run -d -p 6655:80/tcp cynexam:version1"
}



stage('Apply changes to the environment')
{
sh "ls -l"
}




}
