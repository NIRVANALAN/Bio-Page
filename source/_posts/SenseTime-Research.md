---
title: SenseTime Research
date: 2019-09-26 16:43:52
tags:
---

# Person Re-identification research in SenseTime

I started my research in SenseTime since March 2019 as CV research intern. I mainly focus on **Target Re-Identification(REID)** on large scale dataset.

# Background
Person re-identification (ReID) has achieved significant improvement under the single-domain setting. However, directly exploiting a model to new domains is always faced with huge performance drop, and adapting the model to new domains without target-domain identity labels is still challenging. Though researchers now have reached both high accuracy and Top-K on large datasets like Market1501, CUHK03 and DukeMTMC-reID, I argue that the problem of re-identification is **far from solved**. Here I list 2 reasons below:
## False Tesing Method
   The current model testing method contradicts with real scene. ReID is essentially a **ZSL(zero shot learning)** problem and the testing domain usually share no overlap with the training domain. However, the current published paper still verify the effectiveness of their method by training and testing on the same dataset. Although the ID does not overlap, they basically share the same domain which is evidently impossible under real scene.  
## Limited Dataset Size
   The current released dataset's size cannot support the deployment of ReID system. Most published method demonstrates thir effectiveness by showing the their result on Market1501(1500 IDs) and CUHK03(1467 IDs), however, under real scene, the retrivel will be million-scale under different scenaries.
Therefore, I argue that the development future of ReID lies on the improvement of model generalization and adaptation under different scenaries.

# My work
My research in SenseTime is focused on solving domain adaptation and model generalization with **part-based** and **semantic-aided** CNN models. 

As global feature cannot provide enough information, local and semantic information can provide auxiliary context.

Our research and model supported ten million level person classification and retrieval with high mean average precision.