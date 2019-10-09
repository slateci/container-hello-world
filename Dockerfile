FROM centos:latest

# Copy our source code into the bin dir
COPY hello.py /usr/local/bin/

# Do our Python setup 
RUN yum install python3 python3-virtualenv -y

RUN cd /usr/local/; python3 -m virtualenv venv

RUN source /usr/local/venv/bin/activate && pip install flask

# Run the code in the Python virtual environment
CMD source /usr/local/venv/bin/activate && exec python3 /usr/local/bin/hello.py
