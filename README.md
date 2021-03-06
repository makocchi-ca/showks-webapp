# showKs-app
Japan Container Days - showKs participant's web application

## How to use

### Run as a container

```
$ docker build -t <your username>/showks-webapp:<your tag> .
$ docker run -p <desired port>:8080 -d <your username>/showks-webapp:<your tag>
```

### Run with Node.js runtime

```
$ cd src
$ npm install
$ npm start
```
Open http://\<your host\>:8080 with a web browser.


### HTTP Endpoints
| Endpoint | Description |
|----------|-------------|
| /          | The whiteboard Web UI        |
| /canvas    | Latest canvas image (PNG)    |
| /thumbnail | Canvas thumbnail (PNG)       |
| /author    | Author information in (JSON) |

#### Author information format
* To be updated

```
{
    name: "Name of the author",
    twitter: "@twitter account of the author"
}
```


### Socket.IO Namespaces
| Namespace | Description |
|----------|-------------|
| /notification | Notifies the client of 'refresh' message with value 1 when the drawing is updated and there was no message sent within last 5 seconds.  |


## License

[MIT](LICENSE)

This application is forked from [Socket.IO Collaborative Whiteboard example](https://github.com/socketio/socket.io/tree/master/examples/whiteboard).
