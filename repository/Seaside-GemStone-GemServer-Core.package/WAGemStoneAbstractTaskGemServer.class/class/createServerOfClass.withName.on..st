instance creation
createServerOfClass: aTaskClass withName: aName on: anArrayOfPortNumbers
  "taskClass replaces serverClass for task gem servers"

  ^ self new
    taskClass: aTaskClass;
    name: aName;
    ports: anArrayOfPortNumbers;
    yourself