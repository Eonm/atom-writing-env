module.exports = {
  activate() {
    require('atom-package-deps').install('atom-writing-env')
      .then(function() {
        console.log('All dependencies installed, good to go')
      })
  }

} 

// export function install(packageName, showPrompt = true)
