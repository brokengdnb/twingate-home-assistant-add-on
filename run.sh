#!/usr/bin/with-contenv bashio
echo "running docker Twingate Connector now..."
sh /get-docker.sh
docker run -d --env TWINGATE_NETWORK="debase" --env TWINGATE_ACCESS_TOKEN="eyJhbGciOiJFUzI1NiIsImtpZCI6Inh4UTRaejZ0eENETlAtN2QxY0MybGlFdGJkdXp6Sm9mQTRTT0sxV3dNRFEiLCJ0eXAiOiJEQVQifQ.eyJudCI6IkFOIiwiYWlkIjoiMzIxOTgzIiwiZGlkIjoiMTU4MDE5MCIsImp0aSI6Ijk0MDYyMTVmLTdlZDktNGIyNC04ZDJkLWYwZjFhMWJmZDBiNCIsImlzcyI6InR3aW5nYXRlIiwiYXVkIjoiZGViYXNlIiwiZXhwIjoxNzIzMTExMDQxLCJpYXQiOjE3MjMxMDc0NDEsInZlciI6IjQiLCJ0aWQiOiIyODQ2NiIsInJudyI6MTcyMzEwNzcxNCwicm5ldGlkIjoiMzU2MDAifQ.243HQXt21O3I-zXSZ3F6csAOs3XAxb0TbEgcHVsn8mXtMO0EZM1Y_CZiPPJxX2J_ESUG9CEbWYxqJYqh9p_L6A" --env TWINGATE_REFRESH_TOKEN="Q-EPaU0DO4NwJYcS2j8eyCJCy10IqhLr0nHKUNKrdds9W1rnmxeImNm2kHJ8kOgDnugOT0geCZTxpwwslAJCd4yU9F1M4Q_gt8W8EBIPPwwBgTMRuq0Nvp5nC5xh6aqVXr8bqQ"  --env TWINGATE_DNS="192.168.2.5"  --env TWINGATE_LABEL_HOSTNAME="`hostname`" --env TWINGATE_LABEL_DEPLOYED_BY="docker" --name "twingate-ha" --network=host --restart=unless-stopped --pull=always twingate/connector:1