<img src="https://storage.googleapis.com/golden-wind/experts-club/capa-github.svg" />

# k8s Development Environment

Ambiente para desenvolver microserviços usando k8s. Apresentado por [Alexandre Paez][1].

> __Atenção__: Este é o projeto <template/completo>, se você está procurando o projeto de <completo/template>, vá para [este repositório](https://github.com/rocketseat-experts-club/<seu projeto aqui>)

## Instalação

1. Instalar dependencias
- curl
- docker

2. Rodar comandos de instalação
```bash
make kubectl-install
make kind-install
```
3. Subir o kind
```bash
make kind-up
```

## Check list

- [x] Criar scripts para instalar dependencias
- [x] Criar script para ligar cluster k8s
- [x] Criar ingress no cluster
- [x] Instalar local registry
- [x] Criar aplicação demonstrativa
- [ ] Roteando por host
- [ ] Roteando por path

## Expert

| [<img src="https://github.com/alepaez.png" width="75px;"/>][1] |
| :-: |
|[Creator][1]|


[1]: https://twitch.tv/alezonez
