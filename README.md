commands to run and push to github pages


flutter build web
cd build/web
touch .nojekyll
git add .
git commit -m "Fix base href for GitHub Pages"
git push

