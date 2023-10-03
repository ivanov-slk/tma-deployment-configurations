local params = import 'params-develop.libsonnet';

{
  apiVersion: 'apps/v1',
  kind: 'Deployment',
  metadata: {
    name: params.name,
    namespace: params.namespace,
    labels: {
      app: params.name,
    },
  },
  spec: {
    replicas: params.deployment.replicas,
    selector: {
      matchLabels: {
        app: params.name,
      },
    },
    template: {
      metadata: {
        labels: {
          app: params.name,
        },
      },
      spec: {
        containers: [
          {
            image: params.deployment.image,
            name: params.name,
          },
        ],
      },
    },
  },
}
