# Changelog

## [1.4.1](https://github.com/ivanov-slk/tma-deployment-configurations/compare/v1.4.0...v1.4.1) (2023-09-23)


### Continuous Integration & Continuous Delivery

* Use 'latest' tag to ease new images' deployment, at least until (if) 'argocd-image-updater' is installed in the Kubernetes cluster. ([fef37d6](https://github.com/ivanov-slk/tma-deployment-configurations/commit/fef37d6bb84a1523ce573995305714aa0307e5e6))

## [1.4.0](https://github.com/ivanov-slk/tma-deployment-configurations/compare/v1.3.0...v1.4.0) (2023-09-22)


### Continuous Integration & Continuous Delivery

* Use v1 images for the data generator. ([53b8d40](https://github.com/ivanov-slk/tma-deployment-configurations/commit/53b8d404e591004a93d9c0914e927538fb571d60))


### Features

* Simplify the data generator chart and remove any not currently used functionalities. ([32989ce](https://github.com/ivanov-slk/tma-deployment-configurations/commit/32989cef38a736457048f5d1bdeccbf24bb35784))

## [1.3.0](https://github.com/ivanov-slk/tma-deployment-configurations/compare/v1.2.1...v1.3.0) (2023-09-22)

### Maintenance

- Use v0 for the data generator image instead of a specific tag. ([431240b](https://github.com/ivanov-slk/tma-deployment-configurations/commit/431240bd7b77a24b9b0623b3a50d6d0b9c723970))

### Features

- Add NATS application in Argo via NATS's official Helm chart. ([3d864bd](https://github.com/ivanov-slk/tma-deployment-configurations/commit/3d864bd853d9cde9d358e578c3392d0049ef5dcf))
- Start using the dedicated data generator image. ([2b4164c](https://github.com/ivanov-slk/tma-deployment-configurations/commit/2b4164c79dd86c7ec8dea2e70167a8adb09b5b44))

### Bug Fixes

- Configure port skipping by linkerd for NATS ports due to Linkerd not properly working with opaque ports. ([1f16f36](https://github.com/ivanov-slk/tma-deployment-configurations/commit/1f16f36079823311ef9de67326e199a253650b10))

## [1.2.1](https://github.com/ivanov-slk/tma-deployment-configurations/compare/v1.2.0...v1.2.1) (2023-09-03)

### Continuous Integration

- Add action for parsing jsonnet files. ([a6a81f8](https://github.com/ivanov-slk/tma-deployment-configurations/commit/a6a81f888dd504adfcbaa44674ae32677d744f54))
- Run tests on push to main instead of on a pull request, as this is the important check. ([193927a](https://github.com/ivanov-slk/tma-deployment-configurations/commit/193927a10af54a2f4ea60fdcfca32d726d664c9c))

## [1.2.0](https://github.com/ivanov-slk/tma-deployment-configurations/compare/v1.1.0...v1.2.0) (2023-08-07)

### Features

- Add basic yamls for the service tester. ([be60bda](https://github.com/ivanov-slk/tma-deployment-configurations/commit/be60bdaf2ce3ad3cf2a169d5465986915d814474))
- Add hooks to the service tester job. ([a3ba5cc](https://github.com/ivanov-slk/tma-deployment-configurations/commit/a3ba5cc5b5e58c3bea2bf6b800e4b84365c8fb8d))

## [1.1.0](https://github.com/ivanov-slk/tma-deployment-configurations/compare/v1.0.0...v1.1.0) (2023-08-05)

### Documentation

- Add a readme for the ArgoCD objects. ([75bdb52](https://github.com/ivanov-slk/tma-deployment-configurations/commit/75bdb525287929af74ce0671a2541121b96b3ae9))

### Features

- Add ArgoCD application for the service tester. ([7f308c6](https://github.com/ivanov-slk/tma-deployment-configurations/commit/7f308c67e5382f97a6713251ef47b70cf4ffa509))
- Add ArgoCD application for the tma data generator. ([4f4c810](https://github.com/ivanov-slk/tma-deployment-configurations/commit/4f4c810e664e2724c460784dd5481a0fb66d3d17))
- Add ArgoCD project for the temperature monitoring application. ([c38f347](https://github.com/ivanov-slk/tma-deployment-configurations/commit/c38f3479d32e0e65878e0e8671b30a24a9b3aba8))

## 1.0.0 (2023-04-21)

### Documentation

- Update the readme. ([1b10dcb](https://github.com/ivanov-slk/tma-deployment-configurations/commit/1b10dcb223bd07c61c60c4a9609346b2684de55f))

### Continuous Integration

- Add github actions; ([1b10dcb](https://github.com/ivanov-slk/tma-deployment-configurations/commit/1b10dcb223bd07c61c60c4a9609346b2684de55f))
- Add initial Helm template for the data generator service; ([1b10dcb](https://github.com/ivanov-slk/tma-deployment-configurations/commit/1b10dcb223bd07c61c60c4a9609346b2684de55f))
- Add initial mock configuration for the data generator to ensure integrations work properly. ([1b10dcb](https://github.com/ivanov-slk/tma-deployment-configurations/commit/1b10dcb223bd07c61c60c4a9609346b2684de55f))
