#!/bin/bash

echo "Installing Obsidian..."

latest_release_url=$(curl -L --max-redirs 10 -w %{url_effective} -o /dev/null https://github.com/obsidianmd/obsidian-releases/releases/latest)
if ! [[ -z latest_release_url ]]; then
    latest_tag=${latest_release_url##*/v}
    echo "Latest Obsidian release: $latest_tag"
    wget -O obsidian.deb "https://github.com/obsidianmd/obsidian-releases/releases/download/v${latest_tag}/obsidian_${latest_tag}_amd64.deb"
    sudo mv ./obsidian.deb /tmp/obsidian.deb
    sudo apt-get -y install /tmp/obsidian.deb
    rm -f /tmp/obsidian.deb
else
    echo "Unable to find the latest Obsidian release!"
    exit 0

fi

if ! [[ -d ~/github ]]; then
mkdir ~/github
fi

cd ~/github;
read -p "GitHub login: " github_login;
read -p "GitHub repo name: " github_repo;
echo "Cloning git@github.com:$github_login/$github_repo.git";
git clone "git@github.com:$github_login/$github_repo.git";
