private
waitForStartGems: message
  (self gemServer waitForStartGems: 20)
    ifFalse: [ 
      Transcript
        cr;
        show: message.
      self assert: false ]