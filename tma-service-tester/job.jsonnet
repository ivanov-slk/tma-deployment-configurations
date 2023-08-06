local params = import 'params-develop.libsonnet';

{
  apiVersion: 'batch/v1',
  kind: 'Job',
  metadata: {
    name: params.name,
    annotations: [
      { 'argocd.argoproj.io/hook': 'PostSync' },
      { 'argocd.argoproj.io/hook-delete-policy': 'BeforeHookCreation' },
    ],
  },
  spec: {
    template: {
      spec: {
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
