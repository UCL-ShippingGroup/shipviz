sudo su <<'EOF'
apt-get install python-setuptools
easy_install pip
export CPLUS_INCLUDE_PATH=/usr/include/gdal
export C_INCLUDE_PATH=/usr/include/gdal
pip install --no-use-wheel -r python_requirements.txt
exit
EOF
