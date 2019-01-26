

curl -O http://ftp.cs.toronto.edu/pub/zoubin/mfa.tar.gz
tar -zxvf mfa.tar.gz

# The original code contains a call of the "finite" function which is replaced by "isfinite" in current matlab versions. 
sed -i "" 's/finite/isfinite/g' mfa/*