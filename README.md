# 🧹 Nextcloud Trash Cleaner Script

Небольшой bash-скрипт для автоматической очистки каталогов `files_trashbin` в пользовательских директориях Nextcloud (или аналогичных систем хранения).

Скрипт удаляет:

* `files_trashbin/files/`
* `files_trashbin/versions/`

И тем самым освобождает место на диске без лишних церемоний.

---

## 📜 Описание (RU)

Скрипт принимает путь к корневой директории с пользовательскими каталогами. Для каждого подкаталога он рекурсивно удаляет корзину и версии файлов.

Если путь не передан аргументом при запуске — скрипт запросит его вручную.

Подходит для системных администраторов, которые устали чистить Nextcloud руками и ценят простые решения.

### 🔧 Использование

```bash
# Сделать файл исполняемым
chmod +x clean_trash.sh

# Запуск с указанием директории
./clean_trash.sh /var/www/nextcloud/data

# Или без параметров — путь будет запрошен
./clean_trash.sh
```

### ⚠️ Важно

* Скрипт **безвозвратно удаляет** данные.
* Используйте **только после резервного копирования**.
* Запускать рекомендуется от пользователя с корректными правами (обычно `www-data` или `root`).

---

## 🧹 Nextcloud Trash Cleaner Script (EN)

A simple bash script that automatically cleans `files_trashbin` directories inside user folders of Nextcloud (or similar storage systems).

It removes:

* `files_trashbin/files/`
* `files_trashbin/versions/`

Helping you reclaim disk space without mercy.

### 🔧 Usage

```bash
# Make the script executable
chmod +x clean_trash.sh

# Run with a root directory
./clean_trash.sh /var/www/nextcloud/data

# Or run without arguments to input the path manually
./clean_trash.sh
```

### ⚠️ Warning

* This script **permanently deletes** files.
* Always ensure you have proper backups.
* Recommended to run with appropriate permissions only.

---

## 🗂 Пример структуры / Example directory layout

```
/var/www/nextcloud/data/
├── user1/
│   └── files_trashbin/
│       ├── files/
│       └── versions/
├── user2/
│   └── files_trashbin/
│       ├── files/
│       └── versions/
```

---

## 📦 Структура репозитория / Repository structure

```
nextcloud-trash-cleaner/
├── clean_trash.sh
├── README.md
└── LICENSE
```

---

## 📄 Лицензия / License

MIT License. Используйте, модифицируйте, ломайте — на свой страх и риск.

---

## 👤 Автор / Author

**Kroseez**
System Administrator / Enthusiast
