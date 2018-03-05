#!/bin/bash
#Ce script permet de mettre fin à tous les nodes en cours d'éxécution, de la même manière que Gazebo et Rviz.
#Première étape. Qui ne ferme cependant pas Gazebo.
rosnode kill -a
#Brutal, certes, mais simple à comprendre.
#Ensuite, on ferme Gazebo.
pkill -term Gazebo
