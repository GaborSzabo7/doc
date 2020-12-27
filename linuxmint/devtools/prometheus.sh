docker run \
	-d \
	--rm \
	--name prometheus \
	-p 9090:9090 \
	-v /home/gaszabo/data/prometheus/config.yml:/etc/prometheus/prometheus.yml \
	prom/prometheus --config.file=/etc/prometheus/prometheus.yml
