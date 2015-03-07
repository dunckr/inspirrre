var ReactTools = require('react-tools');
var cjsx = require('coffee-react-transform');
var coffee = require('coffee-script');

module.exports = {
  process: function(src, path) {
    if (path.match(/\.coffee$/)) {
      return coffee.compile(cjsx(src), {bare: true})
    } else {
      return ReactTools.transform(src);
    }
  }
};
