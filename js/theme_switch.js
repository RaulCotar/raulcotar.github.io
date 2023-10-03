function changeTheme(css, radio) {
    var old = document.getElementById("current_theme")
    if (old) old.remove()
    var new_theme = document.createElement('link') 
    new_theme.rel = 'stylesheet'
    new_theme.type = 'text/css'
    new_theme.id = 'current_theme'
    new_theme.href = css
    document.getElementById('head').append(new_theme);
    document.getElementById(radio).checked = true
}