# Python and R for Data Science (O'Reilly Live Online Training)

![](misc/oreilly_logo.png)

## Setup

### Python

If you don't have Python pre-installed on your machine, you can download it from [python.org](https://www.python.org/). After it's installed you need to set up a virtual environment:

```bash
python3 -m venv venv
source venv/bin activate
```

And then you can either install all the packages required with `pip` individually, or use the following command:

```bash
pip install -r requirements.md
```

To start using JupyterLab:

```bash
jupyter lab
```

If you want to use a text editor, a recommended tool is [VSCode](https://code.visualstudio.com/). While most of the R work will be in RStudio, we'll use JupyterLab for a small section, so you need to install the IRKernel. For that follow the [official setup instructions](https://irkernel.github.io/installation/).

### R

You can download R from [CRAN](https://cran.r-project.org/mirrors.html). After this you should install RStudio from [the official website](https://www.rstudio.com/products/rstudio/download/). After this create a new R Project (select use existing directory, use the one where you download this repository) and install the packages individually with `install.packages()`.

## Required packages

### Python

- `jupyterlab` (Python and R Kernels)
- `pandas`
- `scikit-learn`
- `yellowbrick`
- `missingno`
- `opencv-python`
- `scikit-image`
- `nltk` (download data as well)
- `spaCy`
- `flask` (optional)
- `mlflow` (optional)

### R

- `ggplot2`
- `dplyr`
- `prophet`
- `xts`
- `leaflet`
- `shiny`
- `flexdashboard` (optional)
- `shinydashboard` (optional)
- `sdmbench` (optional)

## Datasets

- `diamonds.csv` (built-in from `ggplot2`)
- `boston housing` (built-in from `scikit-learn`)
- `wine` (built in from `scikit-learn`)
- `fires.csv` (from [Kaggle](https://www.kaggle.com/datasets/rtatman/188-million-us-wildfires))
- `reviews.csv` (from [UCSD](https://jmcauley.ucsd.edu/data/amazon/))
- `image_000001.jpg` (flowers102 from [University of Oxford](https://www.robots.ox.ac.uk/~vgg/data/flowers/102/))
- `starwars.csv` (built-in from `dplyr`)
- `temps.csv` (from [Machine Learning Mastery Github](https://github.com/jbrownlee/Datasets))
