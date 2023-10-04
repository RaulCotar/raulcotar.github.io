function changeTheme(theme) {
    const n = window.location.pathname.split('/').length-7
    const file = "./"+"../".repeat(n)+"src/"+theme+".css"
    document.getElementById("theme_switcher").href = file
    document.getElementById("theme_radio_"+theme).checked = true
    localStorage.setItem("saved_theme", theme);
}

const onload_saved_theme = localStorage.getItem("saved_theme")
if (onload_saved_theme != null)
    changeTheme(onload_saved_theme)
else if (window.matchMedia("(prefers-color-scheme: dark)").matches)
    changeTheme("dark")