#!/bin/sh
mkdir -p /opt/mamba/share/jupyter/lab/settings/
touch /opt/mamba/share/jupyter/lab/settings/overrides.json
echo "{\"@jupyterlab/apputils-extension:themes\": {\"theme\": \"JupyterLab Dark\"}}" >> /opt/mamba/share/jupyter/lab/settings/overrides.json
