docker stop my-running-haproxy
docker rm my-running-haproxy
docker build -t my-haproxy .
docker run -it --rm --name haproxy-syntax-check my-haproxy haproxy -c -f /usr/local/etc/haproxy/haproxy.cfg
docker run -d --name my-running-haproxy --network gavnet -p 8404:8404 -p 82:82 my-haproxy
