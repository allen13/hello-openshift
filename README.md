hello-openshift
----------------------------

Topics

* YAML
* Kubernetes Overview
* Manually build an openshift app

yaml
----

YAML Ain't Markup Language is a data serialization language that matches user’s expectations about data. It designed to be human friendly and works perfectly with other programming languages. It is useful to manage data and includes Unicode printable characters.

Understanding YAML is important because almost all container related configuration depends on it. A few examples are:

* Docker Compose
* All Kubernetes configs
* Github Actions
* Gitlab CI

Learn how to use yaml by reviewing the tutorial and typing each example into a yaml to json converter

* [tutorial](https://learnxinyminutes.com/docs/yaml/)
* [yaml to json](https://onlineyamltools.com/convert-yaml-to-json)

kubernetes
----------

Kubernetes is an open source system for automating deployment, scaling, and management of containerized applications. It was started by Google in 2014 and later donated to the Cloud Native Computing Foundation.
With Kubernetes we can quickly deploy our applications, scaling it according to our needs, without having to stop anything in the process. It is made to be portable, extensive and self-healing, granting an easier management from people who have to administer the system. Think of it as a distributed operating system.

Learn how openshift components interact:
* [Overview of Kubernetes Components](https://medium.com/@karthikeyan_krishnaswamy/overview-of-kubernetes-34d8e0e59b26)


kubernetes api
--------------

The core of Kubernetes' control plane is the API server. The API server exposes an HTTP API that lets end users, different parts of your cluster, and external components communicate with one another.

The Kubernetes API lets you query and manipulate the state of objects in the Kubernetes API (for example: Pods, Namespaces, ConfigMaps, and Events).

Most operations can be performed through the kubectl command-line interface or other command-line tools, such as kubeadm, which in turn use the API. However, you can also access the API directly using REST calls.

Consider using one of the client libraries if you are writing an application using the Kubernetes API.

Resources in this lesson:

Kubernetes Resources
* Nodes
* Pods
* Deployments -> Creates ReplicaSet -> Creates Pods
* Services

Openshift Resources
* Routes
* Build

Links:
* [Kubernetes API](https://kubernetes.io/docs/concepts/overview/kubernetes-api/)
* [Openshift API](https://docs.openshift.com/container-platform/4.5/rest_api/index.html)


manually build an openshift app
-------------------------------

Fill in the missing information for each resource

Create your own github repo based on this repo

Create the build See https://docs.openshift.com/container-platform/3.11/dev_guide/builds/index.html

    oc apply -f buildconfig.yml
    oc start-build hello-openshift
    oc get builds -w

Fill in the pod See https://kubernetes.io/docs/concepts/workloads/pods/

    oc apply -f pod.yml

Fill in the service to target the pod. See https://kubernetes.io/docs/concepts/services-networking/service/

    oc apply -f svc.yml

Create a route that targets the service and exposes it to the outside world See https://docs.openshift.com/container-platform/3.11/architecture/networking/routes.html#route-types

    oc apply -f route.yml

Finally create a Deployment that wraps up the pod and lets you easily deploy updates and add more replicas See https://kubernetes.io/docs/concepts/workloads/controllers/deployment/

    oc delete pod hello-openshift
    oc apply -f deployment.yml