#!/bin/bash

<< comment
creating django app and pushing it into git repository
comment

cloning_django() {
	echo "cloning django from git repo"
	git clone https://github.com/LondheShubham153/django-notes-app.git
	cd django-notes-app 
}

installing_requirements() {
	sudo apt install docker.io nginx docker-compose -y
}

restart_services() {
 	sudo systemctl restart docker
	sudo systemctl restart nginx
	sudo chown $USER /var/run/docker.sock
}

deployment() {
	docker build -t notes-app .
	docker run -d -p 8000:8000 notes-app:latest
	#docker-compose up -d
}



echo "************ DEPLOYMENT STARTED ************"

if ! cloning_django; then
	echo "DJANGO HAS BEEN ALREADY CLONED INTO OUR LOCAL MACHINE"

fi

if ! installing_requirements; then
	echo "something wrong with installation"
	exit 1
fi

if ! restart_services; then
	echo "fault lies in restarting services"
	exit 1
fi

if ! deployment; then
	echo "deployment failed and mail sent to admin"
	exit 1
fi


echo "************ DEPLOYMENT DONE ************"

