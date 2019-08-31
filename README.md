# Collection of tools for Visual Exploration, Explanation and Debugging of Predictive Models

*It takes a village to raise a <del>child</del> model*.

The way how we do predictive modeling is very ineffective. We spend way too much time on manual time consuming and easy to automate activities like data cleaning and exploration, crisp modeling, model validation. Instead of focusing on model understanding, productisation and communication.

Here we gather tools that can be use to make out work more efficient through the whole model lifecycle.
The unified grammar beyond DrWhy.AI universe is described in the [Predictive Models: Visual Exploration, Explanation and Debugging](https://pbiecek.github.io/PM_VEE/) book.

## Lifecycle for Predictive Models

The DrWhy is based on an unified [Model Development Process](https://github.com/ModelOriented/DrWhy/blob/master/images/ModelDevelopmentProcess.pdf) inspired by RUP. Find an overview in the diagram below.

[![images/DALEXverse.png](images/DALEXverse.png)]( https://modeloriented.github.io/ModelDevelopmentProcess/ )

## The DrWhy.AI family

Packages in the `DrWhy.AI` family of models may be divided into four classes.

* **Model adapters**. Predictive models created with different tools have different structures, and different interfaces. Model adapters create uniform wrappers. This way other packages may operate on models in an unified way. `DALEX` is a lightweight package with generic interface. `DALEXtra` is a package with extensions for heavyweight interfaces like `scikitlearn`, `h2o`, `mlr`.

* **Model agnostic explainers**. These packages implement specific methods for model exploration. They can be applied to a single model or they can compare different models. `ingregdients` implements variable specific techniques like Ceteris Paribus, Partial Dependency, Permutation based Feature Importance. `iBreakDown` implements techniques for variable attribution, like Break Down or SHAPley values. `auditor` implements techniques for model validation, residual diagnostic and performance diagnostic.

* **Model specific explainers**. These packages implement model specific techniques. `randomForestExplainer` implements techniques for exploration of `randomForest` models. `EIX` implements techniques for exploration of gbm and xgboost models. `cr19` implements techniques for exploration of survival models. 

* **Automated exploration**. These packages combine series of model exploration techniques and produce an automated report of website for model exploration. `modelStudio` implements a dashboard generator for local and global interactive model exploration. `modelDown` implements a HTML website generator for global model cross comparison. 

Here is a more detailed overview.

--------------------

### [DALEX](http://github.com/ModelOriented/DALEX)

[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/DALEX)](https://cran.r-project.org/package=DALEX) [![Build Status](https://api.travis-ci.org/ModelOriented/DALEX.png)](https://travis-ci.org/ModelOriented/DALEX) [![Coverage
Status](https://img.shields.io/codecov/c/github/ModelOriented/DALEX/master.svg)](https://codecov.io/github/ModelOriented/DALEX?branch=master) 

The DALEX package (Descriptive mAchine Learning EXplanations) helps to understand how complex models are working. The main function [explain](https://modeloriented.github.io/DALEX/reference/explain.html) creates a wrapper around a predictive model. Wrapped models may then be explored and compared with a collection of local and global explainers. Recent developents from the area of Interpretable Machine Learning/eXplainable Artificial Intelligence.

DALEX wraps methods from other packages, i.e. 'pdp' (Greenwell 2017) <doi:10.32614/RJ-2017-016>, 'ALEPlot' (Apley 2018) <arXiv:1612.08468>, 'factorMerger' (Sitko and Biecek 2017) <arXiv:1709.04412>,  'breakDown' package (Staniak and Biecek 2018) <doi:10.32614/RJ-2018-072>, (Fisher at al. 2018) <arXiv:1801.01489>.

Vignettes: 

* [General introduction: Survival on the RMS Titanic](https://modeloriented.github.io/DALEX/articles/vignette_titanic.html)

--------------------

### [DALEXtra](http://github.com/ModelOriented/DALEXtra) 

[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/DALEXtra)](https://cran.r-project.org/package=DALEXtra) [![Build Status](https://api.travis-ci.org/ModelOriented/DALEXtra.png)](https://travis-ci.org/ModelOriented/DALEXtra) [![Coverage
Status](https://img.shields.io/codecov/c/github/ModelOriented/DALEXtra/master.svg)](https://codecov.io/github/ModelOriented/DALEXtra?branch=master) 

The `DALEXtra` package is an extension pack for [DALEX](https://modeloriented.github.io/DALEX) package.
This package provides easy to use connectors for models created with scikitlearn, keras, H2O, mljar and mlr.

Vignettes: 

* [General introduction: DALEX with scikitlearn models](https://raw.githack.com/pbiecek/DALEX_docs/master/vignettes/How_to_use_DALEXtra_to_explain_and_visualize_scikitlearn_models.html)

--------------------

### [ingredients](http://github.com/ModelOriented/ingredients) 

[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/ingredients)](https://cran.r-project.org/package=ingredients) [![Build Status](https://api.travis-ci.org/ModelOriented/ingredients.svg?branch=master)](https://travis-ci.org/ModelOriented/ingredients) [![Coverage
Status](https://img.shields.io/codecov/c/github/ModelOriented/ingredients/master.svg)](https://codecov.io/github/ModelOriented/ingredients?branch=master) 

The `ingredients` package is a collection of tools for assessment of feature importance and feature effects.

Key functions are: `feature_importance()` for assessment of global level feature importance, `ceteris_paribus()` for calculation of the Ceteris Paribus / What-If Profiles, `partial_dependency()` for Partial Dependency Plots, `conditional_dependency()` for Conditional Dependency Plots also called M Plots, `accumulated_dependency()` for Accumulated Local Effects Plots,  `cluster_profiles()` for aggregation of Ceteris Paribus Profiles, generic `print()` and `plot()` for better usability of selected explainers, generic `plotD3()` for interactive D3 based explanations, and generic `describe()` for explanations in natural language.


Vignettes: 

* [General introduction: Survival on the RMS Titanic](https://modeloriented.github.io/ingredients/articles/vignette_titanic.html),
* [Aspects importance](https://modeloriented.github.io/ingredients/articles/vignette_aspect_importance.html), 
* [Explanations in natural language](https://modeloriented.github.io/ingredients/articles/Describing-Explanations.html)

--------------------

### [iBreakDown](http://github.com/ModelOriented/iBreakDown) 

[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/iBreakDown)](https://cran.r-project.org/package=iBreakDown) [![Build Status](https://api.travis-ci.org/ModelOriented/iBreakDown.svg?branch=master)](https://travis-ci.org/ModelOriented/iBreakDown) [![Coverage
Status](https://img.shields.io/codecov/c/github/ModelOriented/iBreakDown/master.svg)](https://codecov.io/github/ModelOriented/iBreakDown?branch=master) 

The `iBreakDown` package is a model agnostic tool for explanation of predictions from black boxes ML models.
Break Down Table shows contributions of every variable to a final prediction. 
Break Down Plot presents variable contributions in a concise graphical way. 
SHAP (Shapley Additive Attributions) values are calculated as average from random Break Down profiles.
This package works for binary classifiers as well as regression models. 

`iBreakDown` is a successor of the [breakDown](https://github.com/pbiecek/breakDown) package. It is faster (complexity O(p) instead of O(p^2)). It supports interactions and interactive explainers with D3.js plots.

Vignettes: 

* [General introduction: Survival on the RMS Titanic](https://modeloriented.github.io/iBreakDown/articles/vignette_iBreakDown_titanic.html),
* [Explanations in natural language](https://modeloriented.github.io/iBreakDown/articles/vignette_iBreakDown_description.html)

--------------------

### [auditor](http://github.com/ModelOriented/auditor) 

[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/auditor)](https://cran.r-project.org/package=auditor) [![Build Status](https://api.travis-ci.org/ModelOriented/auditor.svg?branch=master)](https://travis-ci.org/ModelOriented/auditor) [![Coverage
Status](https://img.shields.io/codecov/c/github/ModelOriented/auditor/master.svg)](https://codecov.io/github/ModelOriented/auditor?branch=master) 

Package `auditor` is a tool for model-agnostic validation. Implemented techniques facilitate assessing and comparing the goodness of fit and performance of models. In addition, they may be used for the analysis of the similarity of residuals and for the identification of outliers and influential observations. The examination is carried out by diagnostic scores and visual verification. Due to the flexible and consistent grammar, it is simple to validate models of any classes.

Learn more: 

* Preprint: [auditor: an R Package for Model-Agnostic Visual Validation and Diagnostic](https://arxiv.org/abs/1809.07763),
* [List of implemented audits](https://github.com/ModelOriented/auditor#a-short-overview-of-plots)


--------------------

### [vivo](http://github.com/ModelOriented/vivo) 

[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/vivo)](https://cran.r-project.org/package=vivo) [![Build Status](https://api.travis-ci.org/ModelOriented/vivo.svg?branch=master)](https://travis-ci.org/ModelOriented/vivo) [![Coverage
Status](https://img.shields.io/codecov/c/github/ModelOriented/vivo/master.svg)](https://codecov.io/github/ModelOriented/vivo?branch=master) 

The `vivo` package helps to calculate instance level variable importance (measure of local sensitivity). The importance measure is based on Ceteris Paribus profiles and can be calculated in eight variants. Select the variant that suits your needs by setting parameters: `absolute_deviation`, `point` and `density`.

Learn more:

* [Intuition for Ceteris Paribus Oscillations](https://github.com/ModelOriented/vivo#intuition)


--------------------

### [shapper](http://github.com/ModelOriented/shapper) 

[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/shapper)](https://cran.r-project.org/package=shapper) [![Build Status](https://api.travis-ci.org/ModelOriented/shapper.svg?branch=master)](https://travis-ci.org/ModelOriented/shapper) [![Coverage
Status](https://img.shields.io/codecov/c/github/ModelOriented/shapper/master.svg)](https://codecov.io/github/ModelOriented/shapper?branch=master) 

The `shapper` is an R wrapper of SHAP python library.
It accesses python implementation through `reticulate` connector.


--------------------

### [drifter](http://github.com/ModelOriented/drifter) 

[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/drifter)](https://cran.r-project.org/package=drifter) [![Build Status](https://api.travis-ci.org/ModelOriented/drifter.svg?branch=master)](https://travis-ci.org/ModelOriented/drifter) [![Coverage
Status](https://img.shields.io/codecov/c/github/ModelOriented/drifter/master.svg)](https://codecov.io/github/ModelOriented/drifter?branch=master) 

The `drifter` is an R package that identifies concept drift in model structure or in data structure.

Machine learning models are often fitted and validated on historical data under an assumption that data are stationary. The most popular techniques for validation (k-fold cross-validation, repeated cross-validation, and so on) test models on data with the same distribution as training data.

Yet, in many practical applications, deployed models are working in a changing environment. After some time, due to changes in the environment, model performance may degenerate, as model may be less reliable.

Concept drift refers to the change in the data distribution or in the relationships between variables over time. Think about model for energy consumption for a school, over time the school may be equipped with larger number of devices of with more power-efficient devices that may affect the model performance.


--------------------

### [EIX](http://github.com/ModelOriented/EIX) 

[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/EIX)](https://cran.r-project.org/package=EIX) [![Build Status](https://api.travis-ci.org/ModelOriented/EIX.svg?branch=master)](https://travis-ci.org/ModelOriented/EIX) [![Coverage
Status](https://img.shields.io/codecov/c/github/ModelOriented/EIX/master.svg)](https://codecov.io/github/ModelOriented/EIX?branch=master) 

The `EIX` package implements set of techniques to explore and explain `XGBoost` and `LightGBM` models. Main functions of this package cover various variable importance measures and well as functions for identification of interactions between variables.

Learn more:

* [Cheatsheet](https://github.com/ModelOriented/EIX#cheatsheets)

--------------------

### [modelStudio](http://github.com/ModelOriented/modelStudio) 

[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/modelStudio)](https://cran.r-project.org/package=modelStudio) [![Build Status](https://api.travis-ci.org/ModelOriented/modelStudio.svg?branch=master)](https://travis-ci.org/ModelOriented/modelStudio) [![Coverage
Status](https://img.shields.io/codecov/c/github/ModelOriented/modelStudio/master.svg)](https://codecov.io/github/ModelOriented/modelStudio?branch=master) 

The `modelStudio` package automate interactive explanation and exploration machine learning predictive models.  This package generates advanced interactive and animated model explanations in the form  of serverless HTML site. It combines R with D3.js to produce plots and descriptions  for local and global explanations. The whole is greater than the sum of its parts,  so it also supports EDA on top of that. ModelStudio is a fast and condensed way to get  all the answers without much effort. Break down your model and look into its ingredients  with only a few lines of code.

The key function is `modelStudio()` which generates interactive studio to explain predictive model. 

Vignettes: 

* [General introduction: modelStudio - perks and features](https://modeloriented.github.io/modelStudio/articles/vignette_modelStudio.html)

--------------------

### [modelDown](http://github.com/ModelOriented/modelDown) 

[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/modelDown)](https://cran.r-project.org/package=modelDown) [![Build Status](https://api.travis-ci.org/ModelOriented/modelDown.svg?branch=master)](https://travis-ci.org/ModelOriented/modelDown) [![Coverage
Status](https://img.shields.io/codecov/c/github/ModelOriented/modelDown/master.svg)](https://codecov.io/github/ModelOriented/modelDown?branch=master) 

The`modelDown` package generates a website with HTML summaries for predictive models. Is uses `DALEX` explainers to compute and plot summaries of how given models behave. We can see how well models behave (*Model Performance*, *Auditor*), how much each variable contributes to predictions (*Variable Response*) and which variables are the most important for a given model (*Variable Importance*). We can also compare Concept Drift for pairs of models (*Drifter*). Additionally, data available on the website can be easily recreated in current R session (using archivist package).

Learn more: 

* [Getting started](https://modeloriented.github.io/modelDown/getting-started)
* [JOSS paper: modelDown: automated website generator with interpretable documentation for predictive machine learning models](https://joss.theoj.org/papers/10.21105/joss.01444)


--------------------

### [archivist](http://github.com/pbiecek/archivist) 

[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/archivist)](https://cran.r-project.org/package=archivist) [![Build Status](https://api.travis-ci.org/pbiecek/archivist.svg?branch=master)](https://travis-ci.org/pbiecek/archivist) [![Coverage
Status](https://img.shields.io/codecov/c/github/pbiecek/archivist/master.svg)](https://codecov.io/github/pbiecek/archivist?branch=master) 

The `archivist` package automate serialization and deserializtaion of R objects. Objects are stored with additional metadata to faciliate reproducibility and governance of data science projects. 

Everything that exists in R is an object. `archivist` is an R package that stores copies of all objects along with their metadata. It helps to manage and recreate objects with final or partial results from data analysis. Use `archivist` to record every result, to share these results with future you or with others, to search through repository of objects created in the past but needed now.

Learn more: 

* [Cheatsheet](https://github.com/pbiecek/archivist/raw/master/cheatsheets/archivistCheatsheet.png)
* [JSS article](http://doi.org/10.18637/jss.v082.i11)


--------------------


Tools that are usefull during the model lifetime. ![MI2](images/mi2.svg) stands for our internal tools.

### 1. Data preparation

* [dataMaid](https://cran.r-project.org/web/packages/dataMaid/index.html); A Suite of Checks for Identification of Potential Errors in a Data Frame as Part of the Data Screening Process
* [inspectdf](https://cran.r-project.org/web/packages/inspectdf/index.html); A collection of utilities for columnwise summary, comparison and visualisation of data frames. 
* [validate](https://github.com/data-cleaning/validate); Professional data validation for the R environment 
* [errorlocate](https://github.com/data-cleaning/errorlocate); Find and replace erroneous fields in data using validation rules 
* [ggplot2](https://ggplot2.tidyverse.org/); System for declaratively creating graphics, based on The Grammar of Graphics.

### 2. Data understanding

* Model Agnostic Variable Importance Scores. Surrogate learning = Train an elastic model and measure feature importance in such model. See [DALEX](https://github.com/pbiecek/DALEX/), [Model Class Reliance MCR](https://arxiv.org/abs/1801.01489) 
* [vip](https://github.com/koalaverse/vip) Variable importance plots 
* [SAFE](https://github.com/MI2DataLab/SAFE) ![MI2](images/mi2.svg) Surrogate learning = Train an elastic model and extract feature transformations. 
* [xspliner](https://github.com/ModelOriented/xspliner) ![MI2](images/mi2.svg) Using surrogate black-boxes to train interpretable spline based additive models 
* [factorMerger](https://github.com/MI2DataLab/factorMerger) ![MI2](images/mi2.svg) Set of tools for factors merging [paper](https://arxiv.org/abs/1709.04412)
* [ingredients](https://github.com/ModelOriented/ingredients) ![MI2](images/mi2.svg) Set of tools for model level feature effects and feature importance.

### 4. Model assembly

* [mlr](https://github.com/mlr-org/mlr) Machine Learning in R [paper](http://jmlr.org/papers/v17/15-066.html)
* [caret](https://github.com/topepo/caret) Classification And Regression Training [paper](https://www.jstatsoft.org/article/view/v028i05)

### 5. Model audit

* [auditor](https://github.com/MI2DataLab/auditor) ![MI2](images/mi2.svg) model verification, validation, and error analysis [vigniette](https://mi2datalab.github.io/auditor/articles/model_performance_audit.html)
* [DALEX](https://github.com/pbiecek/DALEX/) ![MI2](images/mi2.svg) Descriptive mAchine Learning EXplanations
* [iml](https://github.com/christophM/iml); interpretable machine learning R package
* [randomForestExplainer](https://github.com/MI2DataLab/randomForestExplainer) ![MI2](images/mi2.svg) A set of tools to understand what is happening inside a Random Forest
* [survxai](https://github.com/MI2DataLab/survxai) ![MI2](images/mi2.svg) Explanations for survival models [paper](http://joss.theoj.org/papers/dcc9d53e8a1b1f613d59b9658b113fff)

### 6. Model delivery

* [iBreakDown](https://github.com/ModelOriented/iBreakDown), [pyBreakDown](https://github.com/MI2DataLab/pyBreakDown)  ![MI2](images/mi2.svg) Model Agnostic Explainers for Individual Predictions (with interactions)
* [ceterisParibus](https://github.com/pbiecek/ceterisParibus), [pyCeterisParibus](https://github.com/ModelOriented/pyCeterisParibus), [ceterisParibusD3](https://github.com/MI2DataLab/ceterisParibusExt/tree/master/ceterisParibusD3) and [ingredients](https://github.com/ModelOriented/ingredients) ![MI2](images/mi2.svg) Ceteris Paribus Plots (What-If plots) for explanations of a single observation
* [localModel](https://github.com/ModelOriented/localModel) and [live](https://github.com/MI2DataLab/live/) ![MI2](images/mi2.svg) 
LIME-like explanations with interpretable features based on Ceteris Paribus curves. 
* [lime](https://github.com/thomasp85/lime); Local Interpretable Model-Agnostic Explanations (R port of original Python package)
* [shapper](https://github.com/ModelOriented/shapper) ![MI2](images/mi2.svg) An R wrapper of SHAP python library
* [modelDown](https://github.com/MI2DataLab/modelDown) ![MI2](images/mi2.svg) modelDown generates a website with HTML summaries for predictive models
* [drifter](https://github.com/ModelOriented/drifter) ![MI2](images/mi2.svg) Concept Drift and Concept Shift Detection for Predictive Models
* [archivist](https://github.com/pbiecek/archivist) ![MI2](images/mi2.svg) A set of tools for datasets and plots archiving [paper](http://doi.org/10.18637/jss.v082.i11)


## Family of Model Explainers

![images/DrWhyAI.png](images/DrWhyAI.png)


## Architecture of DrWhy

`DrWhy` works on fully trained predictive models. Models can be created with any tool. 

`DrWhy` uses `DALEX` package to wrap model with additional metadata required for explanations, like validation data, predict function etc.

Explainers for predictive models can be created with model agnostic or model specific functions implemented in various packages.

![Hype_Cycle](images/Hype_Cycle.svg)

