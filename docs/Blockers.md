# Blocker Update - Cloudflare DNS Migration

**Date:** 18 July 2026

## Current Blocker

The migration of `jrwroberts.co.uk` DNS management from the existing registrar DNS service to Cloudflare is currently waiting for nameserver propagation.

## Completed

* Cloudflare account created.
* Domain `jrwroberts.co.uk` added to Cloudflare.
* Free Cloudflare plan selected.
* Registrar nameservers updated successfully.
* New Cloudflare nameservers configured:

```
darwin.ns.cloudflare.com
pearl.ns.cloudflare.com
```

## Current Status

Cloudflare is waiting for the domain delegation change to propagate.

Current verification message:

```
Waiting for your registrar to propagate your new nameservers
```

DNS queries are still showing the previous nameservers from the registrar:

```
ns11.domaincontrol.com
ns12.domaincontrol.com
```

## Impact

The following platform changes are temporarily paused:

* Cloudflare DNS records
* AWS EC2 hostname mapping
* Public service DNS names
* HTTPS reverse proxy configuration
* External access through domain names

The AWS infrastructure and Docker platform remain fully operational using the EC2 public IP address.

## Current Platform Status

Completed:

* AWS VPC deployed
* Public and private networking configured
* EC2 instance deployed
* Security groups configured
* Ansible automation working
* Docker installed automatically through Ansible
* Docker application deployment working
* Monitoring stack deployed:

  * Prometheus
  * Grafana
  * Node Exporter
  * cAdvisor
* Docker proxy network created for reverse proxy preparation

## Next Actions Once DNS Is Active

1. Verify Cloudflare nameserver delegation.
2. Create Cloudflare DNS records:

   * `cloud.jrwroberts.co.uk`
   * `grafana.jrwroberts.co.uk`
   * `prometheus.jrwroberts.co.uk`
3. Configure nginx reverse proxy.
4. Enable HTTPS certificates.
5. Remove direct public exposure of application ports.
6. Integrate authentication and security controls.

## Resolution Criteria

The blocker will be considered resolved when:

```text
dig NS jrwroberts.co.uk
```

returns:

```
darwin.ns.cloudflare.com
pearl.ns.cloudflare.com
```

and Cloudflare reports the domain status as:

```
Active
```

---

**Blocker Status:** ⏳ Waiting on DNS propagation
