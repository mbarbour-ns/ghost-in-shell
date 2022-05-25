pyt-build:
	python3 -m venv venv
	venv/bin/pip install -r requirements.txt
pyt-run:
	venv/bin/python app.py

dkr-build:
	rdocker build . -t my-python-serve
dkr-run:
	docker run --rm --name flask-app -p 5000:5000 my-python-serve
