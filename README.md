# Install

```sh
git clone --no-checkout https://github.com/A-Mackey/.config.git
cd .config
git sparse-checkout init --cone
git sparse-checkout set nvim
git checkout
mv nvim/ ..
cd ..
rm -rf .config
```
