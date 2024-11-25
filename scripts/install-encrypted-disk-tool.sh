temp_dir=$(mktemp -d)
cd $temp_dir
gh release download --repo pekware/encrypted-disk-tool-draft --pattern *Linux*
tar xzvf encrypted-disk-tool-draft_Linux_x86_64.tar.gz
sudo install encrypted-disk-tool-draft /usr/local/bin/encrypted-disk-tool
/usr/local/bin/encrypted-disk-tool completion bash | sudo tee /etc/bash_completion.d/encrypted-disk-tool
