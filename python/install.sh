# Install global packages
PIP_REQUIRE_VIRTUALENV=false /usr/local/bin/pip install --upgrade distribute virtualenv pip ipython

# Set up pipsi

# Check for Pipsi (https://github.com/mitsuhiko/pipsi)
if test ! $(which pipsi)
then
  echo "  Installing Pipsi."
  curl https://raw.githubusercontent.com/mitsuhiko/pipsi/master/get-pipsi.py | python
else
  echo "  Upgrading Pipsi."
  pipsi upgrade pipsi
fi

# Install Apps
for app in dockertools aldryn-client lancet pep8 devpi-client cookiecutter
do
  pipsi install $app
done
