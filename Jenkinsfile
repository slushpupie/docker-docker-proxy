
node("docker") {
  checkout scm
  stage 'build'
  image = docker.build('localhost:6000/slushpupie/docker-proxy')

  if(env.GIT_BRANCH == 'origin/master'){
    stage 'publish'
    image.push()
  }
}

