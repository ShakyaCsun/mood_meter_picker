{{flutter_js}}
{{flutter_build_config}}

_flutter.loader.load({
  onEntrypointLoaded: async function(engineInitializer) {
    const appRunner = await engineInitializer.initializeEngine();
    // Remove Loading Indicator
    setTimeout(function () {
      var loadingIndicator = document.getElementById('center');
      if (loadingIndicator) {
        loadingIndicator.remove();
      }
    }, 10000);
    await appRunner.runApp();
  }
});
