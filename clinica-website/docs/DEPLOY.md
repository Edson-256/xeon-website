# Guia de Deploy

Este documento descreve como fazer deploy do site da clínica.

## Pré-requisitos

### No servidor (on-prem)
- Nginx instalado e configurado
- Certbot para SSL (Let's Encrypt)
- Usuário `deploy` com acesso SSH via chave pública
- Diretório `/var/www/clinica/dist` criado e com permissões corretas

### Na máquina de desenvolvimento
- Node.js 18+ instalado
- rsync instalado
- Chave SSH configurada para o servidor

## Primeira vez: Configuração do Servidor

```bash
# No servidor
sudo apt update
sudo apt install nginx certbot python3-certbot-nginx

# Criar diretório do site
sudo mkdir -p /var/www/clinica/dist
sudo chown -R www-data:www-data /var/www/clinica

# Criar usuário de deploy
sudo adduser deploy
sudo usermod -aG www-data deploy

# Copiar configuração Nginx
sudo cp nginx/clinica.conf /etc/nginx/sites-available/clinica
sudo ln -s /etc/nginx/sites-available/clinica /etc/nginx/sites-enabled/

# Testar e recarregar Nginx
sudo nginx -t
sudo systemctl reload nginx

# Configurar SSL (após DNS configurado)
sudo certbot --nginx -d clinicaoncologia.com.br -d www.clinicaoncologia.com.br
```

## Deploy Manual

```bash
# Na máquina de desenvolvimento
cd clinica-website

# Tornar script executável (primeira vez)
chmod +x scripts/deploy.sh

# Executar deploy
./scripts/deploy.sh

# Ou simular sem enviar (dry-run)
./scripts/deploy.sh --dry-run
```

## Verificação Pós-Deploy

1. Acessar o site: https://www.clinicaoncologia.com.br
2. Testar navegação e links
3. Verificar SSL no SSL Labs: https://www.ssllabs.com/ssltest/
4. Testar performance no PageSpeed Insights
5. Verificar em dispositivos móveis

## Rollback

Se precisar reverter para uma versão anterior:

```bash
# No servidor, manter backups das últimas versões
# O rsync com --backup pode ser configurado para isso

# Ou use git para versionar o conteúdo de /var/www/clinica/dist
cd /var/www/clinica/dist
git log --oneline  # ver versões
git checkout <hash>  # reverter
```

## Troubleshooting

### Erro 502 Bad Gateway
- Verificar logs: `sudo tail -f /var/log/nginx/clinica.error.log`
- Verificar se o Nginx está rodando: `sudo systemctl status nginx`

### SSL não funciona
- Verificar certificado: `sudo certbot certificates`
- Renovar manualmente: `sudo certbot renew`

### Arquivos não atualizando
- Limpar cache do navegador
- Verificar se o deploy foi concluído sem erros
- Verificar permissões: `ls -la /var/www/clinica/dist/`
