#!/usr/bin/env bash
 
# This is a bash script for Domino's App publishing feature
# Learn more at https://docs.dominodatalab.com/en/latest/reference/publish/apps/App_publishing_overview.html
 
## Flask example
## This is an example of the code you would need in this bash script for a Python/Flask app
# export LC_ALL=C.UTF-8
# export LANG=C.UTF-8
# export FLASK_APP=app-flask.py
# export FLASK_DEBUG=1
# python -m flask run --host=0.0.0.0 --port=8888
 
## Dash Example
## This is an example of the code you would need in this bash script for a Dash app
#python app-dash.py
 
## R/Shiny Example
## This is an example of the code you would need in this bash script for a R/Shiny app
#R -e 'shiny::runApp("./", port=8888, host="0.0.0.0")'
 
## Streamlit App
# this is for a development server where you will need to enter the following URL formatted:
#
# streamlit run nyc.py --server.port 8889
 
mkdir ~/.streamlit
echo "[browser]" > ~/.streamlit/config.toml
echo "gatherUsageStats = true" >> ~/.streamlit/config.toml
echo "serverAddress = \"0.0.0.0\"" >> ~/.streamlit/config.toml
echo "serverPort = 8888" >> ~/.streamlit/config.toml
echo "[server]" >> ~/.streamlit/config.toml
echo "port = 8888" >> ~/.streamlit/config.toml
echo "enableCORS = false" >> ~/.streamlit/config.toml
echo "enableXsrfProtection = false" >> ~/.streamlit/config.toml
 
streamlit run streamlit-app.py
