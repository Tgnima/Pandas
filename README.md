### Python pour la data science

Ce repository est une collection de notebooks et de ressources utiles pour débuter en data science.
Chaque section est séparé dans un dossier:
1. Python:   
Ce dossier reprends des bases et des notions allant de débutant à intermédiaire en python.
2. Pandas:  
Ce dossier contient une collection de notebook constituant une introduction à pandas.  
3. plot:  
Ce dossier contient quelques éléments pour réaliser des plot pandas et les backends matplotlib et plotly, soit directement via ces libraires.

Lancez les notebooks via Binder en cliquant sur :  [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/adrienpacifico/python_data_science/HEAD?urlpath=lab)


### Le cours peut également être lancé en utilisant soit:

#### repo2Docker:
Il est nécessaire d'avoir `Docker` d'installé sur son ordinateur, puis d'installer `repo2docker` ( via `python3 -m pip install jupyter-repo2docker` )

Ensuite il suffit de se placer à la racine de ce repo puis d'exécuter via son terminal: 
`jupyter-repo2docker --editable .` 

Si `make` est installé sur votre machine, vous pouvez à la place lancer la commande `make  start-repo-2-docker-editable`.


#### Via un environnement virtuel Python
##### Sous Linux et Mac
```
python3 -m venv python-datascience-virtualenv
source python-datascience-virtualenv/bin/activate

```
Puis installer les packages nécessaires 

`pip install -r binder/requirements.txt`

##### Sous Windows
```
python3 -m venv python-datascience-virtualenv
python-datascience-virtualenv\Scripts\activate.bat
```

Puis installer les packages nécessaires 

`pip install -r binder/requirements.txt`


#### Via un environnement virtuel miniconda/anaconda


