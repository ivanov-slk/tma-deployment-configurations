{
  name: 'tma-dashboard',
  namespace: 'tma',
  deployment: {
    image: 'ghcr.io/ivanov-slk/tma-dashboard:latest',
    replicas: 1,
  },
  service: {
    type: 'LoadBalancer',
  },
}
