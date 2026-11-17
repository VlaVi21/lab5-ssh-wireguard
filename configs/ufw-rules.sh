#!/usr/bin/env bash
# Правила фаєрвола: порт 8000 доступний лише з 127.0.0.1 та через wg0
set -e
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow 22/tcp
sudo ufw allow 51820/udp
sudo ufw allow in on wg0 to any port 8000 proto tcp
sudo ufw deny 8000/tcp
sudo ufw enable
sudo ufw status verbose
