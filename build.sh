# modify version before build
version=0.0.5

# build autohub
docker build -t autohub .

# tag autohub
docker tag autohub liyimin1912/autohub:$version


# push
# docker push liyimin1912/autohub:$version
