sudo apt-get update && sudo apt-get install -y \
 build-essential \
 libssl-dev \
 uuid-dev \
 libgpgme11-dev \
 squashfs-tools \
 libseccomp-dev \
 wget \
 pkg-config \
 git \
 cryptsetup

cd /opt

#install go
export VERSION=1.14.12 OS=linux ARCH=amd64 && \
wget https://dl.google.com/go/go$VERSION.$OS-$ARCH.tar.gz && \
sudo tar -C /usr/local -xzvf go$VERSION.$OS-$ARCH.tar.gz && \
rm go$VERSION.$OS-$ARCH.tar.gz

echo 'export PATH=/usr/local/go/bin:$PATH' >> ~/.bashrc && \
export PATH=/usr/local/go/bin:$PATH


export VERSION=3.7.0 && \
wget https://github.com/hpcng/singularity/releases/download/v${VERSION}/singularity-${VERSION}.tar.gz && \
tar -xzf singularity-${VERSION}.tar.gz && \
cd singularity 


./mconfig && \
make -C builddir && \
sudo make -C builddir install

