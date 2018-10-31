# File system permissions in Magento directory

5. ./generated

```bash
cd /magento/root
find var generated pub/static pub/media app/etc -type f -exec chmod g+w {} +
find var generated pub/static pub/media app/etc -type d -exec chmod g+ws {} +
chmod --recursive 2777 generated
```
