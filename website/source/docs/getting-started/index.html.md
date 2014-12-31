---
page_title: "Getting Started"
sidebar_current: "gettingstarted"
---

# Getting Started

The Vagrant getting started guide will walk you through your first
Vagrant project, and show off the basics of the major features Vagrant
has to offer.

If you are curious what benefits Vagrant has to offer, you
should also read the ["Why Vagrant?"](/docs/why-vagrant) page.

The getting started guide will use Vagrant with [VirtualBox](http://www.virtualbox.org),
since it is free, available on every major platform, and built-in to
Vagrant. After reading the guide though, do not forget that Vagrant
can work with [many other providers](/docs/getting-started/providers.html).

Before diving into your first project, please [install the latest version of Vagrant](/docs/installation).
And because we will be using [VirtualBox](http://www.virtualbox.org) as our
provider for the getting started guide, please install that as well.

-> **More of a book person?** If you prefer to read a physical book, you may be
interested in [Vagrant: Up and Running](http://www.amazon.com/gp/product/1449335837/ref=as_li_qf_sp_asin_il_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=1449335837&linkCode=as2&tag=vagrant-20), written by the author of Vagrant and published by O'Reilly.

## Up and Running

```shell
$ vagrant init hashicorp/precise32
$ vagrant up
```

After running the above two commands, you will have a fully running
virtual machine in [VirtualBox](https://www.virtualbox.org) running
Ubuntu 12.04 LTS 32-bit. You can SSH into this machine with
`vagrant ssh`, and when you are done playing around, you can remove
all traces of it with `vagrant destroy`.

Now imagine every project you have ever worked on being this easy to
set up.

With Vagrant, `vagrant up` is all you need to work on any project,
to install every dependency that project needs, and to set up any
networking and synced folders so you can continue working from the
comfort of your own machine.

The rest of this guide will walk you through setting up a more
complete project, covering more features of Vagrant.

<a href="/docs/getting-started/project_setup.html" class="button inline-button next-button">Project Setup</a>
