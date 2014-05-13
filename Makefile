server:
	coffee server.coffee --nodejs
commit:
	git add -A && git commit -m '..' && git push
