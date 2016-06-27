
'use strict';

// sass compile
var gulp = require('gulp');
var sass = require('gulp-sass');
var prettify = require('gulp-prettify');
var minifyCss = require("gulp-minify-css");
var rename = require("gulp-rename");
var uglify = require("gulp-uglify");
var rtlcss = require("gulp-rtlcss");
var concat = require('gulp-concat');//文件合并
var rebaseUrls = require('gulp-css-rebase-urls');
var paths = {
    content: "./content/",
    plugins: "./content/superui/scripts/",
    layouts: "./content/superui/pages/layouts/",
    superui: "./content/superui/",
    base: "./content/superui/base/",
    pages: "./content/superui/pages/",
    global:"./content/superui/global/"
};

//*** CSS & JS minify task
//gulp.task('minify', function () {
//    // css minify 

//});

//所有需要引用的外部js
gulp.task("superui.common.js", function () {
    return gulp.src([
             paths.base + "jquery/jquery.min.js",
             paths.base + "bootstrap/js/bootstrap.js",
             paths.base + "jquery-cookie/jquery.cookie.min.js",
             paths.base + "bootstrap-hover-dropdown/bootstrap-hover-dropdown.js",
             paths.base + "jquery-slimscroll/jquery.slimscroll.js",
              paths.base + "bootbox/bootbox.min.js",
             paths.base + "bootstrap-switch/js/bootstrap-switch.js",
              paths.base+"bootstrap-confirmation/bootstrap-confirmation.js",
             paths.base + "uniform/jquery.uniform.js",
              paths.pages + "main/app.js",
             paths.layouts + "scripts/layout.js",
             paths.layouts + "scripts/theme.js",
              paths.layouts + "scripts/quick-sidebar.js",
                paths.pages + "main/sidebarMenu.js",
              paths.pages + "main/bootstrap-tab.js",
              paths.base + "jquery-pulsate/jquery.pulsate.min.js",
              paths.base + "jquery-bootpag/jquery.bootpag.js",
              paths.base + "holder/holder.js",
              paths.base + "bootstrap-toastr/toastr.js",
             paths.base + "jquery-blockui/jquery.blockui.min.js",
              //paths.base + "bootstrap-modal/js/bootstrap-modal.js",
              //paths.base + "bootstrap-modal/js/bootstrap-modalmanager.js",
              paths.base + "pace/pace.min.js",
               paths.base + "bootstrap-tabdrop/js/bootstrap-tabdrop.js"
              
    ]).pipe(concat("superui.common.js"))
    .pipe(rename("superui.common.min.js"))
  //  .pipe(uglify())
    .pipe(gulp.dest(paths.superui+"min/js/"));
});

gulp.task("superui.common.css", function () {
    return gulp.src([
            paths.base + "font-awesome/css/font-awesome.css",
            paths.base + "simple-line-icons/simple-line-icons.css",
             paths.base + "bootstrap/css/bootstrap.css",
              paths.base + "uniform/css/uniform.default.css",
            
            paths.base + "bootstrap-switch/css/bootstrap-switch.css",
             paths.base + "bootstrap-toastr/toastr.css",
             //paths.base + "bootstrap-modal/css/bootstrap-modal.css",
             //paths.base + "bootstrap-modal/css/bootstrap-modal-bs3patch.css",
              paths.base + "pace/themes/pace-theme-flash.css",
             paths.global + "css/plugins.css",
             paths.layouts + "css/layout.css"
    ]).pipe(concat("superui.common.css"))
    .pipe(rename("superui.common.min.css"))
    .pipe(minifyCss())
    .pipe(gulp.dest(paths.superui + "min/css/"));
});


gulp.task("superui.core.css", function () {
    //把global的css mini打包
    gulp.src([paths.global + 'css/*.css', '!' + paths.global + '/*.min.css']).pipe(minifyCss()).pipe(rename({ suffix: '.min' })).pipe(gulp.dest(paths.global + 'css/'));
});


gulp.task("superui.copyImg", function () {

    //把global的img移动到superui下
    gulp.src([paths.global + "img/*.*", "!" + paths.global + "/photos/*.*", "!" + paths.global + "/social/*.*"]).pipe(gulp.dest(paths.superui  + "min/img/"));
    //把layout的img移动到superui下
    gulp.src([paths.pages + "layouts/img/*.*"]).pipe(gulp.dest(paths.superui + "min/img/"));
});