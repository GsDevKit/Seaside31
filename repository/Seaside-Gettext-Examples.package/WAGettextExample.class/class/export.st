localization
export
  "WAGetTextExporter not implemented for GemStone and the method exportTemplate does not exist (naturally) ... apprently not used? See https://github.com/GsDevKit/Seaside31/issues/55 & https://github.com/GsDevKit/Seaside31/issues/56"

  (Smalltalk at: #'WAGetTextExporter') new perform: #'exportTemplate'