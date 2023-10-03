local params = import 'params-develop.libsonnet';

{
  apiVersion: 'v1',
  kind: 'Service',
  metadata: {
    name: params.name,
    namespace: params.namespace,
  },
  spec: {
    selector: {
      app: params.name,
    },
    ports: [
      {
        protocol: 'TCP',
        port: 80,
        targetPort: 1337,
      },
    ],
    type: params.service.type,
  },
}
