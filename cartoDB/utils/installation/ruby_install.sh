#rbenv
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source  ~/.bashrc

#ruby-build plugin for rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

#ruby 1.9.3-p551 needed by CartoDB
rbenv install 1.9.3-p551

#bundler
rbenv local 1.9.3-p551
gem install bundler
