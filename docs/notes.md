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


