# Sprint boot lifecycle

```bash
./mvnw compile              # compile
./mvnw test                 # run unit tests
./mvnw package              # build the jar into target/
./mvnw clean package        # wipe target/ first
./mvnw spring-boot:run      # run the app
./mvnw dependency:tree      # see what's pulling in what
./mvnw -Dtest=MyTest test   # run one test class
```

validate + compile + test + package + verify + install. All commands loads everything before it.

## How to run

```bash
./mvnw spring-boot:run

./mvnw clean package
java -jar target/demo-0.0.1-SNAPSHOT.jar
```

Then poke it with curl
```bash
curl -X PUT localhost:8080/kv/name -d 'neska' -H 'Content-Type: text/plain'
curl localhost:8080/kv/name
```

## Running a cluster

```bash
java -jar kv-server.jar --server.port=8081 --raft.node-id=1 \
  --raft.grpc-port=9091 --raft.peers=2@localhost:9092,3@localhost:9093 \
  --raft.data-dir=./data/node1

java -jar kv-server.jar --server.port=8082 --raft.node-id=2 \
  --raft.grpc-port=9092 --raft.peers=1@localhost:9091,3@localhost:9093 \
  --raft.data-dir=./data/node2

java -jar kv-server.jar --server.port=8083 --raft.node-id=3 \
  --raft.grpc-port=9093 --raft.peers=1@localhost:9091,2@localhost:9092 \
  --raft.data-dir=./data/node3
```
