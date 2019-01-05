# DrWhy

`DrWhy` is the collection of tools for Explainable AI (XAI). It's based on shared principles and simple grammar for exploration, explanation and visualisation of predictive models.

Please, note that DrWhy is under rapid development and is still maturing. If you are looking for a stable solution, please use the mature [DALEX](https://github.com/pbiecek/DALEX/) package.

<center><img width="400" src="images/Hype_Cycle.svg"></center>

## Lifecycle for Predictive Models

*It takes a village to raise a <del>child</del> model*.

Tools that are usefull during the model lifetime. ![MI2](images/mi2.svg) stands for our internal tools.

### 1. Data Acquisition

* [dataMaid](https://cran.r-project.org/web/packages/dataMaid/index.html); A Suite of Checks for Identification of Potential Errors in a Data Frame as Part of the Data Screening Process
* [ggplot2](https://ggplot2.tidyverse.org/); System for declaratively creating graphics, based on The Grammar of Graphics.

### 2. Feature Selection

* Model Agnostic Variable Importance Scores. Surrogate learning = Train an elastic model and measure feature importance in such model. See [DALEX](https://github.com/pbiecek/DALEX/), [Model Class Reliance MCR](https://arxiv.org/abs/1801.01489) 
* [vip](https://github.com/koalaverse/vip) Variable importance plots 

### 3. Feature Engineering

* [SAFE](https://github.com/MI2DataLab/SAFE) ![MI2](images/mi2.svg) Surrogate learning = Train an elastic model and extract feature transformations. 
* [xspliner](https://github.com/ModelOriented/xspliner) ![MI2](images/mi2.svg) Using surrogate black-boxes to train interpretable spline based additive models 
* [factorMerger](https://github.com/MI2DataLab/factorMerger) ![MI2](images/mi2.svg) Set of tools for factors merging [paper](https://arxiv.org/abs/1709.04412)

### 4. Model Tuning

* [mlr](https://github.com/mlr-org/mlr) Machine Learning in R [paper](http://jmlr.org/papers/v17/15-066.html)
* [caret](https://github.com/topepo/caret) Classification And Regression Training [paper](https://www.jstatsoft.org/article/view/v028i05)

### 5. Model Validation

* [auditor](https://github.com/MI2DataLab/auditor) ![MI2](images/mi2.svg) model verification, validation, and error analysis [vigniette](https://mi2datalab.github.io/auditor/articles/model_performance_audit.html)
* [DALEX](https://github.com/pbiecek/DALEX/) ![MI2](images/mi2.svg) Descriptive mAchine Learning EXplanations
* [iml](https://github.com/christophM/iml); interpretable machine learning R package
* [randomForestExplainer](https://github.com/MI2DataLab/randomForestExplainer) ![MI2](images/mi2.svg) A set of tools to understand what is happening inside a Random Forest
* [survxai](https://github.com/MI2DataLab/survxai) ![MI2](images/mi2.svg) Explanations for survival models [paper](http://joss.theoj.org/papers/dcc9d53e8a1b1f613d59b9658b113fff)

### 6. Model Deployment

* [breakDown](https://github.com/pbiecek/breakDown), [pyBreakDown](https://github.com/MI2DataLab/pyBreakDown) and [breakDown2](https://github.com/ModelOriented/breakDown2) ![MI2](images/mi2.svg) Model Agnostic Explainers for Individual Predictions (with interactions)
* [ceterisParibus](https://github.com/pbiecek/ceterisParibus), [pyCeterisParibus](https://github.com/ModelOriented/pyCeterisParibus), [ceterisParibusD3](https://github.com/MI2DataLab/ceterisParibusExt/tree/master/ceterisParibusD3) and [ceterisParibus2](https://github.com/ModelOriented/ceterisParibus2) ![MI2](images/mi2.svg) Ceteris Paribus Plots (What-If plots) for explanations of a single observation
* [localModel](https://github.com/ModelOriented/localModel) and [live](https://github.com/MI2DataLab/live/) ![MI2](images/mi2.svg) 
LIME-like explanations with interpretable features based on Ceteris Paribus curves. 
* [lime](https://github.com/thomasp85/lime); Local Interpretable Model-Agnostic Explanations (R port of original Python package)
* [shapper](https://github.com/ModelOriented/shapper) ![MI2](images/mi2.svg) An R wrapper of SHAP python library
* [modelDown](https://github.com/MI2DataLab/modelDown) ![MI2](images/mi2.svg) modelDown generates a website with HTML summaries for predictive models

### 7. Model Maintenance

* [drifter](https://github.com/ModelOriented/drifter) ![MI2](images/mi2.svg) Concept Drift and Concept Shift Detection for Predictive Models
* [archivist](https://github.com/pbiecek/archivist) ![MI2](images/mi2.svg) A set of tools for datasets and plots archiving [paper](http://doi.org/10.18637/jss.v082.i11)

## Architecture of DrWhy

`DrWhy` works on fully trained predictive models. Models can be created with any tool. 

`DrWhy` uses `DALEX2` package to wrap model with additional matadata required for explanations, like validation data, predict function etc.

Explainers for predictive models can be created with model agnostic or model specific functions implemented in various packages.


![Architecture of DrWhy](images/DrWhy.png)

# Individual / Local

## Individual Variable Attributions

Variable attribution explainers implemented in the `breakDown2` package in the [local_attributions](https://pbiecek.github.io/breakDown2/reference/local_attributions.html) function.

```
breakDown2::local_attributions()
```

<img width="300px" src="images/local_attributions_1.jpg"/>
&nbsp;&nbsp;<img width="300px" src="images/local_attributions_2.jpg"/>

Variable attribution with interactions is calculated with the  [local_interactions](https://pbiecek.github.io/breakDown2/reference/local_interactions.html) function.

```
breakDown2::local_interactions()
```

<img width="300px" src="images/local_interactions_1.jpg"/>


## Individual Variable Profiles

Variable profile explainers (aka. Ceteris Paribus Profiles) are implemented in the `ceterisParibus2` package in the [individual_variable_profile](https://pbiecek.github.io/ceterisParibus2/reference/individual_variable_profile.html) function.

```
ceterisParibus2::individual_variable_profile()
```

<img width="300px" src="images/local_profile_1.jpg"/>

# Model / Global

## Model Variable Profiles

## Model Variable Importance

## Model Performance


