# Functioning of the generator

The generator searches for all milestones with at least one closed ticket.
In closed milestones is appended the closing-date to the name.

In open milestones, with at least one closed ticket, is used the current year,
 month and day are replaced by "XX".

The milestones are sorted descending by closing-date.


## Determination "Bug" / "Feature"

The labels of the tickets will be analyzed to identify the tickets as a bug or
feature for the purpose of separate collection.
Therefore the following label names be searched:

Bug | Feature
--- | -------
bug | enhancement
Bug | Enhancement
defect | feature
Defect | Feature


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
