# Beyond Capacity: Analyzing Shelter Use and Government Responses to Homelessness in Toronto

## Overview

This paper investigates the utilization of shelters in Toronto during 2022, focusing on occupancy rates and the impact of external factors such as the COVID-19 pandemic, government policies, and social crises.

## Data Source

The dataset, obtained from OpenDataToronto, encompasses daily shelter and overnight service occupancy and capacity metrics. A detailed exploration of these figures provides insights into the demand dynamics and effectiveness of the shelter system in Toronto.

## File Structure

- `data/raw_data`: Contains the original, unprocessed dataset obtained from OpenDataToronto.
- `data/analysis_data`:Includes processed data files that have been cleaned, transformed, and prepared for analysis.
-  `model`: Contains the statistical models, used to interpret the data and derive insights regarding shelter use and the impact of external factors.
-  `other`: Contains details about LLM chat interactions, and sketches.
-  `scripts`: Contains the R scripts used to simulate, download, clean and test data, as well as the scripts for model.
-  `paper`: Contains the files used to generate the paper and dataset, including the Quarto document and the PDF of the paper and dataset, as well as the reference bibliography file.

## Analysis

Bayesian statistical models were employed to dissect occupancy patterns and service utilization, accounting for a variety of factors including temporal trends, geographic distribution, and demographic segmentation.

## Findings

The analysis revealed seasonal peaks in shelter occupancy, a high reliance on emergency shelters, and demographic disparities in shelter use. These insights are pivotal for informing policy-making and resource allocation.

## Usage

The insights from this paper can guide policymakers, social service providers, and researchers in understanding and responding to the dynamics of shelter demand and supply. The data and analysis are relevant for create future strategies and policies aimed at supporting homeless populations in urban settings.

## Authors

- Jerry Lu (Yen-Chia Lu)
- Sinan Ma
- Che-Yu Wang

## Acknowledgments

Part of the R code used in this paper was adapted from *Telling Stories with Data* (Alexander 2023). We thank the City of Toronto for providing open access to crucial data that made this research possible.

## License

This work is licensed under the MIT License - see the LICENSE.md file for details.

## LLM Usage

An LLM, in particular Chat-GPT4.0, was used to aid in the writing of this paper. In particular, it was primarily used to aid with the coding aspect of the paper as opposed to the actual writing. The entire chat history can be found in `inputs/llm/usage.txt`.
