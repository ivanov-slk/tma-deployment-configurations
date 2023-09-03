local params = import 'params-develop.libsonnet';

{
  apiVersion: 'batch/v1',
  kind: 'Job',
  metadata: {
    name: params.name,
    namespace: params.namespace,
  },
  spec: {
    template: {
      spec: {
        restartPolicy: 'OnFailure',
        containers: [
          {
            image: params.image,
            name: params.name,
          },
        ],
      },
    },
  },
}
