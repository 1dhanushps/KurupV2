if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/1dhanushps/KurupV2.git /KurupV2
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /KurupV2
fi
cd /KurupV2
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
