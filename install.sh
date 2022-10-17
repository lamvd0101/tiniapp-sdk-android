cd libs
for lib in *; do
  libName=${lib//.aar/}
  
  mvn install:install-file \
    -Dfile=libs/mylibrary-release.aar \
    -DgroupId=vn.tiki \
    -DartifactId=$libName \
    -Dversion=1.0 \
    -Dpackaging=aar \
    -DgeneratePom=true
done
