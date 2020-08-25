# RobotsPencils
swift

1. My design is under 'Group' MyDesign.
2. Define protocol 'DataType' to unify data type, any data needed to save on server store has to conform to this protocol.
3. Define protocol 'NetWorkService' to unify networkservice for different server store (RESTful, GraphQL, firebase).
4. Define 'NetworkServiceFactory' to create 'NetWorkService' for different server store.
5. 'RPComment' provides function to save data (RPAnnotation - DataType) to 'NetWorkService' for different server store.
6. 'ExampleUsage' shows the usage.
