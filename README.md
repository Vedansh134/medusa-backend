<p align="center">
  <a href="https://www.medusajs.com">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://user-images.githubusercontent.com/59018053/229103275-b5e482bb-4601-46e6-8142-244f531cebdb.svg">
    <source media="(prefers-color-scheme: light)" srcset="https://user-images.githubusercontent.com/59018053/229103726-e5b529a3-9b3f-4970-8a1f-c6af37f087bf.svg">
    <img alt="Medusa logo" src="https://user-images.githubusercontent.com/59018053/229103726-e5b529a3-9b3f-4970-8a1f-c6af37f087bf.svg">
    </picture>
  </a>
</p>
<h1 align="center">
  Medusa
</h1>

<h4 align="center">
  <a href="https://docs.medusajs.com">Documentation</a> |
  <a href="https://www.medusajs.com">Website</a>
</h4>

<p align="center">
  Building blocks for digital commerce
</p>
<p align="center">
  <a href="https://github.com/medusajs/medusa/blob/develop/LICENSE">
    <img src="https://img.shields.io/badge/license-MIT-blue.svg" alt="Medusa is released under the MIT license." />
  </a>
  <a href="https://github.com/medusajs/medusa/blob/develop/CONTRIBUTING.md">
    <img src="https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat" alt="PRs welcome!" />
  </a>
 <p align="center">
  <a href="https://twitter.com/intent/follow?screen_name=medusajs">
    <img src="https://img.shields.io/twitter/follow/medusajs.svg?label=Follow%20@medusajs" alt="Follow @medusajs" />
  <a href="https://discord.gg/medusajs">
    <img src="https://img.shields.io/badge/chat-on%20discord-7289DA.svg" alt="Discord Chat" />
  </a>
</p>

## Getting Started

Visit the [Documentation](https://docs.medusajs.com/learn) to set up a Medusa application.

## What is Medusa

Medusa is an ecommerce platform with a built-in framework for customization that allows you to build custom commerce applications without reinventing core commerce logic. The framework and modules can be used to build advanced B2B or DTC ecommerce stores, marketplaces, PoS systems, service businesses, or any product that needs foundational commerce primitives. All commerce modules are open-source and freely available on npm.

Learn more about [Medusa’s architecture](https://docs.medusajs.com/learn/advanced-development/architecture/overview) and [commerce modules](https://docs.medusajs.com/resources/commerce-modules) in the Docs.

## Upgrades & Integrations

Follow the [Release Notes](https://github.com/medusajs/medusa/releases) to keep your Medusa project up-to-date.

Check out all [available Medusa integrations](https://docs.medusajs.com/resources/integrations).

## Community & Contributions

The community and core team are available in [GitHub Discussions](https://github.com/medusajs/medusa/discussions), where you can ask for support, discuss roadmap, and share ideas.

Our [Contribution Guide](https://github.com/medusajs/medusa/blob/develop/CONTRIBUTING.md) describes how to contribute to the codebase and Docs.

Join our [Discord server](https://discord.com/invite/medusajs) to meet other community members.

## Other channels

- [GitHub Issues](https://github.com/medusajs/medusa/issues)
- [Community Discord](https://discord.gg/medusajs)
- [Twitter](https://twitter.com/medusajs)
- [LinkedIn](https://www.linkedin.com/company/medusajs)
- [Medusa Blog](https://medusajs.com/blog/)

## License

Licensed under the [MIT License](https://github.com/medusajs/medusa/blob/develop/LICENSE

## Update by Vedansh kumar

First, I forked the official GitHub repo of the Medusa backend for a more straightforward setup, using guidance from the Medusa official documentation. After forking the repo, I added my Terraform folder and the deploy.yml file in the .github/workflows folder to enable GitHub Actions.

Next, I initialized the Terraform setup, where I configured the code for several components:

Region: Specified the AWS region for deployment.
VPC: Created a Virtual Private Cloud.
Security Groups: Set up security groups to control traffic.
ECS (Elastic Container Service): Configured the ECS cluster.
ECS Task Definition: Defined the task configuration for running Medusa.
I also created a Dockerfile for the Medusa backend and pushed it to AWS ECR (Elastic Container Registry).
brake for tf setup

Alongside the Terraform configuration, I set up a GitHub Actions pipeline to automate the deployment process. However, I encountered some challenges in fully implementing the pipeline. Despite following tutorials on YouTube and leveraging the assistance of ChatGPT, I wasn't able to complete it as intended.

To start the Terraform deployment, I ran the following commands in sequence:

terraform init
terraform plan
terraform validate
terraform apply
Once executed, my infrastructure was ready! Here’s a look at my AWS Management Console for ECS.

Unfortunately, I was unable to complete the project entirely, but I learned a lot through this process, and I appreciate the resources available online, including YouTube and ChatGPT.

Thank you for giving the opportunity but sadly i not complete this project completly 
Thank you


