# Install RVM + Ruby
if test ! $(which rvm)
then
  echo "  Installing RVM & Ruby."
  \curl -sSL https://get.rvm.io | bash -s stable --ruby
else
  echo "  Upgrading RVM & Ruby."
  rvm get stable --ruby
fi

# Load RVM Config
source ~/.rvm/scripts/rvm

# Install gems
sudo gem install lunchy
