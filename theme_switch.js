function setTheme(val) {
	if (!val) {
		document.documentElement.style.setProperty('background', 'var(--dark-bg)');
		document.documentElement.style.setProperty('color', 'var(--dark-fg)');
		document.documentElement.style.setProperty('--col-bg', 'var(--dark-bg)');
		document.documentElement.style.setProperty('--col-fn', 'var(--dark-fn)');
		document.documentElement.style.setProperty('--col-acc', 'var(--dark-acc)');
		document.documentElement.style.setProperty('--col-fnt', 'var(--dark-fnt)');
		document.documentElement.style.setProperty('--col-lnk', 'var(--dark-lnk)');
		document.documentElement.style.setProperty('--col-lnkv', 'var(--dark-lnkv)');
	}
	else {
		document.documentElement.style.setProperty('background', 'var(--light-bg)');
		document.documentElement.style.setProperty('color', 'var(--light-fg)');
		document.documentElement.style.setProperty('--col-bg', 'var(--light-bg)');
		document.documentElement.style.setProperty('--col-fn', 'var(--light-fn)');
		document.documentElement.style.setProperty('--col-acc', 'var(--light-acc)');
		document.documentElement.style.setProperty('--col-fnt', 'var(--light-fnt)');
		document.documentElement.style.setProperty('--col-lnk', 'var(--light-lnk)');
		document.documentElement.style.setProperty('--col-lnkv', 'var(--light-lnkv)');
	}
}