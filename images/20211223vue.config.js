module.exports = {
    devServer: {
        open: true,
        port: 8080,
        proxy: {
            [process.env.VUE_APP_BASE_API]: {
                target: "http://news.topurl.cn",
                chageOrigin: true,
                pathRewrite: {
                    ['^' + process.env.VUE_APP_BASE_API]: ''
                }
            }
        }
    },
    publicPath: './', // 默认'/'，部署应用包时的基本 URL
    outputDir: 'dist',
    assetsDir: '', // 相对于outputDir的静态资源(js、css、img、fonts)目录
    runtimeCompiler: true, // 是否使用包含运行时编译器的 Vue 构建版本
    productionSourceMap: false, // 生产环境的 source map
};