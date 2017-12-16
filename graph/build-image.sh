curl https://raw.githubusercontent.com/alizeefan/runtime/master/graph/Dockerfile
sudo docker build -t neo4j-apoc .
sudo mkdir -p /neo4j/data
sudo chmod 777 /neo4j/data
sudo docker run -dit --restart unless-stopped --publish=7474:7474 --publish=7687:7687 --volume=/neo4j/data:/data neo4j-apoc
