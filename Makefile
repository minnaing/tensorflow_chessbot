
# Target System is Ubuntu/Linux 64-bit, CPU only, Python 2.7
# Plase change this file according to your system.
install: install_essential install_tensorflow install_scipy


install_essential:
	sudo apt-get update
	sudo apt-get install python-pip python-dev

install_tensorflow:
	# So far we only target on Ubuntu/Linux 64-bit, CPU only, Python 2.7
	@echo "Install Tensorflow"
	export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.11.0rc0-cp27-none-linux_x86_64.whl
	sudo pip install --upgrade $TF_BINARY_URL

install_scipy:
	@echo "Install Scipy"
	sudo apt-get install python-numpy python-scipy python-matplotlib ipython ipython-notebook python-pandas python-sympy python-nose
