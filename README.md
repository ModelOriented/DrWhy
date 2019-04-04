# DrWhy

`DrWhy` is the collection of tools for Explainable AI (XAI). It's based on shared principles and simple grammar for exploration, explanation and visualisation of predictive models.

Please, note that DrWhy is under rapid development and is still maturing. If you are looking for a stable solution, please use the mature [DALEX](https://github.com/pbiecek/DALEX/) package.

## Lifecycle for Predictive Models

*It takes a village to raise a <del>child</del> model*.

Tools that are usefull during the model lifetime. ![MI2](images/mi2.svg) stands for our internal tools.

![images/DrWhyAI.png](images/DrWhyAI.png)

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
* [ingredients](https://github.com/ModelOriented/ingredients) ![MI2](images/mi2.svg) Set of tools for model level feature effects and feature importance.

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

# DrWhy.AI indicator panel

## Active development and maintenance

These packages are actively developed and have active maintainer.

* archivist [![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/archivist)](https://cran.r-project.org/package=archivist) [![Build Status](https://api.travis-ci.org/pbiecek/archivist.svg?branch=master)](https://travis-ci.org/pbiecek/archivist) [![Coverage
Status](https://img.shields.io/codecov/c/github/pbiecek/archivist/master.svg)](https://codecov.io/github/pbiecek/archivist?branch=master) [![Downloads](http://cranlogs.r-pkg.org/badges/grand-total/archivist?color=orange)](http://cranlogs.r-pkg.org/badges/grand-total/archivist) (maintainer: [pbiecek](https://github.com/pbiecek))
* DALEX [![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/DALEX)](https://cran.r-project.org/package=DALEX) [![Build Status](https://api.travis-ci.org/pbiecek/DALEX.png)](https://travis-ci.org/pbiecek/DALEX) [![Coverage
Status](https://img.shields.io/codecov/c/github/pbiecek/DALEX/master.svg)](https://codecov.io/github/pbiecek/DALEX?branch=master) [![Downloads](http://cranlogs.r-pkg.org/badges/grand-total/DALEX?color=orange)](http://cranlogs.r-pkg.org/badges/grand-total/DALEX) (maintainer: [pbiecek](https://github.com/pbiecek))
* auditor [![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/auditor)](https://cran.r-project.org/package=auditor) [![Build Status](https://api.travis-ci.org/MI2DataLab/auditor.svg?branch=master)](https://travis-ci.org/MI2DataLab/auditor) [![Coverage
Status](https://img.shields.io/codecov/c/github/MI2DataLab/auditor/master.svg)](https://codecov.io/github/MI2DataLab/auditor?branch=master) [![Downloads](http://cranlogs.r-pkg.org/badges/grand-total/auditor?color=orange)](http://cranlogs.r-pkg.org/badges/grand-total/auditor) (maintainer: [agosiewska](https://github.com/agosiewska))
* survxai [![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/survxai)](https://cran.r-project.org/package=survxai) [![Build Status](https://api.travis-ci.org/MI2DataLab/survxai.svg?branch=master)](https://travis-ci.org/MI2DataLab/survxai) [![Coverage
Status](https://img.shields.io/codecov/c/github/MI2DataLab/survxai/master.svg)](https://codecov.io/github/MI2DataLab/survxai?branch=master) [![Downloads](http://cranlogs.r-pkg.org/badges/grand-total/survxai?color=orange)](http://cranlogs.r-pkg.org/badges/grand-total/survxai) (maintainer: [agosiewska](https://github.com/agosiewska))
* shapper [![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/shapper)](https://cran.r-project.org/package=shapper) [![Build Status](https://api.travis-ci.org/ModelOriented/shapper.svg?branch=master)](https://travis-ci.org/ModelOriented/shapper) [![Coverage
Status](https://img.shields.io/codecov/c/github/ModelOriented/shapper/master.svg)](https://codecov.io/github/ModelOriented/shapper?branch=master) [![Downloads](http://cranlogs.r-pkg.org/badges/grand-total/shapper?color=orange)](http://cranlogs.r-pkg.org/badges/grand-total/shapper) (maintainer: [agosiewska](https://github.com/agosiewska))
* iBreakDown [![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/iBreakDown)](https://cran.r-project.org/package=iBreakDown) [![Build Status](https://api.travis-ci.org/ModelOriented/drifter.svg?branch=master)](https://travis-ci.org/ModelOriented/drifter) [![Coverage
Status](https://img.shields.io/codecov/c/github/ModelOriented/iBreakDown/master.svg)](https://codecov.io/github/ModelOriented/iBreakDown?branch=master) (maintainer: [pbiecek](https://github.com/pbiecek))
* ingredients [![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/ingredients)](https://cran.r-project.org/package=ingredients) [![Build Status](https://api.travis-ci.org/ModelOriented/ingredients.svg?branch=master)](https://travis-ci.org/ModelOriented/ingredients) [![Coverage
Status](https://img.shields.io/codecov/c/github/ModelOriented/ingredients/master.svg)](https://codecov.io/github/ModelOriented/ingredients?branch=master) (maintainer: [pbiecek](https://github.com/pbiecek))
* drifter [![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/drifter)](https://cran.r-project.org/package=drifter) [![Build Status](https://api.travis-ci.org/ModelOriented/drifter.svg?branch=master)](https://travis-ci.org/ModelOriented/drifter) [![Coverage
Status](https://img.shields.io/codecov/c/github/ModelOriented/drifter/master.svg)](https://codecov.io/github/ModelOriented/drifter?branch=master) (maintainer: [pbiecek](https://github.com/pbiecek))
* localModel [![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/localModel)](https://cran.r-project.org/package=localModel) [![Travis-CI Build Status](https://travis-ci.org/ModelOriented/localModel.svg?branch=master)](https://travis-ci.org/ModelOriented/localModel) [![Coverage Status](https://img.shields.io/codecov/c/github/ModelOriented/localModel/master.svg)](https://codecov.io/github/ModelOriented/localModel?branch=master) (maintainer: [mstaniak](https://github.com/mstaniak))

## Experimental pre-seed phase (under active development)

* EIX [![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/EIX)](https://cran.r-project.org/package=EIX) [![Travis-CI Build Status](https://travis-ci.org/ModelOriented/EIX.svg?branch=master)](https://travis-ci.org/ModelOriented/EIX) [![Coverage Status](https://img.shields.io/codecov/c/github/ModelOriented/EIX/master.svg)](https://codecov.io/github/ModelOriented/EIX?branch=master) (maintainer: [ekarbowiak](https://github.com/ekarbowiak))
* xspliner [![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/xspliner)](https://cran.r-project.org/package=xspliner) [![Travis-CI Build Status](https://travis-ci.org/ModelOriented/xspliner.svg?branch=master)](https://travis-ci.org/ModelOriented/xspliner) [![Coverage Status](https://img.shields.io/codecov/c/github/ModelOriented/xspliner/master.svg)](https://codecov.io/github/ModelOriented/xspliner?branch=master) [![Downloads](http://cranlogs.r-pkg.org/badges/grand-total/xspliner?color=orange)](http://cranlogs.r-pkg.org/badges/grand-total/xspliner)  (maintainer: [krystian8207](https://github.com/krystian8207))
* pyDALEX [![Build Status](https://api.travis-ci.org/MI2DataLab/pyDALEX.svg?branch=master)](https://travis-ci.org/MI2DataLab/pyDALEX) [![Coverage
Status](https://img.shields.io/codecov/c/github/MI2DataLab/pyDALEX/master.svg)](https://codecov.io/github/MI2DataLab/pyDALEX?branch=master)   (maintainer: [magda-tatarynowicz](https://github.com/magda-tatarynowicz))
* SAFE [![Build Status](https://api.travis-ci.org/ModelOriented/SAFE.svg?branch=master)](https://travis-ci.org/ModelOriented/SAFE) [![Coverage
Status](https://img.shields.io/codecov/c/github/ModelOriented/SAFE/master.svg)](https://codecov.io/github/ModelOriented/SAFE?branch=master)   (maintainer: [olagacek](https://github.com/olagacek))
* pyCeterisParibus [![PyPI version](https://badge.fury.io/py/pyCeterisParibus.svg)](https://badge.fury.io/py/pyCeterisParibus)[![Build Status](https://api.travis-ci.org/ModelOriented/pyCeterisParibus.svg?branch=master)](https://travis-ci.org/ModelOriented/pyCeterisParibus) [![Coverage
Status](https://img.shields.io/codecov/c/github/ModelOriented/pyCeterisParibus/master.svg)](https://codecov.io/github/ModelOriented/pyCeterisParibus?branch=master)   (maintainer: [kmichael08](https://github.com/kmichael08))
* ceterisParibusD3 [![Build Status](https://api.travis-ci.org/ModelOriented/ceterisParibusD3.svg?branch=master)](https://travis-ci.org/ModelOriented/ceterisParibusD3) [![Coverage
Status](https://img.shields.io/codecov/c/github/ModelOriented/ceterisParibusD3/master.svg)](https://codecov.io/github/ModelOriented/ceterisParibusD3?branch=master)   (maintainer: [flaminka](https://github.com/flaminka))




## Experimental or without maintenance (looking for maintainer!!!)

These packages contain useful features, are still in use but we are looking for an active maintainer.

* randomForestExplainer [![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/randomForestExplainer)](https://cran.r-project.org/package=randomForestExplainer) [![Build Status](https://api.travis-ci.org/MI2DataLab/randomForestExplainer.svg?branch=master)](https://travis-ci.org/MI2DataLab/randomForestExplainer) [![Coverage
Status](https://img.shields.io/codecov/c/github/MI2DataLab/randomForestExplainer/master.svg)](https://codecov.io/github/MI2DataLab/randomForestExplainer?branch=master) [![Downloads](http://cranlogs.r-pkg.org/badges/grand-total/randomForestExplainer?color=orange)](http://cranlogs.r-pkg.org/badges/grand-total/randomForestExplainer) 
* factorMerger [![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/factorMerger)](https://cran.r-project.org/package=factorMerger) [![Build Status](https://api.travis-ci.org/MI2DataLab/factorMerger.svg?branch=master)](https://travis-ci.org/MI2DataLab/factorMerger) [![Coverage
Status](https://img.shields.io/codecov/c/github/MI2DataLab/factorMerger/master.svg)](https://codecov.io/github/MI2DataLab/factorMerger?branch=master) [![Downloads](http://cranlogs.r-pkg.org/badges/grand-total/factorMerger?color=orange)](http://cranlogs.r-pkg.org/badges/grand-total/factorMerger)
* cr17 [![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/cr17)](https://cran.r-project.org/package=cr17) [![Build Status](https://api.travis-ci.org/geneticsMiNIng/cr17.svg?branch=master)](https://travis-ci.org/geneticsMiNIng/cr17) [![Coverage
Status](https://img.shields.io/codecov/c/github/geneticsMiNIng/cr17/master.svg)](https://codecov.io/github/geneticsMiNIng/cr17?branch=master) [![Downloads](http://cranlogs.r-pkg.org/badges/grand-total/cr17?color=orange)](http://cranlogs.r-pkg.org/badges/grand-total/cr17)
* MLGenSig [![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/MLGenSig)](https://cran.r-project.org/package=MLGenSig) [![Build Status](https://api.travis-ci.org/geneticsMiNIng/MLGenSig.svg?branch=master)](https://travis-ci.org/geneticsMiNIng/MLGenSig) [![Coverage
Status](https://img.shields.io/codecov/c/github/geneticsMiNIng/MLGenSig/master.svg)](https://codecov.io/github/geneticsMiNIng/MLGenSig?branch=master) [![Downloads](http://cranlogs.r-pkg.org/badges/grand-total/MLGenSig?color=orange)](http://cranlogs.r-pkg.org/badges/grand-total/MLGenSig)
* modelDown [![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/modelDown)](https://cran.r-project.org/package=modelDown) [![Build Status](https://api.travis-ci.org/MI2DataLab/modelDown.svg?branch=master)](https://travis-ci.org/MI2DataLab/modelDown) [![Coverage
Status](https://img.shields.io/codecov/c/github/MI2DataLab/modelDown/master.svg)](https://codecov.io/github/MI2DataLab/modelDown?branch=master) 
* pyBreakDown [![Build Status](https://api.travis-ci.org/MI2DataLab/pyBreakDown.svg?branch=master)](https://travis-ci.org/MI2DataLab/pyBreakDown) [![Coverage
Status](https://img.shields.io/codecov/c/github/MI2DataLab/pyBreakDown/master.svg)](https://codecov.io/github/MI2DataLab/pyBreakDown?branch=master) 



## In the sunset phase, without maintenance

Key features from these packages are copied to another packages.

* ceterisParibus [![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/ceterisParibus)](https://cran.r-project.org/package=ceterisParibus) [![Build Status](https://api.travis-ci.org/pbiecek/ceterisParibus.svg?branch=master)](https://travis-ci.org/pbiecek/ceterisParibus) [![Coverage
Status](https://img.shields.io/codecov/c/github/pbiecek/ceterisParibus/master.svg)](https://codecov.io/github/pbiecek/ceterisParibus?branch=master) [![Downloads](http://cranlogs.r-pkg.org/badges/grand-total/ceterisParibus?color=orange)](http://cranlogs.r-pkg.org/badges/grand-total/ceterisParibus) (development moved to `ingredients`)
* ceterisParibus2 [![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/ceterisParibus2)](https://cran.r-project.org/package=ceterisParibus2) [![Build Status](https://api.travis-ci.org/ModelOriented/ceterisParibus2.svg?branch=master)](https://travis-ci.org/ModelOriented/ceterisParibus2) [![Coverage
Status](https://img.shields.io/codecov/c/github/ModelOriented/ceterisParibus2/master.svg)](https://codecov.io/github/ModelOriented/ceterisParibus2?branch=master)  (development moved to `ingredients`)
* DALEX2 [![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/DALEX2)](https://cran.r-project.org/package=DALEX2) [![Build Status](https://api.travis-ci.org/ModelOriented/DALEX2.svg?branch=master)](https://travis-ci.org/ModelOriented/DALEX2) [![Coverage
Status](https://img.shields.io/codecov/c/github/ModelOriented/DALEX2/master.svg)](https://codecov.io/github/ModelOriented/DALEX2?branch=master)[![Downloads](http://cranlogs.r-pkg.org/badges/grand-total/DALEX2?color=orange)](http://cranlogs.r-pkg.org/badges/grand-total/DALEX2) (development moved to `DALEX`)
* breakDown [![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/breakDown)](https://cran.r-project.org/package=breakDown) [![Build Status](https://api.travis-ci.org/pbiecek/breakDown.svg?branch=master)](https://travis-ci.org/pbiecek/breakDown) [![Coverage
Status](https://img.shields.io/codecov/c/github/pbiecek/breakDown/master.svg)](https://codecov.io/github/pbiecek/breakDown?branch=master) [![Downloads](http://cranlogs.r-pkg.org/badges/grand-total/breakDown?color=orange)](http://cranlogs.r-pkg.org/badges/grand-total/breakDown) (development moved to `iBreakDown`)
* live [![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/live)](https://CRAN.R-project.org/package=live) [![Total Downloads](http://cranlogs.r-pkg.org/badges/grand-total/live?color=orange)](https://cranlogs.r-pkg.org/badges/grand-total/live) [![Build Status](https://travis-ci.org/MI2DataLab/live.svg?branch=master)](https://travis-ci.org/MI2DataLab/live) [![Coverage Status](https://img.shields.io/codecov/c/github/MI2DataLab/live/master.svg)](https://codecov.io/github/MI2DataLab/live?branch=master)[![Downloads](http://cranlogs.r-pkg.org/badges/grand-total/live?color=orange)](http://cranlogs.r-pkg.org/badges/grand-total/live) (development moved to `localModel`)



## Family of Model Explainers

![Family of Model Explainers](images/family.png)

## Architecture of DrWhy

`DrWhy` works on fully trained predictive models. Models can be created with any tool. 

`DrWhy` uses `DALEX2` package to wrap model with additional matadata required for explanations, like validation data, predict function etc.

Explainers for predictive models can be created with model agnostic or model specific functions implemented in various packages.


![Architecture of DrWhy](images/DrWhy.png)

![Hype_Cycle](images/Hype_Cycle.svg)


