# Imagem base com JDK e Maven (caso precise)
FROM mcr.microsoft.com/devcontainers/java:17

# Variável para versão do JFlex
ENV JFLEX_VERSION=1.9.1

# Instala dependências e JFlex
RUN apt-get update && apt-get install -y wget unzip && \
    wget https://github.com/jflex-de/jflex/releases/download/v${JFLEX_VERSION}/jflex-${JFLEX_VERSION}.zip && \
    unzip jflex-${JFLEX_VERSION}.zip -d /usr/local && \
    mv /usr/local/jflex-${JFLEX_VERSION} /usr/local/jflex && \
    chmod -R 755 /usr/local/jflex && \
    chown -R vscode:vscode /usr/local/jflex && \
    ln -sf /usr/local/jflex/bin/jflex /usr/local/bin/jflex && \
    rm jflex-${JFLEX_VERSION}.zip && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Adiciona o diretório do JFlex ao PATH
ENV PATH="/usr/local/jflex/bin:${PATH}"

# Usuário padrão (mantém compatibilidade com VS Code Dev Containers)
USER vscode

# Comando default
CMD [ "bash" ]
