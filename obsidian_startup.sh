# two people editing the same obsidian notes may cause a problem
# this is built with the intention that only one instance of this script will be run at anytime (remember obsidian runs with this script)

pull_updates() {
    git pull
}

wait_for_termination() {
    while (xdotool search --name "obsidian") do
        sleep 1
    done
}

update_repo() {
    git add .
    git commit -m "updating notes"
    git push
}


cd /home/taham/Notes

pull_updates

/home/taham/Applications/Obsidian-1.4.16.AppImage

wait_for_termination

update_repo
