# File system permissions in Magento directory

### Default and Development modes

```bash
cd /magento/root
find var generated pub/static pub/media app/etc -type f -exec chmod g+w {} +
find var generated pub/static pub/media app/etc -type d -exec chmod g+ws {} +
chmod --recursive 2777 generated
```

### Production mode

#### Make writable (before update/installation)

```sh
find app/code lib var generated vendor pub/static pub/media app/etc \( -type d -or -type f \) -exec chmod g+w {} + 
chmod o+rwx app/etc/env.php
```

#### Make non-writable (after update/installation)

```sh
find app/code lib pub/static app/etc generated/code generated/metadata var/view_preprocessed \( -type d -or -type f \) -exec chmod g-w {} + 
chmod o-rwx app/etc/env.php
```
