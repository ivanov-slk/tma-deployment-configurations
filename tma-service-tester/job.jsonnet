local params = import 'params.libsonnet';

{
    "apiVersion": "batch/v1",
    "kind": "Job",
    "metadata": {
        "name": params.name
    },
    "spec": {
        "template": {
            "spec": {
                "containers": [
                    {
                        "image": params.image,
                        "name": params.name,
                    }
                ]
            }
        }
    }
}
