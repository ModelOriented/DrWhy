# DrWhy

DrWhy is the collection of tools for Explainable AI (XAI). It's based on shared principles and simple grammar for exploration, explanation and visualisation of predictive models.

## Architecture of DrWhy

DrWhy works on fully trained predictive models. Models can be created with any tool. 

DrWhy uses DALEX2 package to wrap model with additional matadata required for explanations, like validation data, predict function etc.

Explainers for predictive models can be created with model agnostic or model specific functions implemented in various packages.


![Architecture of DrWhy](images/DrWhy.png)

# Local / Individual

## Variable attribution

Variable attribution explainers implemented in the `breakDown2` package in the [local_attributions](https://pbiecek.github.io/breakDown2/reference/local_attributions.html) function.

```
breakDown2::local_attributions()
```

<img width="300px" src="images/local_attributions_1.jpg"/>
&nbsp;&nbsp;<img width="300px" src="images/local_attributions_2.jpg"/>

## Variable profiles




# Global / Population


