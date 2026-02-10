#!/bin/bash
# Script de deploy para o site da clínica
# Uso: ./scripts/deploy.sh [--dry-run]
#
# Pré-requisitos:
# - SSH configurado com chave pública para o servidor
# - rsync instalado localmente e no servidor
# - Acesso ao diretório /var/www/clinica/dist no servidor

set -e

# =====================================================
# CONFIGURAÇÕES - Ajustar conforme ambiente
# =====================================================
REMOTE_USER="edson"
REMOTE_HOST="187.95.108.109"
REMOTE_PATH="/var/www/michalkcare/dist"
BUILD_DIR="./dist"

# =====================================================
# FUNÇÕES
# =====================================================
log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1"
}

# =====================================================
# VERIFICAÇÕES
# =====================================================
log "Verificando pré-requisitos..."

# Verificar se estamos no diretório correto
if [ ! -f "package.json" ] || [ ! -f "astro.config.mjs" ]; then
    echo "Erro: Execute este script a partir da raiz do projeto Astro"
    exit 1
fi

# Verificar se rsync está disponível
if ! command -v rsync &> /dev/null; then
    echo "Erro: rsync não está instalado"
    exit 1
fi

# =====================================================
# BUILD
# =====================================================
log "Instalando dependências..."
npm ci --silent

log "Construindo o site..."
npm run build

if [ ! -d "$BUILD_DIR" ]; then
    echo "Erro: Diretório de build não foi criado"
    exit 1
fi

log "Build concluído. Arquivos gerados:"
du -sh "$BUILD_DIR"

# =====================================================
# DEPLOY
# =====================================================
if [ "$1" == "--dry-run" ]; then
    log "Modo dry-run: simulando deploy..."
    rsync -avzn --delete \
        --exclude='.git' \
        --exclude='node_modules' \
        "$BUILD_DIR/" \
        "$REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH/"
else
    log "Iniciando deploy para $REMOTE_HOST..."
    rsync -avz --delete \
        --exclude='.git' \
        --exclude='node_modules' \
        "$BUILD_DIR/" \
        "$REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH/"
fi

# =====================================================
# FINALIZAÇÃO
# =====================================================
log "Deploy concluído com sucesso!"
echo ""
echo "Site disponível em: https://www.michalkcare.com"
echo ""
echo "Próximos passos:"
echo "  - Verifique o site no navegador"
echo "  - Teste em dispositivos móveis"
echo "  - Verifique o Google Search Console"
