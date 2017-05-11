# Functioning of the generator

The generator searches for all milestones with at least one closed ticket.
In closed milestones is appended the closing-date to the name.

In open milestones, with at least one closed ticket, is used the current year,
 month and day are replaced by "XX".

The milestones are sorted descending by closing-date.


## Determination "Bug" / "Feature" and other cases

The labels of the tickets will be analyzed to identify the tickets as a bug, a  
feature, a documentation improvement or as a maintenance case for the purpose
of separate collection.
Therefore the following label names be searched:

Bug | Feature | Documentation | Maintenance
--- | ------- | ------------- | -----------
bug | enhancement | doc | maintenance
Bug | Enhancement | Doc | Maintenance
defect | feature | documentation | service
Defect | Feature | Documentation | Service


## Exclude Tickets

Other Label names be searched to serve as exclusion attribute.
These can be set as a single label or an additional label:

Exclude (lowercase) | Exclude (capitalized)
--------------- | --------------
duplicate | Duplicate
question | Question
invalid | Invalid
wontfix | Wontfix


## Tip

The Changelog at best generate, after closing the milestone for the new release
you want to publish and before create the tag for this release.
