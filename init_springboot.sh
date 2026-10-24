curl https://start.spring.io/starter.zip \
  -d type=maven-project -d language=java \
  -d javaVersion=21 \
  -d dependencies=web,data-jpa,h2,validation \
  -d name=$1 -d artifactId=$1 \
  -o $1.zip
unzip $1.zip -d $1 && cd $1
