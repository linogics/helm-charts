# nextcloud

![Version: 1.0.3](https://img.shields.io/badge/Version-1.0.3-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 21.0.3](https://img.shields.io/badge/AppVersion-21.0.3-informational?style=flat-square)

Nextcloud Helm Chart by linogics.io

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| nextcloud.adminPassword | string | `"myTopSecretPaSSword"` |  |
| nextcloud.adminUsername | string | `"administrator"` |  |
| nextcloud.affinity | object | `{}` |  |
| nextcloud.apps.disable | list | `[]` |  |
| nextcloud.apps.install | list | `[]` |  |
| nextcloud.autoscaling.enabled | bool | `false` |  |
| nextcloud.autoscaling.maxReplicas | int | `100` |  |
| nextcloud.autoscaling.minReplicas | int | `1` |  |
| nextcloud.autoscaling.targetCPUUtilizationPercentage | int | `80` |  |
| nextcloud.commonAnnotations | object | `{}` |  |
| nextcloud.customOCC | list | `[]` |  |
| nextcloud.defaultPhoneRegion | string | `"DE"` |  |
| nextcloud.domain | string | `"my.domain.com"` |  |
| nextcloud.fullnameOverride | string | `""` |  |
| nextcloud.image.init.pullPolicy | string | `"IfNotPresent"` |  |
| nextcloud.image.init.repository | string | `"linogics/nextcloud-php-fpm"` |  |
| nextcloud.image.init.tag | string | `"8.0.8-alpine3.14"` |  |
| nextcloud.image.pullPolicy | string | `"IfNotPresent"` |  |
| nextcloud.image.repository | string | `"caddy"` |  |
| nextcloud.image.tag | string | `"2.4.3-alpine"` |  |
| nextcloud.imagePullSecrets | list | `[]` |  |
| nextcloud.ingress.enabled | bool | `false` |  |
| nextcloud.labels | object | `{}` |  |
| nextcloud.livenessProbe.enabled | bool | `true` |  |
| nextcloud.livenessProbe.failureThreshold | int | `5` |  |
| nextcloud.livenessProbe.initialDelaySeconds | int | `5` |  |
| nextcloud.livenessProbe.periodSeconds | int | `60` |  |
| nextcloud.livenessProbe.successThreshold | int | `1` |  |
| nextcloud.livenessProbe.timeoutSeconds | int | `5` |  |
| nextcloud.mail.enabled | bool | `false` |  |
| nextcloud.nameOverride | string | `""` |  |
| nextcloud.nodeSelector | object | `{}` |  |
| nextcloud.podAnnotations | object | `{}` |  |
| nextcloud.podSecurityContext.fsGroup | int | `82` |  |
| nextcloud.readinessProbe.enabled | bool | `true` |  |
| nextcloud.readinessProbe.failureThreshold | int | `5` |  |
| nextcloud.readinessProbe.initialDelaySeconds | int | `5` |  |
| nextcloud.readinessProbe.periodSeconds | int | `5` |  |
| nextcloud.readinessProbe.successThreshold | int | `1` |  |
| nextcloud.readinessProbe.timeoutSeconds | int | `5` |  |
| nextcloud.replicaCount | int | `1` |  |
| nextcloud.resources | object | `{}` |  |
| nextcloud.securityContext.readOnlyRootFilesystem | bool | `true` |  |
| nextcloud.securityContext.runAsGroup | int | `82` |  |
| nextcloud.securityContext.runAsNonRoot | bool | `true` |  |
| nextcloud.securityContext.runAsUser | int | `82` |  |
| nextcloud.service.port | int | `80` |  |
| nextcloud.service.type | string | `"ClusterIP"` |  |
| nextcloud.serviceAccount.annotations | object | `{}` |  |
| nextcloud.serviceAccount.create | bool | `false` |  |
| nextcloud.serviceAccount.name | string | `""` |  |
| nextcloud.storage.storageSize | string | `"10G"` |  |
| nextcloud.strategy.rollingUpdate.maxSurge | int | `1` |  |
| nextcloud.strategy.rollingUpdate.maxUnavailable | int | `1` |  |
| nextcloud.strategy.type | string | `"Recreate"` |  |
| nextcloud.tolerations | list | `[]` |  |
| nextcloud.webcron.enabled | bool | `true` |  |
| php.apc.gc_ttl | int | `3600` |  |
| php.apc.max_file_size | string | `"5M"` |  |
| php.apc.num_files_hint | int | `1024` |  |
| php.apc.shm_segments | int | `1` |  |
| php.apc.shm_size | string | `"256M"` |  |
| php.apc.ttl | int | `7200` |  |
| php.apc.user_ttl | int | `7200` |  |
| php.disable_functions | list | `[]` |  |
| php.image.pullPolicy | string | `"IfNotPresent"` |  |
| php.image.repository | string | `"linogics/nextcloud-php-fpm"` |  |
| php.image.tag | string | `"8.0.8-alpine3.14"` |  |
| php.opcache.enable | int | `1` |  |
| php.opcache.interned_strings_buffer | int | `8` |  |
| php.opcache.max_accelerated_files | int | `10000` |  |
| php.opcache.memory_consumption | int | `128` |  |
| php.opcache.revalidate_freq | int | `1` |  |
| php.opcache.save_comments | int | `1` |  |
| php.pm.max_children | int | `120` |  |
| php.pm.max_spare_servers | int | `18` |  |
| php.pm.min_spare_servers | int | `6` |  |
| php.pm.start_servers | int | `12` |  |
| php.resources | object | `{}` |  |
| php.securityContext.readOnlyRootFilesystem | bool | `true` |  |
| php.securityContext.runAsGroup | int | `82` |  |
| php.securityContext.runAsNonRoot | bool | `true` |  |
| php.securityContext.runAsUser | int | `82` |  |
| php.service.port | int | `9000` |  |
| postgres.affinity | object | `{}` |  |
| postgres.image.pullPolicy | string | `"IfNotPresent"` |  |
| postgres.image.repository | string | `"postgres"` |  |
| postgres.image.tag | string | `"13.3-alpine"` |  |
| postgres.nodeSelector | object | `{}` |  |
| postgres.podAnnotations | object | `{}` |  |
| postgres.podSecurityContext.fsGroup | int | `70` |  |
| postgres.podSecurityContext.runAsGroup | int | `70` |  |
| postgres.podSecurityContext.runAsNonRoot | bool | `true` |  |
| postgres.podSecurityContext.runAsUser | int | `70` |  |
| postgres.resources | object | `{}` |  |
| postgres.securityContext.readOnlyRootFilesystem | bool | `true` |  |
| postgres.service.port | int | `5432` |  |
| postgres.service.type | string | `"ClusterIP"` |  |
| postgres.storage.storageSize | string | `"2Gi"` |  |
| postgres.tolerations | list | `[]` |  |
| redis.affinity | object | `{}` |  |
| redis.auth.enabled | bool | `true` |  |
| redis.image.pullPolicy | string | `"IfNotPresent"` |  |
| redis.image.repository | string | `"redis"` |  |
| redis.image.tag | string | `"6.2.4-alpine3.13"` |  |
| redis.nodeSelector | object | `{}` |  |
| redis.podAnnotations | object | `{}` |  |
| redis.podSecurityContext | object | `{}` |  |
| redis.resources | object | `{}` |  |
| redis.securityContext.readOnlyRootFilesystem | bool | `true` |  |
| redis.service.port | int | `6379` |  |
| redis.service.type | string | `"ClusterIP"` |  |
| redis.storage.storageSize | string | `"2G"` |  |
| redis.tolerations | list | `[]` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.5.0](https://github.com/norwoodj/helm-docs/releases/v1.5.0)
