---
title: "Technical details in the category definition"
description: ""
url: "technical-details/technical-details-in-the-category-definition"
weight: 10
---

### Details for default banners

This allows you to select a banner file to be shown, when no active banners are found. 
This selection takes priority over modul definition "Hide when empty".


### Display definition

* Show all banners

If you choose this option, all active banners will be showed in front end.
In addition, you can choose:

* Limiting the number of banners

Here, the number can be limited. Default is 0: show all banners, otherwise the
maximum number of banners that will be showed.

* Random order

If you choose this option, the banners will shown in a random order.


### Display of statistics

* Protect the statistic

Show the banner statistic for this category to certain user groups only.
Administrators have unlimited access to all banner statistics.


### Expert settings

* Debug mode for all "Banner" classes

The debug mode writes runtime information to the log file (var/logs/prod-Y-M-D-banner_debug.log).

This should only be activated when requested by the developer, e.g. for debugging.
