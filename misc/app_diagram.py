from diagrams import Cluster, Diagram, Edge
from diagrams.onprem.queue import Nats
from diagrams.k8s.compute import Pod
from diagrams.k8s.compute import Deploy

graph_attr = {
    "bgcolor": "transparent",
    "dpi": "64",
}
with Diagram(
    "Temperature monitoring application",
    show=False,
    curvestyle="curved",
    graph_attr=graph_attr,
    filename="misc/temperature_monitoring_application",
):
    with Cluster("Data Generation"):
        nats_generated_data = Nats("generated-data")
        data_generator = [
            Pod("Data Generator 1"),
            Pod("Data Generator 2"),
            Pod("Data Generator N"),
        ] >> nats_generated_data

    dashboard_fontcolor = "firebrick"
    with Cluster("Monitoring Dashboard", graph_attr={"fontcolor": dashboard_fontcolor}):
        dashboard_server = [Deploy("Dashboard Server", fontcolor=dashboard_fontcolor)]
        # nats_processed_data >> dashboard_server
        (
            nats_generated_data
            >> Edge(color=dashboard_fontcolor, style="dashed")
            >> dashboard_server
        )
