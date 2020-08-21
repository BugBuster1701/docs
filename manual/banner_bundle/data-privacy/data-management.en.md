---
title: "Data management"
description: "How long are special data stored?"
url: "data-privacy/contao-banner-bundle-data-management"
weight: 30
---

The hash values for the detection of different visitors are checked with every call, Elapsed time hash values will be deleted. Holding time is equivalent to the block time, the default value is 300 seconds, i.e. 5 minutes.

The number of views / clicks per day is stored permanently, the other evaluations are generated from it. This storage can be deleted via the back end, the counter starts then again at 0.