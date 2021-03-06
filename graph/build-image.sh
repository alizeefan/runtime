sudo docker build -t neo4j-apoc https://raw.githubusercontent.com/alizeefan/runtime/master/graph/Dockerfile
sudo mkdir -p /neo4j/data /neo4j/logs /neo4j/import
sudo chmod 777 /neo4j/data /neo4j/logs /neo4j/import
sudo docker run -dit --restart unless-stopped \
  --publish=7474:7474 --publish=7687:7687 \
   --name=neo4j \
   --volume=/neo4j/data:/var/lib/neo4j/data \
   --volume=/neo4j/logs:/var/lib/neo4j/logs \
   --volume=/neo4j/import:/var/lib/neo4j/import \
   --env NEO4J_AUTH=none \
   neo4j-apoc
