# Scriptin çalıştırıldığı dizin
PROJECT_DIR="$(pwd)"

# Docker-compose dosyasını çalıştır
echo "Docker-compose dosyasını başlatılıyor..."
docker-compose up -d

# Veritabanını oluştur, migrate et ve seed'le
echo "Veritabanını oluşturuluyor, migrate ediliyor ve seed'leniyor..."
docker-compose exec web bundle exec rails db:create db:migrate db:seed

echo "Proje başlatıldı!"
