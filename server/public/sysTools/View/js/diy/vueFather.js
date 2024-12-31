var vueFatherApp = null;
$(window).load(function () {
    vueFatherApp = new Vue({
        el: '#vue-father-obj',
        data: {
            selectStyle: false,
            dhEdit: false,
			bottomMenuEdit: false,
            bottomMenuStyle: false,
            bottomSetStyle: false,
            formStyleSelect: false,
            formPerLineNum: 1,
        },
        methods: {
            closeSelectStyle() {
                this.selectStyle = false;
            },
            closeDhEdit() {
                this.dhEdit = false;
            },
			closeBottomMenuEdit() {
				this.bottomMenuEdit = false;
			},
            closeBottomMenuStyle() {
                this.bottomMenuStyle = false;
            },
            closeBottomSetStyle() {
                this.bottomSetStyle = false;
            },
			closeFormStyleSelect(){
				this.formStyleSelect = false;
			}
        }
    });
});

function saveViewStyle() {
    if (!canvas.window.editView || !canvas.window.editView.obj) {
        alert("当前编辑模块不存在！", "error");
        return;
    }
    var lib = settingsLib(canvas.window.editView.obj);
    var customCss = lib.getSetting('css.customCss');
    if (customCss) {
        alert("请拷贝以下内容到配置文件", null, "关闭", null, "<textarea>" + JSON.stringify(customCss) + "</textarea>");
    } else {
        alert("当前编辑模块不存在自定义配色方案！", "error");
    }
}

function editDh() {
    window.parent.showSettingsBox(false,'常规');
    //vueFatherApp.dhEdit = true;
}
function editBottomMenu() {
    vueFatherApp.bottomMenuEdit = true;
}

function bottomMenuStyle() {
    vueFatherApp.bottomMenuStyle = true;
}

function setBottomStyle() {
    vueFatherApp.bottomSetStyle = true;
}

function selectFormStyle() {
    vueFatherApp.formStyleSelect = true;
}

//变暗变亮主方法
function LightenDarkenColor(col, amt) {
    col = colorHex(col);
    var usePound = false;

    if (col[0] == "#") {
        col = col.slice(1);
        usePound = true;
    }

    var num = parseInt(col, 16);

    var r = (num >> 16) + amt;

    if (r > 255) r = 255;
    else if (r < 0) r = 0;

    var b = ((num >> 8) & 0x00FF) + amt;

    if (b > 255) b = 255;
    else if (b < 0) b = 0;

    var g = (num & 0x0000FF) + amt;

    if (g > 255) g = 255;
    else if (g < 0) g = 0;


    return (usePound ? "#" : "") + String("000000" + (g | (b << 8) | (r << 16)).toString(16)).slice(-6);
}

//RGB颜色转化为16进制颜色
function colorHex(str) {
    var reg = /^#([0-9a-fA-f]{3}|[0-9a-fA-f]{6})$/;
    var that = str;
    if (/^(rgba|RGBA)/.test(that)) {
        return hexify(that);
    } else if (/^(rgb|RGB)/.test(that)) {
        var aColor = that.replace(/(?:\(|\)|rgb|RGB)*/g, "").split(",");
        var strHex = "#";
        for (var i = 0; i < aColor.length; i++) {
            var hex = Number(aColor[i]).toString(16);
            if (hex === "0") {
                hex += hex;
            }
            strHex += hex;
        }
        if (strHex.length !== 7) {
            strHex = that;
        }
        return strHex;
    } else if (reg.test(that)) {
        var aNum = that.replace(/#/, "").split("");
        if (aNum.length === 6) {
            return that;
        } else if (aNum.length === 3) {
            var numHex = "#";
            for (var i = 0; i < aNum.length; i += 1) {
                numHex += (aNum[i] + aNum[i]);
            }
            return numHex;
        }
    } else {
        return that;
    }
}

//rgba转16进制
function hexify(color) {
    var values = color
        .replace(/rgba?\(/, '')
        .replace(/\)/, '')
        .replace(/[\s+]/g, '')
        .split(',');
    var a = parseFloat(values[3] || 1),
        r = Math.floor(a * parseInt(values[0]) + (1 - a) * 255),
        g = Math.floor(a * parseInt(values[1]) + (1 - a) * 255),
        b = Math.floor(a * parseInt(values[2]) + (1 - a) * 255);
    return "#" +
        ("0" + r.toString(16)).slice(-2) +
        ("0" + g.toString(16)).slice(-2) +
        ("0" + b.toString(16)).slice(-2);
}

//16进制颜色转化为RGB颜色
function colorRgb(str) {
    str=colorHex(str);
    var reg = /^#([0-9a-fA-f]{3}|[0-9a-fA-f]{6})$/;
    var sColor = str.toLowerCase();
    if (sColor && reg.test(sColor)) {
        if (sColor.length === 4) {
            var sColorNew = "#";
            for (var i = 1; i < 4; i += 1) {
                sColorNew += sColor.slice(i, i + 1).concat(sColor.slice(i, i + 1));
            }
            sColor = sColorNew;
        }
        //处理六位的颜色值
        var sColorChange = [];
        for (var i = 1; i < 7; i += 2) {
            sColorChange.push(parseInt("0x" + sColor.slice(i, i + 2)));
        }
        return "rgb(" + sColorChange.join(",") + ")";
    } else {
        return sColor;
    }
}

//判断是否为亮色
function getContrastYIQ(hexcolor) {
    hexcolor = colorHex(hexcolor);
    var colorrgb = colorRgb(hexcolor);
    var colors = colorrgb.match(/^rgb\((\d+),\s*(\d+),\s*(\d+)\)$/);
    var red = colors[1];
    var green = colors[2];
    var blue = colors[3];
    var brightness;
    brightness = (red * 299) + (green * 587) + (blue * 114);
    brightness = brightness / 255000;
    if (brightness >= 0.5) {
        return "light";
    } else {
        return "dark";
    }
}