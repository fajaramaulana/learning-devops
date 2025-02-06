# Dicoding DevOps Menengah

## 📂 Struktur Folder

```
dicoding-devops-menengah/
├── jenkins/
│   └── Dockerfile
├── nginx/
│   └── nginx.conf
├── prometheus/
│   └── prometheus.yml
├── react-app/
│   ├── ...
│   └── Jenkinsfile
├── simple-python-pyinstaller-app/
│   ├── ...
│   └── Jenkinsfile
├── docker-compose.yml
└── README.md
```

## 📁 Penjelasan Folder

- **jenkins/**: Berisi konfigurasi Dockerfile untuk Jenkins dengan Blue Ocean.
- **nginx/**: Berisi konfigurasi `nginx.conf` yang digunakan sebagai reverse proxy untuk Jenkins.
- **prometheus/**: Berisi konfigurasi `prometheus.yml` untuk mengumpulkan log dan metrik dari Jenkins.
- **react-app/**: Aplikasi berbasis React yang diotomatisasi dengan Jenkins CI/CD.
- **simple-python-pyinstaller-app/**: Aplikasi Python sederhana yang di-build menggunakan PyInstaller dan diotomatisasi dengan Jenkins.
- **docker-compose.yml**: Berisi konfigurasi layanan yang akan dijalankan menggunakan Docker Compose.
- **README.md**: Dokumentasi proyek ini.

## 🚀 Deskripsi Proyek

Proyek ini bertujuan untuk menjalankan otomasi DevOps menggunakan **Jenkins**. Jenkins digunakan untuk menjalankan pipeline CI/CD, log aktivitas diambil oleh **Prometheus**, dan data visualisasi dapat dilihat melalui **Grafana**. **Nginx** digunakan sebagai reverse proxy untuk Jenkins.

## ⚙️ Cara Menggunakan

### 1. Clone Repository
```sh
git clone https://github.com/your-repo/dicoding-devops-menengah.git
cd dicoding-devops-menengah
```

### 2. Jalankan Docker Compose
```sh
docker-compose up -d
```

### 3. Akses Layanan
- **Jenkins**: [http://localhost:49000](http://localhost:49000)
- **Prometheus**: [http://localhost:9090](http://localhost:9090)
- **Grafana**: [http://localhost:3031](http://localhost:3031)

### 4. Menjalankan Pipeline Jenkins
- Masuk ke Jenkins dan buat pipeline berdasarkan `Jenkinsfile` yang ada di proyek.
- Sesuaikan konfigurasi pipeline jika diperlukan.

### 5. Memantau Log dengan Prometheus & Grafana
- Pastikan Prometheus sudah berjalan dan mengumpulkan data dari Jenkins.
- Buka Grafana dan konfigurasi data source ke Prometheus untuk melihat visualisasi metrik.

---

Dengan mengikuti panduan ini, Anda dapat dengan mudah menjalankan pipeline CI/CD menggunakan Jenkins, serta memantau metrik log dengan Prometheus dan Grafana. 🚀