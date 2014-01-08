# Tidy data

Files available in this package:

* `tidy-data.tex` and `tidy-data.pdf`: the latex source to generate the paper 
  and the resulting pdf

* `data/`: raw datasets, the code to tidy them, and the results, as used in 
   Section 3. Source individual `.R` files to recreate the tidied data.

* `t-test.r`: code used to generate Table 14 (`model-1.tex` and `model-2.tex`), 
  comparing data needed for paired t-test vs. a mixed effects model.

* `case-study/`: the code and data for the case study in Section 5. 
  Run `case-study.r` to recreate all tables and plots.

<!--
zip -ur submission.zip tidy-data.tex tidy-data.pdf references.bib \
  model-1.tex model-2.tex data/ case-study/
-->