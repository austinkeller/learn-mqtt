A repo containing work for learning MQTT. Started from following along
in the course hosted at https://github.com/wduraes/Workshops/tree/master/MQTT%20Talk

### Start the mosquitto broker

```bash
./run-mosquitto.sh mosquitto
```

### Subscribe to the broker

Here's an example for subscribing to the topic `/dev/test` in debug mode (`-d`)

```bash
./run-mosquitto-pubsub.sh mosquitto_sub -d -t /dev/test
```

### Publish a message to the broker

This sends the message `helloworld` to the `/dev/test` topic. If the subscriber
is running then you should see the message show up there!

```bash
./run-mosquitto-pubsub.sh mosquitto_pub -d -t /dev/test -m "helloworld"
```

### Node-RED

Start node-red by running:

```bash
./run-node-red.sh
```

Then visit http://localhost:1880 to start using Node-RED

### Cleanup

When you're done, you can go ahead and use `Ctrl-C` to stop each docker
container. Then to get rid of the leftover volumes (where the config, data,
logs, etc. are stored for mosquitto and node-red), run

```bash
./cleanup.sh
```
