This element allows the use to select one (in single selection mode) or multiple (in single selection mode) elements. Multiple selection can be triggered with #beMultiple, single selection can be triggered with #beSingle .Default is single selection.

The general idea is that you pass the colletion of options to #list: and use #labels: to customize their rendering. The selected option(s) can be set with: #selected:.


This whole class is kind of an akward hack, but noone needs MI anyway. You can always get a way with composition and delegation