host="fabmedical-643922.mongo.cosmos.azure.com"
username="fabmedical-643922"
password="ZemzSdu2FZZ5y40aLS9c3M2plbCEusqvmJ3LXzEwDNETxKsy7lqPuYrsvQXsVyRVxpfBuyWDvrLboftDvPj4Zg"
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
