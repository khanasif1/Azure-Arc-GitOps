# Azure Arc enabled Kubernetes GitOps

<!-- wp:heading -->
<h2>Azure Arc Kubernetes with GitOps</h2>
<!-- /wp:heading -->

<!-- wp:image {"sizeSlug":"large"} -->
<figure class="wp-block-image size-large"><img src="https://raw.githubusercontent.com/khanasif1/Azure-Arc-GitOps/main/images/Gitops.PNG" alt=""/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>GitOps is the practice of declaring the desired state of Kubernetes cluster configurations (deployments, namespaces, etc.) in a Git repository. This declaration is followed by a polling and pull-based deployment of these cluster configurations using an operator. The Git repository can contain:</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><li>YAML-format manifests describing any valid Kubernetes resources, including Namespaces, ConfigMaps, Deployments, DaemonSets, etc.</li><li>Helm charts for deploying applications.</li></ul>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p><a href="https://docs.fluxcd.io/">Flux</a>, a popular open-source tool in the GitOps space, can be deployed on the Kubernetes cluster to ease the flow of configurations from a Git repository to a Kubernetes cluster. Flux supports the deployment of its operator at both the cluster and namespace scopes. A flux operator deployed with namespace scope can only deploy Kubernetes objects within that specific namespace. The ability to choose between cluster or namespace scope helps you achieve multi-tenant deployment patterns on the same Kubernetes cluster.</p>
<!-- /wp:paragraph -->

<!-- wp:heading -->
<h2>Solution Details</h2>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>The solution is a simple AspNet Core MVC application, with a docker file which helps in building solution container. The container is then published to public dockerhub. We also have .ps1 scrips to deploy Gitops configuration to Azure Arc enabled kubernetes cluster.</p>
<!-- /wp:paragraph -->

<!-- wp:heading {"level":4} -->
<h4>Container Build</h4>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Navigate to <strong>&lt;Drive path>\Azure-Arc-GitOps\ContainerArtifacts\DockerProjectScript_V1.ps1</strong>. Its is a simple script with couple of segments.</p>
<!-- /wp:paragraph -->

<!-- wp:list -->
<ul><li>First segment is building container</li><li>Login to docker hub and publish container</li></ul>
<!-- /wp:list -->

<!-- wp:heading {"level":4} -->
<h4>K8s Artifacts Deployment</h4>
<!-- /wp:heading -->

<!-- wp:list -->
<ul><li>Navigate to <strong>&lt;Drive Path>\Azure-Arc-GitOps\K8sArtifacts\yaml\web.yaml</strong></li><li>This web.yaml will be used by Gitops to configure the application in k8s </li><li>File<strong> arc_gitdeploy.ps1 </strong>contains GitOps deployment steps for Azure Arc K8s</li></ul>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->