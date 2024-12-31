// const path = require('path')
// const fs = require('fs')
const localIdentName = '[name][local]-[hash:base64:5]'
module.exports = {
  packName: 'webpack',
  packScope: '@ali',
  packOption: ({context}) => {
    return {
      dll: false,
      modules: true,
      happypack: true,
      common: 'vendor',
      less: true,
      sass: true,
      config: {
        pages: 'backend',
        comment: '洛丹',
        templateHtml: {

        },
        dest: 'server/public',
        dllVendor: 'vendor',
        localIdentName,
        externals: {
          'react': 'React',
          'react-dom': 'ReactDOM',
          '@alife/next': 'Next',
          'react-redux': 'ReactRedux',
          'react-router': 'ReactRouter',
          'react-router-dom': 'ReactRouterDOM',
          'history': 'History'
        },
        resolve: {
        },
        babelDev: {
          presets: []
        },
        babel: {
          babelrc: false,
          presets: ['react', ['es2015', { modules: false }], 'stage-0'],
          plugins: [
            'transform-decorators-legacy',
            'transform-es2015-modules-commonjs',
            'transform-object-rest-spread',
            'transform-class-properties',
            [
              'react-css-modules',
              {
                context,
                'generateScopedName': localIdentName,
                'filetypes': {
                  '.scss': {
                    'syntax': 'postcss-scss'
                  },
                  '.less': {
                    'syntax': 'postcss-less'
                  }
                },
                'webpackHotModuleReloading': true,
                'handleMissingStyleName': 'warn'
              }
            ]
          ]
        }
    //   contentBase: [
    //     {
    //       name: '',
    //       path: path.resolve(__dirname, './examples/demo')
    //     }
    //   ]
      }
    }
  },
  plugins: []
}
