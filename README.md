misskeyci-docker
==

[![microbadger](https://images.microbadger.com/badges/image/misskey/ci.svg)](https://microbadger.com/images/misskey/ci)

How to update
--

1. Remove current yarn.lock (`rm -f yarn.lock`)
2. Go into the submodule (`cd misskey`)
3. Update the submodule (`git submodule update`)
4. Create yarn.lock (`yarn install`)
5. Check vulnerabilities (`yarn audit`)
6. Fix vulnerabilities (`vim yarn.lock`)
7. Move yarn.lock to the root directory (`mv yarn.lock ..`)
8. Go out of the submodule (`cd ..`)
