
var stylus = require('stylus'),
	fluidity = require('fluidity'),
	_ = require('lodash');

hexo.extend.renderer.register('styl', 'css', function (data, options, callback) {
	var siteStylus = hexo.config.stylus || {},
		themeStylus = hexo.theme.stylus || {},
		defaults = {},
		options,
		styl;
	defaults.filename = data.path;
	defaults.compress = false;
	options = _.extend(defaults, themeStylus, siteStylus);
	stylus(data.text, options)
		.use(fluidity())
		.render(callback);
});
