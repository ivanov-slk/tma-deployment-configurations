from diagrams import Cluster, Diagram
from diagrams.onprem.queue import Nats
from diagrams.k8s.compute import Pod
from diagrams.k8s.compute import Deployment

with Diagram("Temperature monitoring application", show=False):
    nats_generated_data = Nats("generated-data")

    with Cluster("Source of Data"):
        [
            Pod("Data Generator 1"),
            Pod("Data Generator 2"),
            Pod("Data Generator N"),
        ] >> nats_generated_data

    data_aggregator = Deployment("Data Aggregator")
    nats_generated_data >> data_aggregator
