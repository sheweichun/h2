/*! jQuery v1.7.2 jquery.com | jquery.org/license */

(function(a, b) {
    function cy(a) {
        return f.isWindow(a) ? a : a.nodeType === 9 ? a.defaultView || a.parentWindow : !1
    }
    function cu(a) {
        if (!cj[a]) {
            var b = c.body
              , d = f("<" + a + ">").appendTo(b)
              , e = d.css("display");
            d.remove();
            if (e === "none" || e === "") {
                ck || (ck = c.createElement("iframe"),
                ck.frameBorder = ck.width = ck.height = 0),
                b.appendChild(ck);
                if (!cl || !ck.createElement)
                    cl = (ck.contentWindow || ck.contentDocument).document,
                    cl.write((f.support.boxModel ? "<!doctype html>" : "") + "<html><body>"),
                    cl.close();
                d = cl.createElement(a),
                cl.body.appendChild(d),
                e = f.css(d, "display"),
                b.removeChild(ck)
            }
            cj[a] = e
        }
        return cj[a]
    }
    function ct(a, b) {
        var c = {};
        f.each(cp.concat.apply([], cp.slice(0, b)), function() {
            c[this] = a
        });
        return c
    }
    function cs() {
        cq = b
    }
    function cr() {
        setTimeout(cs, 0);
        return cq = f.now()
    }
    function ci() {
        try {
            return new a.ActiveXObject("Microsoft.XMLHTTP")
        } catch (b) {}
    }
    function ch() {
        try {
            return new a.XMLHttpRequest
        } catch (b) {}
    }
    function cb(a, c) {
        a.dataFilter && (c = a.dataFilter(c, a.dataType));
        var d = a.dataTypes, e = {}, g, h, i = d.length, j, k = d[0], l, m, n, o, p;
        for (g = 1; g < i; g++) {
            if (g === 1)
                for (h in a.converters)
                    typeof h == "string" && (e[h.toLowerCase()] = a.converters[h]);
            l = k,
            k = d[g];
            if (k === "*")
                k = l;
            else if (l !== "*" && l !== k) {
                m = l + " " + k,
                n = e[m] || e["* " + k];
                if (!n) {
                    p = b;
                    for (o in e) {
                        j = o.split(" ");
                        if (j[0] === l || j[0] === "*") {
                            p = e[j[1] + " " + k];
                            if (p) {
                                o = e[o],
                                o === !0 ? n = p : p === !0 && (n = o);
                                break
                            }
                        }
                    }
                }
                !n && !p && f.error("No conversion from " + m.replace(" ", " to ")),
                n !== !0 && (c = n ? n(c) : p(o(c)))
            }
        }
        return c
    }
    function ca(a, c, d) {
        var e = a.contents, f = a.dataTypes, g = a.responseFields, h, i, j, k;
        for (i in g)
            i in d && (c[g[i]] = d[i]);
        while (f[0] === "*")
            f.shift(),
            h === b && (h = a.mimeType || c.getResponseHeader("content-type"));
        if (h)
            for (i in e)
                if (e[i] && e[i].test(h)) {
                    f.unshift(i);
                    break
                }
        if (f[0]in d)
            j = f[0];
        else {
            for (i in d) {
                if (!f[0] || a.converters[i + " " + f[0]]) {
                    j = i;
                    break
                }
                k || (k = i)
            }
            j = j || k
        }
        if (j) {
            j !== f[0] && f.unshift(j);
            return d[j]
        }
    }
    function b_(a, b, c, d) {
        if (f.isArray(b))
            f.each(b, function(b, e) {
                c || bD.test(a) ? d(a, e) : b_(a + "[" + (typeof e == "object" ? b : "") + "]", e, c, d)
            });
        else if (!c && f.type(b) === "object")
            for (var e in b)
                b_(a + "[" + e + "]", b[e], c, d);
        else
            d(a, b)
    }
    function b$(a, c) {
        var d, e, g = f.ajaxSettings.flatOptions || {};
        for (d in c)
            c[d] !== b && ((g[d] ? a : e || (e = {}))[d] = c[d]);
        e && f.extend(!0, a, e)
    }
    function bZ(a, c, d, e, f, g) {
        f = f || c.dataTypes[0],
        g = g || {},
        g[f] = !0;
        var h = a[f], i = 0, j = h ? h.length : 0, k = a === bS, l;
        for (; i < j && (k || !l); i++)
            l = h[i](c, d, e),
            typeof l == "string" && (!k || g[l] ? l = b : (c.dataTypes.unshift(l),
            l = bZ(a, c, d, e, l, g)));
        (k || !l) && !g["*"] && (l = bZ(a, c, d, e, "*", g));
        return l
    }
    function bY(a) {
        return function(b, c) {
            typeof b != "string" && (c = b,
            b = "*");
            if (f.isFunction(c)) {
                var d = b.toLowerCase().split(bO), e = 0, g = d.length, h, i, j;
                for (; e < g; e++)
                    h = d[e],
                    j = /^\+/.test(h),
                    j && (h = h.substr(1) || "*"),
                    i = a[h] = a[h] || [],
                    i[j ? "unshift" : "push"](c)
            }
        }
    }
    function bB(a, b, c) {
        var d = b === "width" ? a.offsetWidth : a.offsetHeight
          , e = b === "width" ? 1 : 0
          , g = 4;
        if (d > 0) {
            if (c !== "border")
                for (; e < g; e += 2)
                    c || (d -= parseFloat(f.css(a, "padding" + bx[e])) || 0),
                    c === "margin" ? d += parseFloat(f.css(a, c + bx[e])) || 0 : d -= parseFloat(f.css(a, "border" + bx[e] + "Width")) || 0;
            return d + "px"
        }
        d = by(a, b);
        if (d < 0 || d == null)
            d = a.style[b];
        if (bt.test(d))
            return d;
        d = parseFloat(d) || 0;
        if (c)
            for (; e < g; e += 2)
                d += parseFloat(f.css(a, "padding" + bx[e])) || 0,
                c !== "padding" && (d += parseFloat(f.css(a, "border" + bx[e] + "Width")) || 0),
                c === "margin" && (d += parseFloat(f.css(a, c + bx[e])) || 0);
        return d + "px"
    }
    function bo(a) {
        var b = c.createElement("div");
        bh.appendChild(b),
        b.innerHTML = a.outerHTML;
        return b.firstChild
    }
    function bn(a) {
        var b = (a.nodeName || "").toLowerCase();
        b === "input" ? bm(a) : b !== "script" && typeof a.getElementsByTagName != "undefined" && f.grep(a.getElementsByTagName("input"), bm)
    }
    function bm(a) {
        if (a.type === "checkbox" || a.type === "radio")
            a.defaultChecked = a.checked
    }
    function bl(a) {
        return typeof a.getElementsByTagName != "undefined" ? a.getElementsByTagName("*") : typeof a.querySelectorAll != "undefined" ? a.querySelectorAll("*") : []
    }
    function bk(a, b) {
        var c;
        b.nodeType === 1 && (b.clearAttributes && b.clearAttributes(),
        b.mergeAttributes && b.mergeAttributes(a),
        c = b.nodeName.toLowerCase(),
        c === "object" ? b.outerHTML = a.outerHTML : c !== "input" || a.type !== "checkbox" && a.type !== "radio" ? c === "option" ? b.selected = a.defaultSelected : c === "input" || c === "textarea" ? b.defaultValue = a.defaultValue : c === "script" && b.text !== a.text && (b.text = a.text) : (a.checked && (b.defaultChecked = b.checked = a.checked),
        b.value !== a.value && (b.value = a.value)),
        b.removeAttribute(f.expando),
        b.removeAttribute("_submit_attached"),
        b.removeAttribute("_change_attached"))
    }
    function bj(a, b) {
        if (b.nodeType === 1 && !!f.hasData(a)) {
            var c, d, e, g = f._data(a), h = f._data(b, g), i = g.events;
            if (i) {
                delete h.handle,
                h.events = {};
                for (c in i)
                    for (d = 0,
                    e = i[c].length; d < e; d++)
                        f.event.add(b, c, i[c][d])
            }
            h.data && (h.data = f.extend({}, h.data))
        }
    }
    function bi(a, b) {
        return f.nodeName(a, "table") ? a.getElementsByTagName("tbody")[0] || a.appendChild(a.ownerDocument.createElement("tbody")) : a
    }
    function U(a) {
        var b = V.split("|")
          , c = a.createDocumentFragment();
        if (c.createElement)
            while (b.length)
                c.createElement(b.pop());
        return c
    }
    function T(a, b, c) {
        b = b || 0;
        if (f.isFunction(b))
            return f.grep(a, function(a, d) {
                var e = !!b.call(a, d, a);
                return e === c
            });
        if (b.nodeType)
            return f.grep(a, function(a, d) {
                return a === b === c
            });
        if (typeof b == "string") {
            var d = f.grep(a, function(a) {
                return a.nodeType === 1
            });
            if (O.test(b))
                return f.filter(b, d, !c);
            b = f.filter(b, d)
        }
        return f.grep(a, function(a, d) {
            return f.inArray(a, b) >= 0 === c
        })
    }
    function S(a) {
        return !a || !a.parentNode || a.parentNode.nodeType === 11
    }
    function K() {
        return !0
    }
    function J() {
        return !1
    }
    function n(a, b, c) {
        var d = b + "defer"
          , e = b + "queue"
          , g = b + "mark"
          , h = f._data(a, d);
        h && (c === "queue" || !f._data(a, e)) && (c === "mark" || !f._data(a, g)) && setTimeout(function() {
            !f._data(a, e) && !f._data(a, g) && (f.removeData(a, d, !0),
            h.fire())
        }, 0)
    }
    function m(a) {
        for (var b in a) {
            if (b === "data" && f.isEmptyObject(a[b]))
                continue;
            if (b !== "toJSON")
                return !1
        }
        return !0
    }
    function l(a, c, d) {
        if (d === b && a.nodeType === 1) {
            var e = "data-" + c.replace(k, "-$1").toLowerCase();
            d = a.getAttribute(e);
            if (typeof d == "string") {
                try {
                    d = d === "true" ? !0 : d === "false" ? !1 : d === "null" ? null : f.isNumeric(d) ? +d : j.test(d) ? f.parseJSON(d) : d
                } catch (g) {}
                f.data(a, c, d)
            } else
                d = b
        }
        return d
    }
    function h(a) {
        var b = g[a] = {}, c, d;
        a = a.split(/\s+/);
        for (c = 0,
        d = a.length; c < d; c++)
            b[a[c]] = !0;
        return b
    }
    var c = a.document
      , d = a.navigator
      , e = a.location
      , f = function() {
        function J() {
            if (!e.isReady) {
                try {
                    c.documentElement.doScroll("left")
                } catch (a) {
                    setTimeout(J, 1);
                    return
                }
                e.ready()
            }
        }
        var e = function(a, b) {
            return new e.fn.init(a,b,h)
        }, f = a.jQuery, g = a.$, h, i = /^(?:[^#<]*(<[\w\W]+>)[^>]*$|#([\w\-]*)$)/, j = /\S/, k = /^\s+/, l = /\s+$/, m = /^<(\w+)\s*\/?>(?:<\/\1>)?$/, n = /^[\],:{}\s]*$/, o = /\\(?:["\\\/bfnrt]|u[0-9a-fA-F]{4})/g, p = /"[^"\\\n\r]*"|true|false|null|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?/g, q = /(?:^|:|,)(?:\s*\[)+/g, r = /(webkit)[ \/]([\w.]+)/, s = /(opera)(?:.*version)?[ \/]([\w.]+)/, t = /(msie) ([\w.]+)/, u = /(mozilla)(?:.*? rv:([\w.]+))?/, v = /-([a-z]|[0-9])/ig, w = /^-ms-/, x = function(a, b) {
            return (b + "").toUpperCase()
        }, y = d.userAgent, z, A, B, C = Object.prototype.toString, D = Object.prototype.hasOwnProperty, E = Array.prototype.push, F = Array.prototype.slice, G = String.prototype.trim, H = Array.prototype.indexOf, I = {};
        e.fn = e.prototype = {
            constructor: e,
            init: function(a, d, f) {
                var g, h, j, k;
                if (!a)
                    return this;
                if (a.nodeType) {
                    this.context = this[0] = a,
                    this.length = 1;
                    return this
                }
                if (a === "body" && !d && c.body) {
                    this.context = c,
                    this[0] = c.body,
                    this.selector = a,
                    this.length = 1;
                    return this
                }
                if (typeof a == "string") {
                    a.charAt(0) !== "<" || a.charAt(a.length - 1) !== ">" || a.length < 3 ? g = i.exec(a) : g = [null, a, null];
                    if (g && (g[1] || !d)) {
                        if (g[1]) {
                            d = d instanceof e ? d[0] : d,
                            k = d ? d.ownerDocument || d : c,
                            j = m.exec(a),
                            j ? e.isPlainObject(d) ? (a = [c.createElement(j[1])],
                            e.fn.attr.call(a, d, !0)) : a = [k.createElement(j[1])] : (j = e.buildFragment([g[1]], [k]),
                            a = (j.cacheable ? e.clone(j.fragment) : j.fragment).childNodes);
                            return e.merge(this, a)
                        }
                        h = c.getElementById(g[2]);
                        if (h && h.parentNode) {
                            if (h.id !== g[2])
                                return f.find(a);
                            this.length = 1,
                            this[0] = h
                        }
                        this.context = c,
                        this.selector = a;
                        return this
                    }
                    return !d || d.jquery ? (d || f).find(a) : this.constructor(d).find(a)
                }
                if (e.isFunction(a))
                    return f.ready(a);
                a.selector !== b && (this.selector = a.selector,
                this.context = a.context);
                return e.makeArray(a, this)
            },
            selector: "",
            jquery: "1.7.2",
            length: 0,
            size: function() {
                return this.length
            },
            toArray: function() {
                return F.call(this, 0)
            },
            get: function(a) {
                return a == null ? this.toArray() : a < 0 ? this[this.length + a] : this[a]
            },
            pushStack: function(a, b, c) {
                var d = this.constructor();
                e.isArray(a) ? E.apply(d, a) : e.merge(d, a),
                d.prevObject = this,
                d.context = this.context,
                b === "find" ? d.selector = this.selector + (this.selector ? " " : "") + c : b && (d.selector = this.selector + "." + b + "(" + c + ")");
                return d
            },
            each: function(a, b) {
                return e.each(this, a, b)
            },
            ready: function(a) {
                e.bindReady(),
                A.add(a);
                return this
            },
            eq: function(a) {
                a = +a;
                return a === -1 ? this.slice(a) : this.slice(a, a + 1)
            },
            first: function() {
                return this.eq(0)
            },
            last: function() {
                return this.eq(-1)
            },
            slice: function() {
                return this.pushStack(F.apply(this, arguments), "slice", F.call(arguments).join(","))
            },
            map: function(a) {
                return this.pushStack(e.map(this, function(b, c) {
                    return a.call(b, c, b)
                }))
            },
            end: function() {
                return this.prevObject || this.constructor(null)
            },
            push: E,
            sort: [].sort,
            splice: [].splice
        },
        e.fn.init.prototype = e.fn,
        e.extend = e.fn.extend = function() {
            var a, c, d, f, g, h, i = arguments[0] || {}, j = 1, k = arguments.length, l = !1;
            typeof i == "boolean" && (l = i,
            i = arguments[1] || {},
            j = 2),
            typeof i != "object" && !e.isFunction(i) && (i = {}),
            k === j && (i = this,
            --j);
            for (; j < k; j++)
                if ((a = arguments[j]) != null)
                    for (c in a) {
                        d = i[c],
                        f = a[c];
                        if (i === f)
                            continue;
                        l && f && (e.isPlainObject(f) || (g = e.isArray(f))) ? (g ? (g = !1,
                        h = d && e.isArray(d) ? d : []) : h = d && e.isPlainObject(d) ? d : {},
                        i[c] = e.extend(l, h, f)) : f !== b && (i[c] = f)
                    }
            return i
        }
        ,
        e.extend({
            noConflict: function(b) {
                a.$ === e && (a.$ = g),
                b && a.jQuery === e && (a.jQuery = f);
                return e
            },
            isReady: !1,
            readyWait: 1,
            holdReady: function(a) {
                a ? e.readyWait++ : e.ready(!0)
            },
            ready: function(a) {
                if (a === !0 && !--e.readyWait || a !== !0 && !e.isReady) {
                    if (!c.body)
                        return setTimeout(e.ready, 1);
                    e.isReady = !0;
                    if (a !== !0 && --e.readyWait > 0)
                        return;
                    A.fireWith(c, [e]),
                    e.fn.trigger && e(c).trigger("ready").off("ready")
                }
            },
            bindReady: function() {
                if (!A) {
                    A = e.Callbacks("once memory");
                    if (c.readyState === "complete")
                        return setTimeout(e.ready, 1);
                    if (c.addEventListener)
                        c.addEventListener("DOMContentLoaded", B, !1),
                        a.addEventListener("load", e.ready, !1);
                    else if (c.attachEvent) {
                        c.attachEvent("onreadystatechange", B),
                        a.attachEvent("onload", e.ready);
                        var b = !1;
                        try {
                            b = a.frameElement == null
                        } catch (d) {}
                        c.documentElement.doScroll && b && J()
                    }
                }
            },
            isFunction: function(a) {
                return e.type(a) === "function"
            },
            isArray: Array.isArray || function(a) {
                return e.type(a) === "array"
            }
            ,
            isWindow: function(a) {
                return a != null && a == a.window
            },
            isNumeric: function(a) {
                return !isNaN(parseFloat(a)) && isFinite(a)
            },
            type: function(a) {
                return a == null ? String(a) : I[C.call(a)] || "object"
            },
            isPlainObject: function(a) {
                if (!a || e.type(a) !== "object" || a.nodeType || e.isWindow(a))
                    return !1;
                try {
                    if (a.constructor && !D.call(a, "constructor") && !D.call(a.constructor.prototype, "isPrototypeOf"))
                        return !1
                } catch (c) {
                    return !1
                }
                var d;
                for (d in a)
                    ;
                return d === b || D.call(a, d)
            },
            isEmptyObject: function(a) {
                for (var b in a)
                    return !1;
                return !0
            },
            error: function(a) {
                throw new Error(a)
            },
            parseJSON: function(b) {
                if (typeof b != "string" || !b)
                    return null;
                b = e.trim(b);
                if (a.JSON && a.JSON.parse)
                    return a.JSON.parse(b);
                if (n.test(b.replace(o, "@").replace(p, "]").replace(q, "")))
                    return (new Function("return " + b))();
                e.error("Invalid JSON: " + b)
            },
            parseXML: function(c) {
                if (typeof c != "string" || !c)
                    return null;
                var d, f;
                try {
                    a.DOMParser ? (f = new DOMParser,
                    d = f.parseFromString(c, "text/xml")) : (d = new ActiveXObject("Microsoft.XMLDOM"),
                    d.async = "false",
                    d.loadXML(c))
                } catch (g) {
                    d = b
                }
                (!d || !d.documentElement || d.getElementsByTagName("parsererror").length) && e.error("Invalid XML: " + c);
                return d
            },
            noop: function() {},
            globalEval: function(b) {
                b && j.test(b) && (a.execScript || function(b) {
                    a.eval.call(a, b)
                }
                )(b)
            },
            camelCase: function(a) {
                return a.replace(w, "ms-").replace(v, x)
            },
            nodeName: function(a, b) {
                return a.nodeName && a.nodeName.toUpperCase() === b.toUpperCase()
            },
            each: function(a, c, d) {
                var f, g = 0, h = a.length, i = h === b || e.isFunction(a);
                if (d) {
                    if (i) {
                        for (f in a)
                            if (c.apply(a[f], d) === !1)
                                break
                    } else
                        for (; g < h; )
                            if (c.apply(a[g++], d) === !1)
                                break
                } else if (i) {
                    for (f in a)
                        if (c.call(a[f], f, a[f]) === !1)
                            break
                } else
                    for (; g < h; )
                        if (c.call(a[g], g, a[g++]) === !1)
                            break;
                return a
            },
            trim: G ? function(a) {
                return a == null ? "" : G.call(a)
            }
            : function(a) {
                return a == null ? "" : (a + "").replace(k, "").replace(l, "")
            }
            ,
            makeArray: function(a, b) {
                var c = b || [];
                if (a != null) {
                    var d = e.type(a);
                    a.length == null || d === "string" || d === "function" || d === "regexp" || e.isWindow(a) ? E.call(c, a) : e.merge(c, a)
                }
                return c
            },
            inArray: function(a, b, c) {
                var d;
                if (b) {
                    if (H)
                        return H.call(b, a, c);
                    d = b.length,
                    c = c ? c < 0 ? Math.max(0, d + c) : c : 0;
                    for (; c < d; c++)
                        if (c in b && b[c] === a)
                            return c
                }
                return -1
            },
            merge: function(a, c) {
                var d = a.length
                  , e = 0;
                if (typeof c.length == "number")
                    for (var f = c.length; e < f; e++)
                        a[d++] = c[e];
                else
                    while (c[e] !== b)
                        a[d++] = c[e++];
                a.length = d;
                return a
            },
            grep: function(a, b, c) {
                var d = [], e;
                c = !!c;
                for (var f = 0, g = a.length; f < g; f++)
                    e = !!b(a[f], f),
                    c !== e && d.push(a[f]);
                return d
            },
            map: function(a, c, d) {
                var f, g, h = [], i = 0, j = a.length, k = a instanceof e || j !== b && typeof j == "number" && (j > 0 && a[0] && a[j - 1] || j === 0 || e.isArray(a));
                if (k)
                    for (; i < j; i++)
                        f = c(a[i], i, d),
                        f != null && (h[h.length] = f);
                else
                    for (g in a)
                        f = c(a[g], g, d),
                        f != null && (h[h.length] = f);
                return h.concat.apply([], h)
            },
            guid: 1,
            proxy: function(a, c) {
                if (typeof c == "string") {
                    var d = a[c];
                    c = a,
                    a = d
                }
                if (!e.isFunction(a))
                    return b;
                var f = F.call(arguments, 2)
                  , g = function() {
                    return a.apply(c, f.concat(F.call(arguments)))
                };
                g.guid = a.guid = a.guid || g.guid || e.guid++;
                return g
            },
            access: function(a, c, d, f, g, h, i) {
                var j, k = d == null, l = 0, m = a.length;
                if (d && typeof d == "object") {
                    for (l in d)
                        e.access(a, c, l, d[l], 1, h, f);
                    g = 1
                } else if (f !== b) {
                    j = i === b && e.isFunction(f),
                    k && (j ? (j = c,
                    c = function(a, b, c) {
                        return j.call(e(a), c)
                    }
                    ) : (c.call(a, f),
                    c = null));
                    if (c)
                        for (; l < m; l++)
                            c(a[l], d, j ? f.call(a[l], l, c(a[l], d)) : f, i);
                    g = 1
                }
                return g ? a : k ? c.call(a) : m ? c(a[0], d) : h
            },
            now: function() {
                return (new Date).getTime()
            },
            uaMatch: function(a) {
                a = a.toLowerCase();
                var b = r.exec(a) || s.exec(a) || t.exec(a) || a.indexOf("compatible") < 0 && u.exec(a) || [];
                return {
                    browser: b[1] || "",
                    version: b[2] || "0"
                }
            },
            sub: function() {
                function a(b, c) {
                    return new a.fn.init(b,c)
                }
                e.extend(!0, a, this),
                a.superclass = this,
                a.fn = a.prototype = this(),
                a.fn.constructor = a,
                a.sub = this.sub,
                a.fn.init = function(d, f) {
                    f && f instanceof e && !(f instanceof a) && (f = a(f));
                    return e.fn.init.call(this, d, f, b)
                }
                ,
                a.fn.init.prototype = a.fn;
                var b = a(c);
                return a
            },
            browser: {}
        }),
        e.each("Boolean Number String Function Array Date RegExp Object".split(" "), function(a, b) {
            I["[object " + b + "]"] = b.toLowerCase()
        }),
        z = e.uaMatch(y),
        z.browser && (e.browser[z.browser] = !0,
        e.browser.version = z.version),
        e.browser.webkit && (e.browser.safari = !0),
        j.test(" ") && (k = /^[\s\xA0]+/,
        l = /[\s\xA0]+$/),
        h = e(c),
        c.addEventListener ? B = function() {
            c.removeEventListener("DOMContentLoaded", B, !1),
            e.ready()
        }
        : c.attachEvent && (B = function() {
            c.readyState === "complete" && (c.detachEvent("onreadystatechange", B),
            e.ready())
        }
        );
        return e
    }()
      , g = {};
    f.Callbacks = function(a) {
        a = a ? g[a] || h(a) : {};
        var c = [], d = [], e, i, j, k, l, m, n = function(b) {
            var d, e, g, h, i;
            for (d = 0,
            e = b.length; d < e; d++)
                g = b[d],
                h = f.type(g),
                h === "array" ? n(g) : h === "function" && (!a.unique || !p.has(g)) && c.push(g)
        }, o = function(b, f) {
            f = f || [],
            e = !a.memory || [b, f],
            i = !0,
            j = !0,
            m = k || 0,
            k = 0,
            l = c.length;
            for (; c && m < l; m++)
                if (c[m].apply(b, f) === !1 && a.stopOnFalse) {
                    e = !0;
                    break
                }
            j = !1,
            c && (a.once ? e === !0 ? p.disable() : c = [] : d && d.length && (e = d.shift(),
            p.fireWith(e[0], e[1])))
        }, p = {
            add: function() {
                if (c) {
                    var a = c.length;
                    n(arguments),
                    j ? l = c.length : e && e !== !0 && (k = a,
                    o(e[0], e[1]))
                }
                return this
            },
            remove: function() {
                if (c) {
                    var b = arguments
                      , d = 0
                      , e = b.length;
                    for (; d < e; d++)
                        for (var f = 0; f < c.length; f++)
                            if (b[d] === c[f]) {
                                j && f <= l && (l--,
                                f <= m && m--),
                                c.splice(f--, 1);
                                if (a.unique)
                                    break
                            }
                }
                return this
            },
            has: function(a) {
                if (c) {
                    var b = 0
                      , d = c.length;
                    for (; b < d; b++)
                        if (a === c[b])
                            return !0
                }
                return !1
            },
            empty: function() {
                c = [];
                return this
            },
            disable: function() {
                c = d = e = b;
                return this
            },
            disabled: function() {
                return !c
            },
            lock: function() {
                d = b,
                (!e || e === !0) && p.disable();
                return this
            },
            locked: function() {
                return !d
            },
            fireWith: function(b, c) {
                d && (j ? a.once || d.push([b, c]) : (!a.once || !e) && o(b, c));
                return this
            },
            fire: function() {
                p.fireWith(this, arguments);
                return this
            },
            fired: function() {
                return !!i
            }
        };
        return p
    }
    ;
    var i = [].slice;
    f.extend({
        Deferred: function(a) {
            var b = f.Callbacks("once memory"), c = f.Callbacks("once memory"), d = f.Callbacks("memory"), e = "pending", g = {
                resolve: b,
                reject: c,
                notify: d
            }, h = {
                done: b.add,
                fail: c.add,
                progress: d.add,
                state: function() {
                    return e
                },
                isResolved: b.fired,
                isRejected: c.fired,
                then: function(a, b, c) {
                    i.done(a).fail(b).progress(c);
                    return this
                },
                always: function() {
                    i.done.apply(i, arguments).fail.apply(i, arguments);
                    return this
                },
                pipe: function(a, b, c) {
                    return f.Deferred(function(d) {
                        f.each({
                            done: [a, "resolve"],
                            fail: [b, "reject"],
                            progress: [c, "notify"]
                        }, function(a, b) {
                            var c = b[0], e = b[1], g;
                            f.isFunction(c) ? i[a](function() {
                                g = c.apply(this, arguments),
                                g && f.isFunction(g.promise) ? g.promise().then(d.resolve, d.reject, d.notify) : d[e + "With"](this === i ? d : this, [g])
                            }) : i[a](d[e])
                        })
                    }).promise()
                },
                promise: function(a) {
                    if (a == null)
                        a = h;
                    else
                        for (var b in h)
                            a[b] = h[b];
                    return a
                }
            }, i = h.promise({}), j;
            for (j in g)
                i[j] = g[j].fire,
                i[j + "With"] = g[j].fireWith;
            i.done(function() {
                e = "resolved"
            }, c.disable, d.lock).fail(function() {
                e = "rejected"
            }, b.disable, d.lock),
            a && a.call(i, i);
            return i
        },
        when: function(a) {
            function m(a) {
                return function(b) {
                    e[a] = arguments.length > 1 ? i.call(arguments, 0) : b,
                    j.notifyWith(k, e)
                }
            }
            function l(a) {
                return function(c) {
                    b[a] = arguments.length > 1 ? i.call(arguments, 0) : c,
                    --g || j.resolveWith(j, b)
                }
            }
            var b = i.call(arguments, 0)
              , c = 0
              , d = b.length
              , e = Array(d)
              , g = d
              , h = d
              , j = d <= 1 && a && f.isFunction(a.promise) ? a : f.Deferred()
              , k = j.promise();
            if (d > 1) {
                for (; c < d; c++)
                    b[c] && b[c].promise && f.isFunction(b[c].promise) ? b[c].promise().then(l(c), j.reject, m(c)) : --g;
                g || j.resolveWith(j, b)
            } else
                j !== a && j.resolveWith(j, d ? [a] : []);
            return k
        }
    }),
    f.support = function() {
        var b, d, e, g, h, i, j, k, l, m, n, o, p = c.createElement("div"), q = c.documentElement;
        p.setAttribute("className", "t"),
        p.innerHTML = "   <link/><table></table><a href='/a' style='top:1px;float:left;opacity:.55;'>a</a><input type='checkbox'/>",
        d = p.getElementsByTagName("*"),
        e = p.getElementsByTagName("a")[0];
        if (!d || !d.length || !e)
            return {};
        g = c.createElement("select"),
        h = g.appendChild(c.createElement("option")),
        i = p.getElementsByTagName("input")[0],
        b = {
            leadingWhitespace: p.firstChild.nodeType === 3,
            tbody: !p.getElementsByTagName("tbody").length,
            htmlSerialize: !!p.getElementsByTagName("link").length,
            style: /top/.test(e.getAttribute("style")),
            hrefNormalized: e.getAttribute("href") === "/a",
            opacity: /^0.55/.test(e.style.opacity),
            cssFloat: !!e.style.cssFloat,
            checkOn: i.value === "on",
            optSelected: h.selected,
            getSetAttribute: p.className !== "t",
            enctype: !!c.createElement("form").enctype,
            html5Clone: c.createElement("nav").cloneNode(!0).outerHTML !== "<:nav></:nav>",
            submitBubbles: !0,
            changeBubbles: !0,
            focusinBubbles: !1,
            deleteExpando: !0,
            noCloneEvent: !0,
            inlineBlockNeedsLayout: !1,
            shrinkWrapBlocks: !1,
            reliableMarginRight: !0,
            pixelMargin: !0
        },
        f.boxModel = b.boxModel = c.compatMode === "CSS1Compat",
        i.checked = !0,
        b.noCloneChecked = i.cloneNode(!0).checked,
        g.disabled = !0,
        b.optDisabled = !h.disabled;
        try {
            delete p.test
        } catch (r) {
            b.deleteExpando = !1
        }
        !p.addEventListener && p.attachEvent && p.fireEvent && (p.attachEvent("onclick", function() {
            b.noCloneEvent = !1
        }),
        p.cloneNode(!0).fireEvent("onclick")),
        i = c.createElement("input"),
        i.value = "t",
        i.setAttribute("type", "radio"),
        b.radioValue = i.value === "t",
        i.setAttribute("checked", "checked"),
        i.setAttribute("name", "t"),
        p.appendChild(i),
        j = c.createDocumentFragment(),
        j.appendChild(p.lastChild),
        b.checkClone = j.cloneNode(!0).cloneNode(!0).lastChild.checked,
        b.appendChecked = i.checked,
        j.removeChild(i),
        j.appendChild(p);
        if (p.attachEvent)
            for (n in {
                submit: 1,
                change: 1,
                focusin: 1
            })
                m = "on" + n,
                o = m in p,
                o || (p.setAttribute(m, "return;"),
                o = typeof p[m] == "function"),
                b[n + "Bubbles"] = o;
        j.removeChild(p),
        j = g = h = p = i = null,
        f(function() {
            var d, e, g, h, i, j, l, m, n, q, r, s, t, u = c.getElementsByTagName("body")[0];
            !u || (m = 1,
            t = "padding:0;margin:0;border:",
            r = "position:absolute;top:0;left:0;width:1px;height:1px;",
            s = t + "0;visibility:hidden;",
            n = "style='" + r + t + "5px solid #000;",
            q = "<div " + n + "display:block;'><div style='" + t + "0;display:block;overflow:hidden;'></div></div>" + "<table " + n + "' cellpadding='0' cellspacing='0'>" + "<tr><td></td></tr></table>",
            d = c.createElement("div"),
            d.style.cssText = s + "width:0;height:0;position:static;top:0;margin-top:" + m + "px",
            u.insertBefore(d, u.firstChild),
            p = c.createElement("div"),
            d.appendChild(p),
            p.innerHTML = "<table><tr><td style='" + t + "0;display:none'></td><td>t</td></tr></table>",
            k = p.getElementsByTagName("td"),
            o = k[0].offsetHeight === 0,
            k[0].style.display = "",
            k[1].style.display = "none",
            b.reliableHiddenOffsets = o && k[0].offsetHeight === 0,
            a.getComputedStyle && (p.innerHTML = "",
            l = c.createElement("div"),
            l.style.width = "0",
            l.style.marginRight = "0",
            p.style.width = "2px",
            p.appendChild(l),
            b.reliableMarginRight = (parseInt((a.getComputedStyle(l, null) || {
                marginRight: 0
            }).marginRight, 10) || 0) === 0),
            typeof p.style.zoom != "undefined" && (p.innerHTML = "",
            p.style.width = p.style.padding = "1px",
            p.style.border = 0,
            p.style.overflow = "hidden",
            p.style.display = "inline",
            p.style.zoom = 1,
            b.inlineBlockNeedsLayout = p.offsetWidth === 3,
            p.style.display = "block",
            p.style.overflow = "visible",
            p.innerHTML = "<div style='width:5px;'></div>",
            b.shrinkWrapBlocks = p.offsetWidth !== 3),
            p.style.cssText = r + s,
            p.innerHTML = q,
            e = p.firstChild,
            g = e.firstChild,
            i = e.nextSibling.firstChild.firstChild,
            j = {
                doesNotAddBorder: g.offsetTop !== 5,
                doesAddBorderForTableAndCells: i.offsetTop === 5
            },
            g.style.position = "fixed",
            g.style.top = "20px",
            j.fixedPosition = g.offsetTop === 20 || g.offsetTop === 15,
            g.style.position = g.style.top = "",
            e.style.overflow = "hidden",
            e.style.position = "relative",
            j.subtractsBorderForOverflowNotVisible = g.offsetTop === -5,
            j.doesNotIncludeMarginInBodyOffset = u.offsetTop !== m,
            a.getComputedStyle && (p.style.marginTop = "1%",
            b.pixelMargin = (a.getComputedStyle(p, null) || {
                marginTop: 0
            }).marginTop !== "1%"),
            typeof d.style.zoom != "undefined" && (d.style.zoom = 1),
            u.removeChild(d),
            l = p = d = null,
            f.extend(b, j))
        });
        return b
    }();
    var j = /^(?:\{.*\}|\[.*\])$/
      , k = /([A-Z])/g;
    f.extend({
        cache: {},
        uuid: 0,
        expando: "jQuery" + (f.fn.jquery + Math.random()).replace(/\D/g, ""),
        noData: {
            embed: !0,
            object: "clsid:D27CDB6E-AE6D-11cf-96B8-444553540000",
            applet: !0
        },
        hasData: function(a) {
            a = a.nodeType ? f.cache[a[f.expando]] : a[f.expando];
            return !!a && !m(a)
        },
        data: function(a, c, d, e) {
            if (!!f.acceptData(a)) {
                var g, h, i, j = f.expando, k = typeof c == "string", l = a.nodeType, m = l ? f.cache : a, n = l ? a[j] : a[j] && j, o = c === "events";
                if ((!n || !m[n] || !o && !e && !m[n].data) && k && d === b)
                    return;
                n || (l ? a[j] = n = ++f.uuid : n = j),
                m[n] || (m[n] = {},
                l || (m[n].toJSON = f.noop));
                if (typeof c == "object" || typeof c == "function")
                    e ? m[n] = f.extend(m[n], c) : m[n].data = f.extend(m[n].data, c);
                g = h = m[n],
                e || (h.data || (h.data = {}),
                h = h.data),
                d !== b && (h[f.camelCase(c)] = d);
                if (o && !h[c])
                    return g.events;
                k ? (i = h[c],
                i == null && (i = h[f.camelCase(c)])) : i = h;
                return i
            }
        },
        removeData: function(a, b, c) {
            if (!!f.acceptData(a)) {
                var d, e, g, h = f.expando, i = a.nodeType, j = i ? f.cache : a, k = i ? a[h] : h;
                if (!j[k])
                    return;
                if (b) {
                    d = c ? j[k] : j[k].data;
                    if (d) {
                        f.isArray(b) || (b in d ? b = [b] : (b = f.camelCase(b),
                        b in d ? b = [b] : b = b.split(" ")));
                        for (e = 0,
                        g = b.length; e < g; e++)
                            delete d[b[e]];
                        if (!(c ? m : f.isEmptyObject)(d))
                            return
                    }
                }
                if (!c) {
                    delete j[k].data;
                    if (!m(j[k]))
                        return
                }
                f.support.deleteExpando || !j.setInterval ? delete j[k] : j[k] = null,
                i && (f.support.deleteExpando ? delete a[h] : a.removeAttribute ? a.removeAttribute(h) : a[h] = null)
            }
        },
        _data: function(a, b, c) {
            return f.data(a, b, c, !0)
        },
        acceptData: function(a) {
            if (a.nodeName) {
                var b = f.noData[a.nodeName.toLowerCase()];
                if (b)
                    return b !== !0 && a.getAttribute("classid") === b
            }
            return !0
        }
    }),
    f.fn.extend({
        data: function(a, c) {
            var d, e, g, h, i, j = this[0], k = 0, m = null;
            if (a === b) {
                if (this.length) {
                    m = f.data(j);
                    if (j.nodeType === 1 && !f._data(j, "parsedAttrs")) {
                        g = j.attributes;
                        for (i = g.length; k < i; k++)
                            h = g[k].name,
                            h.indexOf("data-") === 0 && (h = f.camelCase(h.substring(5)),
                            l(j, h, m[h]));
                        f._data(j, "parsedAttrs", !0)
                    }
                }
                return m
            }
            if (typeof a == "object")
                return this.each(function() {
                    f.data(this, a)
                });
            d = a.split(".", 2),
            d[1] = d[1] ? "." + d[1] : "",
            e = d[1] + "!";
            return f.access(this, function(c) {
                if (c === b) {
                    m = this.triggerHandler("getData" + e, [d[0]]),
                    m === b && j && (m = f.data(j, a),
                    m = l(j, a, m));
                    return m === b && d[1] ? this.data(d[0]) : m
                }
                d[1] = c,
                this.each(function() {
                    var b = f(this);
                    b.triggerHandler("setData" + e, d),
                    f.data(this, a, c),
                    b.triggerHandler("changeData" + e, d)
                })
            }, null, c, arguments.length > 1, null, !1)
        },
        removeData: function(a) {
            return this.each(function() {
                f.removeData(this, a)
            })
        }
    }),
    f.extend({
        _mark: function(a, b) {
            a && (b = (b || "fx") + "mark",
            f._data(a, b, (f._data(a, b) || 0) + 1))
        },
        _unmark: function(a, b, c) {
            a !== !0 && (c = b,
            b = a,
            a = !1);
            if (b) {
                c = c || "fx";
                var d = c + "mark"
                  , e = a ? 0 : (f._data(b, d) || 1) - 1;
                e ? f._data(b, d, e) : (f.removeData(b, d, !0),
                n(b, c, "mark"))
            }
        },
        queue: function(a, b, c) {
            var d;
            if (a) {
                b = (b || "fx") + "queue",
                d = f._data(a, b),
                c && (!d || f.isArray(c) ? d = f._data(a, b, f.makeArray(c)) : d.push(c));
                return d || []
            }
        },
        dequeue: function(a, b) {
            b = b || "fx";
            var c = f.queue(a, b)
              , d = c.shift()
              , e = {};
            d === "inprogress" && (d = c.shift()),
            d && (b === "fx" && c.unshift("inprogress"),
            f._data(a, b + ".run", e),
            d.call(a, function() {
                f.dequeue(a, b)
            }, e)),
            c.length || (f.removeData(a, b + "queue " + b + ".run", !0),
            n(a, b, "queue"))
        }
    }),
    f.fn.extend({
        queue: function(a, c) {
            var d = 2;
            typeof a != "string" && (c = a,
            a = "fx",
            d--);
            if (arguments.length < d)
                return f.queue(this[0], a);
            return c === b ? this : this.each(function() {
                var b = f.queue(this, a, c);
                a === "fx" && b[0] !== "inprogress" && f.dequeue(this, a)
            })
        },
        dequeue: function(a) {
            return this.each(function() {
                f.dequeue(this, a)
            })
        },
        delay: function(a, b) {
            a = f.fx ? f.fx.speeds[a] || a : a,
            b = b || "fx";
            return this.queue(b, function(b, c) {
                var d = setTimeout(b, a);
                c.stop = function() {
                    clearTimeout(d)
                }
            })
        },
        clearQueue: function(a) {
            return this.queue(a || "fx", [])
        },
        promise: function(a, c) {
            function m() {
                --h || d.resolveWith(e, [e])
            }
            typeof a != "string" && (c = a,
            a = b),
            a = a || "fx";
            var d = f.Deferred(), e = this, g = e.length, h = 1, i = a + "defer", j = a + "queue", k = a + "mark", l;
            while (g--)
                if (l = f.data(e[g], i, b, !0) || (f.data(e[g], j, b, !0) || f.data(e[g], k, b, !0)) && f.data(e[g], i, f.Callbacks("once memory"), !0))
                    h++,
                    l.add(m);
            m();
            return d.promise(c)
        }
    });
    var o = /[\n\t\r]/g, p = /\s+/, q = /\r/g, r = /^(?:button|input)$/i, s = /^(?:button|input|object|select|textarea)$/i, t = /^a(?:rea)?$/i, u = /^(?:autofocus|autoplay|async|checked|controls|defer|disabled|hidden|loop|multiple|open|readonly|required|scoped|selected)$/i, v = f.support.getSetAttribute, w, x, y;
    f.fn.extend({
        attr: function(a, b) {
            return f.access(this, f.attr, a, b, arguments.length > 1)
        },
        removeAttr: function(a) {
            return this.each(function() {
                f.removeAttr(this, a)
            })
        },
        prop: function(a, b) {
            return f.access(this, f.prop, a, b, arguments.length > 1)
        },
        removeProp: function(a) {
            a = f.propFix[a] || a;
            return this.each(function() {
                try {
                    this[a] = b,
                    delete this[a]
                } catch (c) {}
            })
        },
        addClass: function(a) {
            var b, c, d, e, g, h, i;
            if (f.isFunction(a))
                return this.each(function(b) {
                    f(this).addClass(a.call(this, b, this.className))
                });
            if (a && typeof a == "string") {
                b = a.split(p);
                for (c = 0,
                d = this.length; c < d; c++) {
                    e = this[c];
                    if (e.nodeType === 1)
                        if (!e.className && b.length === 1)
                            e.className = a;
                        else {
                            g = " " + e.className + " ";
                            for (h = 0,
                            i = b.length; h < i; h++)
                                ~g.indexOf(" " + b[h] + " ") || (g += b[h] + " ");
                            e.className = f.trim(g)
                        }
                }
            }
            return this
        },
        removeClass: function(a) {
            var c, d, e, g, h, i, j;
            if (f.isFunction(a))
                return this.each(function(b) {
                    f(this).removeClass(a.call(this, b, this.className))
                });
            if (a && typeof a == "string" || a === b) {
                c = (a || "").split(p);
                for (d = 0,
                e = this.length; d < e; d++) {
                    g = this[d];
                    if (g.nodeType === 1 && g.className)
                        if (a) {
                            h = (" " + g.className + " ").replace(o, " ");
                            for (i = 0,
                            j = c.length; i < j; i++)
                                h = h.replace(" " + c[i] + " ", " ");
                            g.className = f.trim(h)
                        } else
                            g.className = ""
                }
            }
            return this
        },
        toggleClass: function(a, b) {
            var c = typeof a
              , d = typeof b == "boolean";
            if (f.isFunction(a))
                return this.each(function(c) {
                    f(this).toggleClass(a.call(this, c, this.className, b), b)
                });
            return this.each(function() {
                if (c === "string") {
                    var e, g = 0, h = f(this), i = b, j = a.split(p);
                    while (e = j[g++])
                        i = d ? i : !h.hasClass(e),
                        h[i ? "addClass" : "removeClass"](e)
                } else if (c === "undefined" || c === "boolean")
                    this.className && f._data(this, "__className__", this.className),
                    this.className = this.className || a === !1 ? "" : f._data(this, "__className__") || ""
            })
        },
        hasClass: function(a) {
            var b = " " + a + " "
              , c = 0
              , d = this.length;
            for (; c < d; c++)
                if (this[c].nodeType === 1 && (" " + this[c].className + " ").replace(o, " ").indexOf(b) > -1)
                    return !0;
            return !1
        },
        val: function(a) {
            var c, d, e, g = this[0];
            {
                if (!!arguments.length) {
                    e = f.isFunction(a);
                    return this.each(function(d) {
                        var g = f(this), h;
                        if (this.nodeType === 1) {
                            e ? h = a.call(this, d, g.val()) : h = a,
                            h == null ? h = "" : typeof h == "number" ? h += "" : f.isArray(h) && (h = f.map(h, function(a) {
                                return a == null ? "" : a + ""
                            })),
                            c = f.valHooks[this.type] || f.valHooks[this.nodeName.toLowerCase()];
                            if (!c || !("set"in c) || c.set(this, h, "value") === b)
                                this.value = h
                        }
                    })
                }
                if (g) {
                    c = f.valHooks[g.type] || f.valHooks[g.nodeName.toLowerCase()];
                    if (c && "get"in c && (d = c.get(g, "value")) !== b)
                        return d;
                    d = g.value;
                    return typeof d == "string" ? d.replace(q, "") : d == null ? "" : d
                }
            }
        }
    }),
    f.extend({
        valHooks: {
            option: {
                get: function(a) {
                    var b = a.attributes.value;
                    return !b || b.specified ? a.value : a.text
                }
            },
            select: {
                get: function(a) {
                    var b, c, d, e, g = a.selectedIndex, h = [], i = a.options, j = a.type === "select-one";
                    if (g < 0)
                        return null;
                    c = j ? g : 0,
                    d = j ? g + 1 : i.length;
                    for (; c < d; c++) {
                        e = i[c];
                        if (e.selected && (f.support.optDisabled ? !e.disabled : e.getAttribute("disabled") === null) && (!e.parentNode.disabled || !f.nodeName(e.parentNode, "optgroup"))) {
                            b = f(e).val();
                            if (j)
                                return b;
                            h.push(b)
                        }
                    }
                    if (j && !h.length && i.length)
                        return f(i[g]).val();
                    return h
                },
                set: function(a, b) {
                    var c = f.makeArray(b);
                    f(a).find("option").each(function() {
                        this.selected = f.inArray(f(this).val(), c) >= 0
                    }),
                    c.length || (a.selectedIndex = -1);
                    return c
                }
            }
        },
        attrFn: {
            val: !0,
            css: !0,
            html: !0,
            text: !0,
            data: !0,
            width: !0,
            height: !0,
            offset: !0
        },
        attr: function(a, c, d, e) {
            var g, h, i, j = a.nodeType;
            if (!!a && j !== 3 && j !== 8 && j !== 2) {
                if (e && c in f.attrFn)
                    return f(a)[c](d);
                if (typeof a.getAttribute == "undefined")
                    return f.prop(a, c, d);
                i = j !== 1 || !f.isXMLDoc(a),
                i && (c = c.toLowerCase(),
                h = f.attrHooks[c] || (u.test(c) ? x : w));
                if (d !== b) {
                    if (d === null) {
                        f.removeAttr(a, c);
                        return
                    }
                    if (h && "set"in h && i && (g = h.set(a, d, c)) !== b)
                        return g;
                    a.setAttribute(c, "" + d);
                    return d
                }
                if (h && "get"in h && i && (g = h.get(a, c)) !== null)
                    return g;
                g = a.getAttribute(c);
                return g === null ? b : g
            }
        },
        removeAttr: function(a, b) {
            var c, d, e, g, h, i = 0;
            if (b && a.nodeType === 1) {
                d = b.toLowerCase().split(p),
                g = d.length;
                for (; i < g; i++)
                    e = d[i],
                    e && (c = f.propFix[e] || e,
                    h = u.test(e),
                    h || f.attr(a, e, ""),
                    a.removeAttribute(v ? e : c),
                    h && c in a && (a[c] = !1))
            }
        },
        attrHooks: {
            type: {
                set: function(a, b) {
                    if (r.test(a.nodeName) && a.parentNode)
                        f.error("type property can't be changed");
                    else if (!f.support.radioValue && b === "radio" && f.nodeName(a, "input")) {
                        var c = a.value;
                        a.setAttribute("type", b),
                        c && (a.value = c);
                        return b
                    }
                }
            },
            value: {
                get: function(a, b) {
                    if (w && f.nodeName(a, "button"))
                        return w.get(a, b);
                    return b in a ? a.value : null
                },
                set: function(a, b, c) {
                    if (w && f.nodeName(a, "button"))
                        return w.set(a, b, c);
                    a.value = b
                }
            }
        },
        propFix: {
            tabindex: "tabIndex",
            readonly: "readOnly",
            "for": "htmlFor",
            "class": "className",
            maxlength: "maxLength",
            cellspacing: "cellSpacing",
            cellpadding: "cellPadding",
            rowspan: "rowSpan",
            colspan: "colSpan",
            usemap: "useMap",
            frameborder: "frameBorder",
            contenteditable: "contentEditable"
        },
        prop: function(a, c, d) {
            var e, g, h, i = a.nodeType;
            if (!!a && i !== 3 && i !== 8 && i !== 2) {
                h = i !== 1 || !f.isXMLDoc(a),
                h && (c = f.propFix[c] || c,
                g = f.propHooks[c]);
                return d !== b ? g && "set"in g && (e = g.set(a, d, c)) !== b ? e : a[c] = d : g && "get"in g && (e = g.get(a, c)) !== null ? e : a[c]
            }
        },
        propHooks: {
            tabIndex: {
                get: function(a) {
                    var c = a.getAttributeNode("tabindex");
                    return c && c.specified ? parseInt(c.value, 10) : s.test(a.nodeName) || t.test(a.nodeName) && a.href ? 0 : b
                }
            }
        }
    }),
    f.attrHooks.tabindex = f.propHooks.tabIndex,
    x = {
        get: function(a, c) {
            var d, e = f.prop(a, c);
            return e === !0 || typeof e != "boolean" && (d = a.getAttributeNode(c)) && d.nodeValue !== !1 ? c.toLowerCase() : b
        },
        set: function(a, b, c) {
            var d;
            b === !1 ? f.removeAttr(a, c) : (d = f.propFix[c] || c,
            d in a && (a[d] = !0),
            a.setAttribute(c, c.toLowerCase()));
            return c
        }
    },
    v || (y = {
        name: !0,
        id: !0,
        coords: !0
    },
    w = f.valHooks.button = {
        get: function(a, c) {
            var d;
            d = a.getAttributeNode(c);
            return d && (y[c] ? d.nodeValue !== "" : d.specified) ? d.nodeValue : b
        },
        set: function(a, b, d) {
            var e = a.getAttributeNode(d);
            e || (e = c.createAttribute(d),
            a.setAttributeNode(e));
            return e.nodeValue = b + ""
        }
    },
    f.attrHooks.tabindex.set = w.set,
    f.each(["width", "height"], function(a, b) {
        f.attrHooks[b] = f.extend(f.attrHooks[b], {
            set: function(a, c) {
                if (c === "") {
                    a.setAttribute(b, "auto");
                    return c
                }
            }
        })
    }),
    f.attrHooks.contenteditable = {
        get: w.get,
        set: function(a, b, c) {
            b === "" && (b = "false"),
            w.set(a, b, c)
        }
    }),
    f.support.hrefNormalized || f.each(["href", "src", "width", "height"], function(a, c) {
        f.attrHooks[c] = f.extend(f.attrHooks[c], {
            get: function(a) {
                var d = a.getAttribute(c, 2);
                return d === null ? b : d
            }
        })
    }),
    f.support.style || (f.attrHooks.style = {
        get: function(a) {
            return a.style.cssText.toLowerCase() || b
        },
        set: function(a, b) {
            return a.style.cssText = "" + b
        }
    }),
    f.support.optSelected || (f.propHooks.selected = f.extend(f.propHooks.selected, {
        get: function(a) {
            var b = a.parentNode;
            b && (b.selectedIndex,
            b.parentNode && b.parentNode.selectedIndex);
            return null
        }
    })),
    f.support.enctype || (f.propFix.enctype = "encoding"),
    f.support.checkOn || f.each(["radio", "checkbox"], function() {
        f.valHooks[this] = {
            get: function(a) {
                return a.getAttribute("value") === null ? "on" : a.value
            }
        }
    }),
    f.each(["radio", "checkbox"], function() {
        f.valHooks[this] = f.extend(f.valHooks[this], {
            set: function(a, b) {
                if (f.isArray(b))
                    return a.checked = f.inArray(f(a).val(), b) >= 0
            }
        })
    });
    var z = /^(?:textarea|input|select)$/i
      , A = /^([^\.]*)?(?:\.(.+))?$/
      , B = /(?:^|\s)hover(\.\S+)?\b/
      , C = /^key/
      , D = /^(?:mouse|contextmenu)|click/
      , E = /^(?:focusinfocus|focusoutblur)$/
      , F = /^(\w*)(?:#([\w\-]+))?(?:\.([\w\-]+))?$/
      , G = function(
    a) {
        var b = F.exec(a);
        b && (b[1] = (b[1] || "").toLowerCase(),
        b[3] = b[3] && new RegExp("(?:^|\\s)" + b[3] + "(?:\\s|$)"));
        return b
    }
      , H = function(a, b) {
        var c = a.attributes || {};
        return (!b[1] || a.nodeName.toLowerCase() === b[1]) && (!b[2] || (c.id || {}).value === b[2]) && (!b[3] || b[3].test((c["class"] || {}).value))
    }
      , I = function(a) {
        return f.event.special.hover ? a : a.replace(B, "mouseenter$1 mouseleave$1")
    };
    f.event = {
        add: function(a, c, d, e, g) {
            var h, i, j, k, l, m, n, o, p, q, r, s;
            if (!(a.nodeType === 3 || a.nodeType === 8 || !c || !d || !(h = f._data(a)))) {
                d.handler && (p = d,
                d = p.handler,
                g = p.selector),
                d.guid || (d.guid = f.guid++),
                j = h.events,
                j || (h.events = j = {}),
                i = h.handle,
                i || (h.handle = i = function(a) {
                    return typeof f != "undefined" && (!a || f.event.triggered !== a.type) ? f.event.dispatch.apply(i.elem, arguments) : b
                }
                ,
                i.elem = a),
                c = f.trim(I(c)).split(" ");
                for (k = 0; k < c.length; k++) {
                    l = A.exec(c[k]) || [],
                    m = l[1],
                    n = (l[2] || "").split(".").sort(),
                    s = f.event.special[m] || {},
                    m = (g ? s.delegateType : s.bindType) || m,
                    s = f.event.special[m] || {},
                    o = f.extend({
                        type: m,
                        origType: l[1],
                        data: e,
                        handler: d,
                        guid: d.guid,
                        selector: g,
                        quick: g && G(g),
                        namespace: n.join(".")
                    }, p),
                    r = j[m];
                    if (!r) {
                        r = j[m] = [],
                        r.delegateCount = 0;
                        if (!s.setup || s.setup.call(a, e, n, i) === !1)
                            a.addEventListener ? a.addEventListener(m, i, !1) : a.attachEvent && a.attachEvent("on" + m, i)
                    }
                    s.add && (s.add.call(a, o),
                    o.handler.guid || (o.handler.guid = d.guid)),
                    g ? r.splice(r.delegateCount++, 0, o) : r.push(o),
                    f.event.global[m] = !0
                }
                a = null
            }
        },
        global: {},
        remove: function(a, b, c, d, e) {
            var g = f.hasData(a) && f._data(a), h, i, j, k, l, m, n, o, p, q, r, s;
            if (!!g && !!(o = g.events)) {
                b = f.trim(I(b || "")).split(" ");
                for (h = 0; h < b.length; h++) {
                    i = A.exec(b[h]) || [],
                    j = k = i[1],
                    l = i[2];
                    if (!j) {
                        for (j in o)
                            f.event.remove(a, j + b[h], c, d, !0);
                        continue
                    }
                    p = f.event.special[j] || {},
                    j = (d ? p.delegateType : p.bindType) || j,
                    r = o[j] || [],
                    m = r.length,
                    l = l ? new RegExp("(^|\\.)" + l.split(".").sort().join("\\.(?:.*\\.)?") + "(\\.|$)") : null;
                    for (n = 0; n < r.length; n++)
                        s = r[n],
                        (e || k === s.origType) && (!c || c.guid === s.guid) && (!l || l.test(s.namespace)) && (!d || d === s.selector || d === "**" && s.selector) && (r.splice(n--, 1),
                        s.selector && r.delegateCount--,
                        p.remove && p.remove.call(a, s));
                    r.length === 0 && m !== r.length && ((!p.teardown || p.teardown.call(a, l) === !1) && f.removeEvent(a, j, g.handle),
                    delete o[j])
                }
                f.isEmptyObject(o) && (q = g.handle,
                q && (q.elem = null),
                f.removeData(a, ["events", "handle"], !0))
            }
        },
        customEvent: {
            getData: !0,
            setData: !0,
            changeData: !0
        },
        trigger: function(c, d, e, g) {
            if (!e || e.nodeType !== 3 && e.nodeType !== 8) {
                var h = c.type || c, i = [], j, k, l, m, n, o, p, q, r, s;
                if (E.test(h + f.event.triggered))
                    return;
                h.indexOf("!") >= 0 && (h = h.slice(0, -1),
                k = !0),
                h.indexOf(".") >= 0 && (i = h.split("."),
                h = i.shift(),
                i.sort());
                if ((!e || f.event.customEvent[h]) && !f.event.global[h])
                    return;
                c = typeof c == "object" ? c[f.expando] ? c : new f.Event(h,c) : new f.Event(h),
                c.type = h,
                c.isTrigger = !0,
                c.exclusive = k,
                c.namespace = i.join("."),
                c.namespace_re = c.namespace ? new RegExp("(^|\\.)" + i.join("\\.(?:.*\\.)?") + "(\\.|$)") : null,
                o = h.indexOf(":") < 0 ? "on" + h : "";
                if (!e) {
                    j = f.cache;
                    for (l in j)
                        j[l].events && j[l].events[h] && f.event.trigger(c, d, j[l].handle.elem, !0);
                    return
                }
                c.result = b,
                c.target || (c.target = e),
                d = d != null ? f.makeArray(d) : [],
                d.unshift(c),
                p = f.event.special[h] || {};
                if (p.trigger && p.trigger.apply(e, d) === !1)
                    return;
                r = [[e, p.bindType || h]];
                if (!g && !p.noBubble && !f.isWindow(e)) {
                    s = p.delegateType || h,
                    m = E.test(s + h) ? e : e.parentNode,
                    n = null;
                    for (; m; m = m.parentNode)
                        r.push([m, s]),
                        n = m;
                    n && n === e.ownerDocument && r.push([n.defaultView || n.parentWindow || a, s])
                }
                for (l = 0; l < r.length && !c.isPropagationStopped(); l++)
                    m = r[l][0],
                    c.type = r[l][1],
                    q = (f._data(m, "events") || {})[c.type] && f._data(m, "handle"),
                    q && q.apply(m, d),
                    q = o && m[o],
                    q && f.acceptData(m) && q.apply(m, d) === !1 && c.preventDefault();
                c.type = h,
                !g && !c.isDefaultPrevented() && (!p._default || p._default.apply(e.ownerDocument, d) === !1) && (h !== "click" || !f.nodeName(e, "a")) && f.acceptData(e) && o && e[h] && (h !== "focus" && h !== "blur" || c.target.offsetWidth !== 0) && !f.isWindow(e) && (n = e[o],
                n && (e[o] = null),
                f.event.triggered = h,
                e[h](),
                f.event.triggered = b,
                n && (e[o] = n));
                return c.result
            }
        },
        dispatch: function(c) {
            c = f.event.fix(c || a.event);
            var d = (f._data(this, "events") || {})[c.type] || [], e = d.delegateCount, g = [].slice.call(arguments, 0), h = !c.exclusive && !c.namespace, i = f.event.special[c.type] || {}, j = [], k, l, m, n, o, p, q, r, s, t, u;
            g[0] = c,
            c.delegateTarget = this;
            if (!i.preDispatch || i.preDispatch.call(this, c) !== !1) {
                if (e && (!c.button || c.type !== "click")) {
                    n = f(this),
                    n.context = this.ownerDocument || this;
                    for (m = c.target; m != this; m = m.parentNode || this)
                        if (m.disabled !== !0) {
                            p = {},
                            r = [],
                            n[0] = m;
                            for (k = 0; k < e; k++)
                                s = d[k],
                                t = s.selector,
                                p[t] === b && (p[t] = s.quick ? H(m, s.quick) : n.is(t)),
                                p[t] && r.push(s);
                            r.length && j.push({
                                elem: m,
                                matches: r
                            })
                        }
                }
                d.length > e && j.push({
                    elem: this,
                    matches: d.slice(e)
                });
                for (k = 0; k < j.length && !c.isPropagationStopped(); k++) {
                    q = j[k],
                    c.currentTarget = q.elem;
                    for (l = 0; l < q.matches.length && !c.isImmediatePropagationStopped(); l++) {
                        s = q.matches[l];
                        if (h || !c.namespace && !s.namespace || c.namespace_re && c.namespace_re.test(s.namespace))
                            c.data = s.data,
                            c.handleObj = s,
                            o = ((f.event.special[s.origType] || {}).handle || s.handler).apply(q.elem, g),
                            o !== b && (c.result = o,
                            o === !1 && (c.preventDefault(),
                            c.stopPropagation()))
                    }
                }
                i.postDispatch && i.postDispatch.call(this, c);
                return c.result
            }
        },
        props: "attrChange attrName relatedNode srcElement altKey bubbles cancelable ctrlKey currentTarget eventPhase metaKey relatedTarget shiftKey target timeStamp view which".split(" "),
        fixHooks: {},
        keyHooks: {
            props: "char charCode key keyCode".split(" "),
            filter: function(a, b) {
                a.which == null && (a.which = b.charCode != null ? b.charCode : b.keyCode);
                return a
            }
        },
        mouseHooks: {
            props: "button buttons clientX clientY fromElement offsetX offsetY pageX pageY screenX screenY toElement".split(" "),
            filter: function(a, d) {
                var e, f, g, h = d.button, i = d.fromElement;
                a.pageX == null && d.clientX != null && (e = a.target.ownerDocument || c,
                f = e.documentElement,
                g = e.body,
                a.pageX = d.clientX + (f && f.scrollLeft || g && g.scrollLeft || 0) - (f && f.clientLeft || g && g.clientLeft || 0),
                a.pageY = d.clientY + (f && f.scrollTop || g && g.scrollTop || 0) - (f && f.clientTop || g && g.clientTop || 0)),
                !a.relatedTarget && i && (a.relatedTarget = i === a.target ? d.toElement : i),
                !a.which && h !== b && (a.which = h & 1 ? 1 : h & 2 ? 3 : h & 4 ? 2 : 0);
                return a
            }
        },
        fix: function(a) {
            if (a[f.expando])
                return a;
            var d, e, g = a, h = f.event.fixHooks[a.type] || {}, i = h.props ? this.props.concat(h.props) : this.props;
            a = f.Event(g);
            for (d = i.length; d; )
                e = i[--d],
                a[e] = g[e];
            a.target || (a.target = g.srcElement || c),
            a.target.nodeType === 3 && (a.target = a.target.parentNode),
            a.metaKey === b && (a.metaKey = a.ctrlKey);
            return h.filter ? h.filter(a, g) : a
        },
        special: {
            ready: {
                setup: f.bindReady
            },
            load: {
                noBubble: !0
            },
            focus: {
                delegateType: "focusin"
            },
            blur: {
                delegateType: "focusout"
            },
            beforeunload: {
                setup: function(a, b, c) {
                    f.isWindow(this) && (this.onbeforeunload = c)
                },
                teardown: function(a, b) {
                    this.onbeforeunload === b && (this.onbeforeunload = null)
                }
            }
        },
        simulate: function(a, b, c, d) {
            var e = f.extend(new f.Event, c, {
                type: a,
                isSimulated: !0,
                originalEvent: {}
            });
            d ? f.event.trigger(e, null, b) : f.event.dispatch.call(b, e),
            e.isDefaultPrevented() && c.preventDefault()
        }
    },
    f.event.handle = f.event.dispatch,
    f.removeEvent = c.removeEventListener ? function(a, b, c) {
        a.removeEventListener && a.removeEventListener(b, c, !1)
    }
    : function(a, b, c) {
        a.detachEvent && a.detachEvent("on" + b, c)
    }
    ,
    f.Event = function(a, b) {
        if (!(this instanceof f.Event))
            return new f.Event(a,b);
        a && a.type ? (this.originalEvent = a,
        this.type = a.type,
        this.isDefaultPrevented = a.defaultPrevented || a.returnValue === !1 || a.getPreventDefault && a.getPreventDefault() ? K : J) : this.type = a,
        b && f.extend(this, b),
        this.timeStamp = a && a.timeStamp || f.now(),
        this[f.expando] = !0
    }
    ,
    f.Event.prototype = {
        preventDefault: function() {
            this.isDefaultPrevented = K;
            var a = this.originalEvent;
            !a || (a.preventDefault ? a.preventDefault() : a.returnValue = !1)
        },
        stopPropagation: function() {
            this.isPropagationStopped = K;
            var a = this.originalEvent;
            !a || (a.stopPropagation && a.stopPropagation(),
            a.cancelBubble = !0)
        },
        stopImmediatePropagation: function() {
            this.isImmediatePropagationStopped = K,
            this.stopPropagation()
        },
        isDefaultPrevented: J,
        isPropagationStopped: J,
        isImmediatePropagationStopped: J
    },
    f.each({
        mouseenter: "mouseover",
        mouseleave: "mouseout"
    }, function(a, b) {
        f.event.special[a] = {
            delegateType: b,
            bindType: b,
            handle: function(a) {
                var c = this, d = a.relatedTarget, e = a.handleObj, g = e.selector, h;
                if (!d || d !== c && !f.contains(c, d))
                    a.type = e.origType,
                    h = e.handler.apply(this, arguments),
                    a.type = b;
                return h
            }
        }
    }),
    f.support.submitBubbles || (f.event.special.submit = {
        setup: function() {
            if (f.nodeName(this, "form"))
                return !1;
            f.event.add(this, "click._submit keypress._submit", function(a) {
                var c = a.target
                  , d = f.nodeName(c, "input") || f.nodeName(c, "button") ? c.form : b;
                d && !d._submit_attached && (f.event.add(d, "submit._submit", function(a) {
                    a._submit_bubble = !0
                }),
                d._submit_attached = !0)
            })
        },
        postDispatch: function(a) {
            a._submit_bubble && (delete a._submit_bubble,
            this.parentNode && !a.isTrigger && f.event.simulate("submit", this.parentNode, a, !0))
        },
        teardown: function() {
            if (f.nodeName(this, "form"))
                return !1;
            f.event.remove(this, "._submit")
        }
    }),
    f.support.changeBubbles || (f.event.special.change = {
        setup: function() {
            if (z.test(this.nodeName)) {
                if (this.type === "checkbox" || this.type === "radio")
                    f.event.add(this, "propertychange._change", function(a) {
                        a.originalEvent.propertyName === "checked" && (this._just_changed = !0)
                    }),
                    f.event.add(this, "click._change", function(a) {
                        this._just_changed && !a.isTrigger && (this._just_changed = !1,
                        f.event.simulate("change", this, a, !0))
                    });
                return !1
            }
            f.event.add(this, "beforeactivate._change", function(a) {
                var b = a.target;
                z.test(b.nodeName) && !b._change_attached && (f.event.add(b, "change._change", function(a) {
                    this.parentNode && !a.isSimulated && !a.isTrigger && f.event.simulate("change", this.parentNode, a, !0)
                }),
                b._change_attached = !0)
            })
        },
        handle: function(a) {
            var b = a.target;
            if (this !== b || a.isSimulated || a.isTrigger || b.type !== "radio" && b.type !== "checkbox")
                return a.handleObj.handler.apply(this, arguments)
        },
        teardown: function() {
            f.event.remove(this, "._change");
            return z.test(this.nodeName)
        }
    }),
    f.support.focusinBubbles || f.each({
        focus: "focusin",
        blur: "focusout"
    }, function(a, b) {
        var d = 0
          , e = function(a) {
            f.event.simulate(b, a.target, f.event.fix(a), !0)
        };
        f.event.special[b] = {
            setup: function() {
                d++ === 0 && c.addEventListener(a, e, !0)
            },
            teardown: function() {
                --d === 0 && c.removeEventListener(a, e, !0)
            }
        }
    }),
    f.fn.extend({
        on: function(a, c, d, e, g) {
            var h, i;
            if (typeof a == "object") {
                typeof c != "string" && (d = d || c,
                c = b);
                for (i in a)
                    this.on(i, c, d, a[i], g);
                return this
            }
            d == null && e == null ? (e = c,
            d = c = b) : e == null && (typeof c == "string" ? (e = d,
            d = b) : (e = d,
            d = c,
            c = b));
            if (e === !1)
                e = J;
            else if (!e)
                return this;
            g === 1 && (h = e,
            e = function(a) {
                f().off(a);
                return h.apply(this, arguments)
            }
            ,
            e.guid = h.guid || (h.guid = f.guid++));
            return this.each(function() {
                f.event.add(this, a, e, d, c)
            })
        },
        one: function(a, b, c, d) {
            return this.on(a, b, c, d, 1)
        },
        off: function(a, c, d) {
            if (a && a.preventDefault && a.handleObj) {
                var e = a.handleObj;
                f(a.delegateTarget).off(e.namespace ? e.origType + "." + e.namespace : e.origType, e.selector, e.handler);
                return this
            }
            if (typeof a == "object") {
                for (var g in a)
                    this.off(g, c, a[g]);
                return this
            }
            if (c === !1 || typeof c == "function")
                d = c,
                c = b;
            d === !1 && (d = J);
            return this.each(function() {
                f.event.remove(this, a, d, c)
            })
        },
        bind: function(a, b, c) {
            return this.on(a, null, b, c)
        },
        unbind: function(a, b) {
            return this.off(a, null, b)
        },
        live: function(a, b, c) {
            f(this.context).on(a, this.selector, b, c);
            return this
        },
        die: function(a, b) {
            f(this.context).off(a, this.selector || "**", b);
            return this
        },
        delegate: function(a, b, c, d) {
            return this.on(b, a, c, d)
        },
        undelegate: function(a, b, c) {
            return arguments.length == 1 ? this.off(a, "**") : this.off(b, a, c)
        },
        trigger: function(a, b) {
            return this.each(function() {
                f.event.trigger(a, b, this)
            })
        },
        triggerHandler: function(a, b) {
            if (this[0])
                return f.event.trigger(a, b, this[0], !0)
        },
        toggle: function(a) {
            var b = arguments
              , c = a.guid || f.guid++
              , d = 0
              , e = function(c) {
                var e = (f._data(this, "lastToggle" + a.guid) || 0) % d;
                f._data(this, "lastToggle" + a.guid, e + 1),
                c.preventDefault();
                return b[e].apply(this, arguments) || !1
            };
            e.guid = c;
            while (d < b.length)
                b[d++].guid = c;
            return this.click(e)
        },
        hover: function(a, b) {
            return this.mouseenter(a).mouseleave(b || a)
        }
    }),
    f.each("blur focus focusin focusout load resize scroll unload click dblclick mousedown mouseup mousemove mouseover mouseout mouseenter mouseleave change select submit keydown keypress keyup error contextmenu".split(" "), function(a, b) {
        f.fn[b] = function(a, c) {
            c == null && (c = a,
            a = null);
            return arguments.length > 0 ? this.on(b, null, a, c) : this.trigger(b)
        }
        ,
        f.attrFn && (f.attrFn[b] = !0),
        C.test(b) && (f.event.fixHooks[b] = f.event.keyHooks),
        D.test(b) && (f.event.fixHooks[b] = f.event.mouseHooks)
    }),
    function() {
        function x(a, b, c, e, f, g) {
            for (var h = 0, i = e.length; h < i; h++) {
                var j = e[h];
                if (j) {
                    var k = !1;
                    j = j[a];
                    while (j) {
                        if (j[d] === c) {
                            k = e[j.sizset];
                            break
                        }
                        if (j.nodeType === 1) {
                            g || (j[d] = c,
                            j.sizset = h);
                            if (typeof b != "string") {
                                if (j === b) {
                                    k = !0;
                                    break
                                }
                            } else if (m.filter(b, [j]).length > 0) {
                                k = j;
                                break
                            }
                        }
                        j = j[a]
                    }
                    e[h] = k
                }
            }
        }
        function w(a, b, c, e, f, g) {
            for (var h = 0, i = e.length; h < i; h++) {
                var j = e[h];
                if (j) {
                    var k = !1;
                    j = j[a];
                    while (j) {
                        if (j[d] === c) {
                            k = e[j.sizset];
                            break
                        }
                        j.nodeType === 1 && !g && (j[d] = c,
                        j.sizset = h);
                        if (j.nodeName.toLowerCase() === b) {
                            k = j;
                            break
                        }
                        j = j[a]
                    }
                    e[h] = k
                }
            }
        }
        var a = /((?:\((?:\([^()]+\)|[^()]+)+\)|\[(?:\[[^\[\]]*\]|['"][^'"]*['"]|[^\[\]'"]+)+\]|\\.|[^ >+~,(\[\\]+)+|[>+~])(\s*,\s*)?((?:.|\r|\n)*)/g
          , d = "sizcache" + (Math.random() + "").replace(".", "")
          , e = 0
          , g = Object.prototype.toString
          , h = !1
          , i = !0
          , j = /\\/g
          , k = /\r\n/g
          , l = /\W/;
        [0, 0].sort(function() {
            i = !1;
            return 0
        });
        var m = function(b, d, e, f) {
            e = e || [],
            d = d || c;
            var h = d;
            if (d.nodeType !== 1 && d.nodeType !== 9)
                return [];
            if (!b || typeof b != "string")
                return e;
            var i, j, k, l, n, q, r, t, u = !0, v = m.isXML(d), w = [], x = b;
            do {
                a.exec(""),
                i = a.exec(x);
                if (i) {
                    x = i[3],
                    w.push(i[1]);
                    if (i[2]) {
                        l = i[3];
                        break
                    }
                }
            } while (i);
            if (w.length > 1 && p.exec(b))
                if (w.length === 2 && o.relative[w[0]])
                    j = y(w[0] + w[1], d, f);
                else {
                    j = o.relative[w[0]] ? [d] : m(w.shift(), d);
                    while (w.length)
                        b = w.shift(),
                        o.relative[b] && (b += w.shift()),
                        j = y(b, j, f)
                }
            else {
                !f && w.length > 1 && d.nodeType === 9 && !v && o.match.ID.test(w[0]) && !o.match.ID.test(w[w.length - 1]) && (n = m.find(w.shift(), d, v),
                d = n.expr ? m.filter(n.expr, n.set)[0] : n.set[0]);
                if (d) {
                    n = f ? {
                        expr: w.pop(),
                        set: s(f)
                    } : m.find(w.pop(), w.length === 1 && (w[0] === "~" || w[0] === "+") && d.parentNode ? d.parentNode : d, v),
                    j = n.expr ? m.filter(n.expr, n.set) : n.set,
                    w.length > 0 ? k = s(j) : u = !1;
                    while (w.length)
                        q = w.pop(),
                        r = q,
                        o.relative[q] ? r = w.pop() : q = "",
                        r == null && (r = d),
                        o.relative[q](k, r, v)
                } else
                    k = w = []
            }
            k || (k = j),
            k || m.error(q || b);
            if (g.call(k) === "[object Array]")
                if (!u)
                    e.push.apply(e, k);
                else if (d && d.nodeType === 1)
                    for (t = 0; k[t] != null; t++)
                        k[t] && (k[t] === !0 || k[t].nodeType === 1 && m.contains(d, k[t])) && e.push(j[t]);
                else
                    for (t = 0; k[t] != null; t++)
                        k[t] && k[t].nodeType === 1 && e.push(j[t]);
            else
                s(k, e);
            l && (m(l, h, e, f),
            m.uniqueSort(e));
            return e
        };
        m.uniqueSort = function(a) {
            if (u) {
                h = i,
                a.sort(u);
                if (h)
                    for (var b = 1; b < a.length; b++)
                        a[b] === a[b - 1] && a.splice(b--, 1)
            }
            return a
        }
        ,
        m.matches = function(a, b) {
            return m(a, null, null, b)
        }
        ,
        m.matchesSelector = function(a, b) {
            return m(b, null, null, [a]).length > 0
        }
        ,
        m.find = function(a, b, c) {
            var d, e, f, g, h, i;
            if (!a)
                return [];
            for (e = 0,
            f = o.order.length; e < f; e++) {
                h = o.order[e];
                if (g = o.leftMatch[h].exec(a)) {
                    i = g[1],
                    g.splice(1, 1);
                    if (i.substr(i.length - 1) !== "\\") {
                        g[1] = (g[1] || "").replace(j, ""),
                        d = o.find[h](g, b, c);
                        if (d != null) {
                            a = a.replace(o.match[h], "");
                            break
                        }
                    }
                }
            }
            d || (d = typeof b.getElementsByTagName != "undefined" ? b.getElementsByTagName("*") : []);
            return {
                set: d,
                expr: a
            }
        }
        ,
        m.filter = function(a, c, d, e) {
            var f, g, h, i, j, k, l, n, p, q = a, r = [], s = c, t = c && c[0] && m.isXML(c[0]);
            while (a && c.length) {
                for (h in o.filter)
                    if ((f = o.leftMatch[h].exec(a)) != null && f[2]) {
                        k = o.filter[h],
                        l = f[1],
                        g = !1,
                        f.splice(1, 1);
                        if (l.substr(l.length - 1) === "\\")
                            continue;
                        s === r && (r = []);
                        if (o.preFilter[h]) {
                            f = o.preFilter[h](f, s, d, r, e, t);
                            if (!f)
                                g = i = !0;
                            else if (f === !0)
                                continue
                        }
                        if (f)
                            for (n = 0; (j = s[n]) != null; n++)
                                j && (i = k(j, f, n, s),
                                p = e ^ i,
                                d && i != null ? p ? g = !0 : s[n] = !1 : p && (r.push(j),
                                g = !0));
                        if (i !== b) {
                            d || (s = r),
                            a = a.replace(o.match[h], "");
                            if (!g)
                                return [];
                            break
                        }
                    }
                if (a === q)
                    if (g == null)
                        m.error(a);
                    else
                        break;
                q = a
            }
            return s
        }
        ,
        m.error = function(a) {
            throw new Error("Syntax error, unrecognized expression: " + a)
        }
        ;
        var n = m.getText = function(a) {
            var b, c, d = a.nodeType, e = "";
            if (d) {
                if (d === 1 || d === 9 || d === 11) {
                    if (typeof a.textContent == "string")
                        return a.textContent;
                    if (typeof a.innerText == "string")
                        return a.innerText.replace(k, "");
                    for (a = a.firstChild; a; a = a.nextSibling)
                        e += n(a)
                } else if (d === 3 || d === 4)
                    return a.nodeValue
            } else
                for (b = 0; c = a[b]; b++)
                    c.nodeType !== 8 && (e += n(c));
            return e
        }
          , o = m.selectors = {
            order: ["ID", "NAME", "TAG"],
            match: {
                ID: /#((?:[\w\u00c0-\uFFFF\-]|\\.)+)/,
                CLASS: /\.((?:[\w\u00c0-\uFFFF\-]|\\.)+)/,
                NAME: /\[name=['"]*((?:[\w\u00c0-\uFFFF\-]|\\.)+)['"]*\]/,
                ATTR: /\[\s*((?:[\w\u00c0-\uFFFF\-]|\\.)+)\s*(?:(\S?=)\s*(?:(['"])(.*?)\3|(#?(?:[\w\u00c0-\uFFFF\-]|\\.)*)|)|)\s*\]/,
                TAG: /^((?:[\w\u00c0-\uFFFF\*\-]|\\.)+)/,
                CHILD: /:(only|nth|last|first)-child(?:\(\s*(even|odd|(?:[+\-]?\d+|(?:[+\-]?\d*)?n\s*(?:[+\-]\s*\d+)?))\s*\))?/,
                POS: /:(nth|eq|gt|lt|first|last|even|odd)(?:\((\d*)\))?(?=[^\-]|$)/,
                PSEUDO: /:((?:[\w\u00c0-\uFFFF\-]|\\.)+)(?:\((['"]?)((?:\([^\)]+\)|[^\(\)]*)+)\2\))?/
            },
            leftMatch: {},
            attrMap: {
                "class": "className",
                "for": "htmlFor"
            },
            attrHandle: {
                href: function(a) {
                    return a.getAttribute("href")
                },
                type: function(a) {
                    return a.getAttribute("type")
                }
            },
            relative: {
                "+": function(a, b) {
                    var c = typeof b == "string"
                      , d = c && !l.test(b)
                      , e = c && !d;
                    d && (b = b.toLowerCase());
                    for (var f = 0, g = a.length, h; f < g; f++)
                        if (h = a[f]) {
                            while ((h = h.previousSibling) && h.nodeType !== 1)
                                ;
                            a[f] = e || h && h.nodeName.toLowerCase() === b ? h || !1 : h === b
                        }
                    e && m.filter(b, a, !0)
                },
                ">": function(a, b) {
                    var c, d = typeof b == "string", e = 0, f = a.length;
                    if (d && !l.test(b)) {
                        b = b.toLowerCase();
                        for (; e < f; e++) {
                            c = a[e];
                            if (c) {
                                var g = c.parentNode;
                                a[e] = g.nodeName.toLowerCase() === b ? g : !1
                            }
                        }
                    } else {
                        for (; e < f; e++)
                            c = a[e],
                            c && (a[e] = d ? c.parentNode : c.parentNode === b);
                        d && m.filter(b, a, !0)
                    }
                },
                "": function(a, b, c) {
                    var d, f = e++, g = x;
                    typeof b == "string" && !l.test(b) && (b = b.toLowerCase(),
                    d = b,
                    g = w),
                    g("parentNode", b, f, a, d, c)
                },
                "~": function(a, b, c) {
                    var d, f = e++, g = x;
                    typeof b == "string" && !l.test(b) && (b = b.toLowerCase(),
                    d = b,
                    g = w),
                    g("previousSibling", b, f, a, d, c)
                }
            },
            find: {
                ID: function(a, b, c) {
                    if (typeof b.getElementById != "undefined" && !c) {
                        var d = b.getElementById(a[1]);
                        return d && d.parentNode ? [d] : []
                    }
                },
                NAME: function(a, b) {
                    if (typeof b.getElementsByName != "undefined") {
                        var c = []
                          , d = b.getElementsByName(a[1]);
                        for (var e = 0, f = d.length; e < f; e++)
                            d[e].getAttribute("name") === a[1] && c.push(d[e]);
                        return c.length === 0 ? null : c
                    }
                },
                TAG: function(a, b) {
                    if (typeof b.getElementsByTagName != "undefined")
                        return b.getElementsByTagName(a[1])
                }
            },
            preFilter: {
                CLASS: function(a, b, c, d, e, f) {
                    a = " " + a[1].replace(j, "") + " ";
                    if (f)
                        return a;
                    for (var g = 0, h; (h = b[g]) != null; g++)
                        h && (e ^ (h.className && (" " + h.className + " ").replace(/[\t\n\r]/g, " ").indexOf(a) >= 0) ? c || d.push(h) : c && (b[g] = !1));
                    return !1
                },
                ID: function(a) {
                    return a[1].replace(j, "")
                },
                TAG: function(a, b) {
                    return a[1].replace(j, "").toLowerCase()
                },
                CHILD: function(a) {
                    if (a[1] === "nth") {
                        a[2] || m.error(a[0]),
                        a[2] = a[2].replace(/^\+|\s*/g, "");
                        var b = /(-?)(\d*)(?:n([+\-]?\d*))?/.exec(a[2] === "even" && "2n" || a[2] === "odd" && "2n+1" || !/\D/.test(a[2]) && "0n+" + a[2] || a[2]);
                        a[2] = b[1] + (b[2] || 1) - 0,
                        a[3] = b[3] - 0
                    } else
                        a[2] && m.error(a[0]);
                    a[0] = e++;
                    return a
                },
                ATTR: function(a, b, c, d, e, f) {
                    var g = a[1] = a[1].replace(j, "");
                    !f && o.attrMap[g] && (a[1] = o.attrMap[g]),
                    a[4] = (a[4] || a[5] || "").replace(j, ""),
                    a[2] === "~=" && (a[4] = " " + a[4] + " ");
                    return a
                },
                PSEUDO: function(b, c, d, e, f) {
                    if (b[1] === "not")
                        if ((a.exec(b[3]) || "").length > 1 || /^\w/.test(b[3]))
                            b[3] = m(b[3], null, null, c);
                        else {
                            var g = m.filter(b[3], c, d, !0 ^ f);
                            d || e.push.apply(e, g);
                            return !1
                        }
                    else if (o.match.POS.test(b[0]) || o.match.CHILD.test(b[0]))
                        return !0;
                    return b
                },
                POS: function(a) {
                    a.unshift(!0);
                    return a
                }
            },
            filters: {
                enabled: function(a) {
                    return a.disabled === !1 && a.type !== "hidden"
                },
                disabled: function(a) {
                    return a.disabled === !0
                },
                checked: function(a) {
                    return a.checked === !0
                },
                selected: function(a) {
                    a.parentNode && a.parentNode.selectedIndex;
                    return a.selected === !0
                },
                parent: function(a) {
                    return !!a.firstChild
                },
                empty: function(a) {
                    return !a.firstChild
                },
                has: function(a, b, c) {
                    return !!m(c[3], a).length
                },
                header: function(a) {
                    return /h\d/i.test(a.nodeName)
                },
                text: function(a) {
                    var b = a.getAttribute("type")
                      , c = a.type;
                    return a.nodeName.toLowerCase() === "input" && "text" === c && (b === c || b === null)
                },
                radio: function(a) {
                    return a.nodeName.toLowerCase() === "input" && "radio" === a.type
                },
                checkbox: function(a) {
                    return a.nodeName.toLowerCase() === "input" && "checkbox" === a.type
                },
                file: function(a) {
                    return a.nodeName.toLowerCase() === "input" && "file" === a.type
                },
                password: function(a) {
                    return a.nodeName.toLowerCase() === "input" && "password" === a.type
                },
                submit: function(a) {
                    var b = a.nodeName.toLowerCase();
                    return (b === "input" || b === "button") && "submit" === a.type
                },
                image: function(a) {
                    return a.nodeName.toLowerCase() === "input" && "image" === a.type
                },
                reset: function(a) {
                    var b = a.nodeName.toLowerCase();
                    return (b === "input" || b === "button") && "reset" === a.type
                },
                button: function(a) {
                    var b = a.nodeName.toLowerCase();
                    return b === "input" && "button" === a.type || b === "button"
                },
                input: function(a) {
                    return /input|select|textarea|button/i.test(a.nodeName)
                },
                focus: function(a) {
                    return a === a.ownerDocument.activeElement
                }
            },
            setFilters: {
                first: function(a, b) {
                    return b === 0
                },
                last: function(a, b, c, d) {
                    return b === d.length - 1
                },
                even: function(a, b) {
                    return b % 2 === 0
                },
                odd: function(a, b) {
                    return b % 2 === 1
                },
                lt: function(a, b, c) {
                    return b < c[3] - 0
                },
                gt: function(a, b, c) {
                    return b > c[3] - 0
                },
                nth: function(a, b, c) {
                    return c[3] - 0 === b
                },
                eq: function(a, b, c) {
                    return c[3] - 0 === b
                }
            },
            filter: {
                PSEUDO: function(a, b, c, d) {
                    var e = b[1]
                      , f = o.filters[e];
                    if (f)
                        return f(a, c, b, d);
                    if (e === "contains")
                        return (a.textContent || a.innerText || n([a]) || "").indexOf(b[3]) >= 0;
                    if (e === "not") {
                        var g = b[3];
                        for (var h = 0, i = g.length; h < i; h++)
                            if (g[h] === a)
                                return !1;
                        return !0
                    }
                    m.error(e)
                },
                CHILD: function(a, b) {
                    var c, e, f, g, h, i, j, k = b[1], l = a;
                    switch (k) {
                    case "only":
                    case "first":
                        while (l = l.previousSibling)
                            if (l.nodeType === 1)
                                return !1;
                        if (k === "first")
                            return !0;
                        l = a;
                    case "last":
                        while (l = l.nextSibling)
                            if (l.nodeType === 1)
                                return !1;
                        return !0;
                    case "nth":
                        c = b[2],
                        e = b[3];
                        if (c === 1 && e === 0)
                            return !0;
                        f = b[0],
                        g = a.parentNode;
                        if (g && (g[d] !== f || !a.nodeIndex)) {
                            i = 0;
                            for (l = g.firstChild; l; l = l.nextSibling)
                                l.nodeType === 1 && (l.nodeIndex = ++i);
                            g[d] = f
                        }
                        j = a.nodeIndex - e;
                        return c === 0 ? j === 0 : j % c === 0 && j / c >= 0
                    }
                },
                ID: function(a, b) {
                    return a.nodeType === 1 && a.getAttribute("id") === b
                },
                TAG: function(a, b) {
                    return b === "*" && a.nodeType === 1 || !!a.nodeName && a.nodeName.toLowerCase() === b
                },
                CLASS: function(a, b) {
                    return (" " + (a.className || a.getAttribute("class")) + " ").indexOf(b) > -1
                },
                ATTR: function(a, b) {
                    var c = b[1]
                      , d = m.attr ? m.attr(a, c) : o.attrHandle[c] ? o.attrHandle[c](a) : a[c] != null ? a[c] : a.getAttribute(c)
                      , e = d + ""
                      , f = b[2]
                      , g = b[4];
                    return d == null ? f === "!=" : !f && m.attr ? d != null : f === "=" ? e === g : f === "*=" ? e.indexOf(g) >= 0 : f === "~=" ? (" " + e + " ").indexOf(g) >= 0 : g ? f === "!=" ? e !== g : f === "^=" ? e.indexOf(g) === 0 : f === "$=" ? e.substr(e.length - g.length) === g : f === "|=" ? e === g || e.substr(0, g.length + 1) === g + "-" : !1 : e && d !== !1
                },
                POS: function(a, b, c, d) {
                    var e = b[2]
                      , f = o.setFilters[e];
                    if (f)
                        return f(a, c, b, d)
                }
            }
        }
          , p = o.match.POS
          , q = function(a, b) {
            return "\\" + (b - 0 + 1)
        };
        for (var r in o.match)
            o.match[r] = new RegExp(o.match[r].source + /(?![^\[]*\])(?![^\(]*\))/.source),
            o.leftMatch[r] = new RegExp(/(^(?:.|\r|\n)*?)/.source + o.match[r].source.replace(/\\(\d+)/g, q));
        o.match.globalPOS = p;
        var s = function(a, b) {
            a = Array.prototype.slice.call(a, 0);
            if (b) {
                b.push.apply(b, a);
                return b
            }
            return a
        };
        try {
            Array.prototype.slice.call(c.documentElement.childNodes, 0)[0].nodeType
        } catch (t) {
            s = function(a, b) {
                var c = 0
                  , d = b || [];
                if (g.call(a) === "[object Array]")
                    Array.prototype.push.apply(d, a);
                else if (typeof a.length == "number")
                    for (var e = a.length; c < e; c++)
                        d.push(a[c]);
                else
                    for (; a[c]; c++)
                        d.push(a[c]);
                return d
            }
        }
        var u, v;
        c.documentElement.compareDocumentPosition ? u = function(a, b) {
            if (a === b) {
                h = !0;
                return 0
            }
            if (!a.compareDocumentPosition || !b.compareDocumentPosition)
                return a.compareDocumentPosition ? -1 : 1;
            return a.compareDocumentPosition(b) & 4 ? -1 : 1
        }
        : (u = function(a, b) {
            if (a === b) {
                h = !0;
                return 0
            }
            if (a.sourceIndex && b.sourceIndex)
                return a.sourceIndex - b.sourceIndex;
            var c, d, e = [], f = [], g = a.parentNode, i = b.parentNode, j = g;
            if (g === i)
                return v(a, b);
            if (!g)
                return -1;
            if (!i)
                return 1;
            while (j)
                e.unshift(j),
                j = j.parentNode;
            j = i;
            while (j)
                f.unshift(j),
                j = j.parentNode;
            c = e.length,
            d = f.length;
            for (var k = 0; k < c && k < d; k++)
                if (e[k] !== f[k])
                    return v(e[k], f[k]);
            return k === c ? v(a, f[k], -1) : v(e[k], b, 1)
        }
        ,
        v = function(a, b, c) {
            if (a === b)
                return c;
            var d = a.nextSibling;
            while (d) {
                if (d === b)
                    return -1;
                d = d.nextSibling
            }
            return 1
        }
        ),
        function() {
            var a = c.createElement("div")
              , d = "script" + (new Date).getTime()
              , e = c.documentElement;
            a.innerHTML = "<a name='" + d + "'/>",
            e.insertBefore(a, e.firstChild),
            c.getElementById(d) && (o.find.ID = function(a, c, d) {
                if (typeof c.getElementById != "undefined" && !d) {
                    var e = c.getElementById(a[1]);
                    return e ? e.id === a[1] || typeof e.getAttributeNode != "undefined" && e.getAttributeNode("id").nodeValue === a[1] ? [e] : b : []
                }
            }
            ,
            o.filter.ID = function(a, b) {
                var c = typeof a.getAttributeNode != "undefined" && a.getAttributeNode("id");
                return a.nodeType === 1 && c && c.nodeValue === b
            }
            ),
            e.removeChild(a),
            e = a = null
        }(),
        function() {
            var a = c.createElement("div");
            a.appendChild(c.createComment("")),
            a.getElementsByTagName("*").length > 0 && (o.find.TAG = function(a, b) {
                var c = b.getElementsByTagName(a[1]);
                if (a[1] === "*") {
                    var d = [];
                    for (var e = 0; c[e]; e++)
                        c[e].nodeType === 1 && d.push(c[e]);
                    c = d
                }
                return c
            }
            ),
            a.innerHTML = "<a href='#'></a>",
            a.firstChild && typeof a.firstChild.getAttribute != "undefined" && a.firstChild.getAttribute("href") !== "#" && (o.attrHandle.href = function(a) {
                return a.getAttribute("href", 2)
            }
            ),
            a = null
        }(),
        c.querySelectorAll && function() {
            var a = m
              , b = c.createElement("div")
              , d = "__sizzle__";
            b.innerHTML = "<p class='TEST'></p>";
            if (!b.querySelectorAll || b.querySelectorAll(".TEST").length !== 0) {
                m = function(b, e, f, g) {
                    e = e || c;
                    if (!g && !m.isXML(e)) {
                        var h = /^(\w+$)|^\.([\w\-]+$)|^#([\w\-]+$)/.exec(b);
                        if (h && (e.nodeType === 1 || e.nodeType === 9)) {
                            if (h[1])
                                return s(e.getElementsByTagName(b), f);
                            if (h[2] && o.find.CLASS && e.getElementsByClassName)
                                return s(e.getElementsByClassName(h[2]), f)
                        }
                        if (e.nodeType === 9) {
                            if (b === "body" && e.body)
                                return s([e.body], f);
                            if (h && h[3]) {
                                var i = e.getElementById(h[3]);
                                if (!i || !i.parentNode)
                                    return s([], f);
                                if (i.id === h[3])
                                    return s([i], f)
                            }
                            try {
                                return s(e.querySelectorAll(b), f)
                            } catch (j) {}
                        } else if (e.nodeType === 1 && e.nodeName.toLowerCase() !== "object") {
                            var k = e
                              , l = e.getAttribute("id")
                              , n = l || d
                              , p = e.parentNode
                              , q = /^\s*[+~]/.test(b);
                            l ? n = n.replace(/'/g, "\\$&") : e.setAttribute("id", n),
                            q && p && (e = e.parentNode);
                            try {
                                if (!q || p)
                                    return s(e.querySelectorAll("[id='" + n + "'] " + b), f)
                            } catch (r) {} finally {
                                l || k.removeAttribute("id")
                            }
                        }
                    }
                    return a(b, e, f, g)
                }
                ;
                for (var e in a)
                    m[e] = a[e];
                b = null
            }
        }(),
        function() {
            var a = c.documentElement
              , b = a.matchesSelector || a.mozMatchesSelector || a.webkitMatchesSelector || a.msMatchesSelector;
            if (b) {
                var d = !b.call(c.createElement("div"), "div")
                  , e = !1;
                try {
                    b.call(c.documentElement, "[test!='']:sizzle")
                } catch (f) {
                    e = !0
                }
                m.matchesSelector = function(a, c) {
                    c = c.replace(/\=\s*([^'"\]]*)\s*\]/g, "='$1']");
                    if (!m.isXML(a))
                        try {
                            if (e || !o.match.PSEUDO.test(c) && !/!=/.test(c)) {
                                var f = b.call(a, c);
                                if (f || !d || a.document && a.document.nodeType !== 11)
                                    return f
                            }
                        } catch (g) {}
                    return m(c, null, null, [a]).length > 0
                }
            }
        }(),
        function() {
            var a = c.createElement("div");
            a.innerHTML = "<div class='test e'></div><div class='test'></div>";
            if (!!a.getElementsByClassName && a.getElementsByClassName("e").length !== 0) {
                a.lastChild.className = "e";
                if (a.getElementsByClassName("e").length === 1)
                    return;
                o.order.splice(1, 0, "CLASS"),
                o.find.CLASS = function(a, b, c) {
                    if (typeof b.getElementsByClassName != "undefined" && !c)
                        return b.getElementsByClassName(a[1])
                }
                ,
                a = null
            }
        }(),
        c.documentElement.contains ? m.contains = function(a, b) {
            return a !== b && (a.contains ? a.contains(b) : !0)
        }
        : c.documentElement.compareDocumentPosition ? m.contains = function(a, b) {
            return !!(a.compareDocumentPosition(b) & 16)
        }
        : m.contains = function() {
            return !1
        }
        ,
        m.isXML = function(a) {
            var b = (a ? a.ownerDocument || a : 0).documentElement;
            return b ? b.nodeName !== "HTML" : !1
        }
        ;
        var y = function(a, b, c) {
            var d, e = [], f = "", g = b.nodeType ? [b] : b;
            while (d = o.match.PSEUDO.exec(a))
                f += d[0],
                a = a.replace(o.match.PSEUDO, "");
            a = o.relative[a] ? a + "*" : a;
            for (var h = 0, i = g.length; h < i; h++)
                m(a, g[h], e, c);
            return m.filter(f, e)
        };
        m.attr = f.attr,
        m.selectors.attrMap = {},
        f.find = m,
        f.expr = m.selectors,
        f.expr[":"] = f.expr.filters,
        f.unique = m.uniqueSort,
        f.text = m.getText,
        f.isXMLDoc = m.isXML,
        f.contains = m.contains
    }();
    var L = /Until$/
      , M = /^(?:parents|prevUntil|prevAll)/
      , N = /,/
      , O = /^.[^:#\[\.,]*$/
      , P = Array.prototype.slice
      , Q = f.expr.match.globalPOS
      , R = {
        children: !0,
        contents: !0,
        next: !0,
        prev: !0
    };
    f.fn.extend({
        find: function(a) {
            var b = this, c, d;
            if (typeof a != "string")
                return f(a).filter(function() {
                    for (c = 0,
                    d = b.length; c < d; c++)
                        if (f.contains(b[c], this))
                            return !0
                });
            var e = this.pushStack("", "find", a), g, h, i;
            for (c = 0,
            d = this.length; c < d; c++) {
                g = e.length,
                f.find(a, this[c], e);
                if (c > 0)
                    for (h = g; h < e.length; h++)
                        for (i = 0; i < g; i++)
                            if (e[i] === e[h]) {
                                e.splice(h--, 1);
                                break
                            }
            }
            return e
        },
        has: function(a) {
            var b = f(a);
            return this.filter(function() {
                for (var a = 0, c = b.length; a < c; a++)
                    if (f.contains(this, b[a]))
                        return !0
            })
        },
        not: function(a) {
            return this.pushStack(T(this, a, !1), "not", a)
        },
        filter: function(a) {
            return this.pushStack(T(this, a, !0), "filter", a)
        },
        is: function(a) {
            return !!a && (typeof a == "string" ? Q.test(a) ? f(a, this.context).index(this[0]) >= 0 : f.filter(a, this).length > 0 : this.filter(a).length > 0)
        },
        closest: function(a, b) {
            var c = [], d, e, g = this[0];
            if (f.isArray(a)) {
                var h = 1;
                while (g && g.ownerDocument && g !== b) {
                    for (d = 0; d < a.length; d++)
                        f(g).is(a[d]) && c.push({
                            selector: a[d],
                            elem: g,
                            level: h
                        });
                    g = g.parentNode,
                    h++
                }
                return c
            }
            var i = Q.test(a) || typeof a != "string" ? f(a, b || this.context) : 0;
            for (d = 0,
            e = this.length; d < e; d++) {
                g = this[d];
                while (g) {
                    if (i ? i.index(g) > -1 : f.find.matchesSelector(g, a)) {
                        c.push(g);
                        break
                    }
                    g = g.parentNode;
                    if (!g || !g.ownerDocument || g === b || g.nodeType === 11)
                        break
                }
            }
            c = c.length > 1 ? f.unique(c) : c;
            return this.pushStack(c, "closest", a)
        },
        index: function(a) {
            if (!a)
                return this[0] && this[0].parentNode ? this.prevAll().length : -1;
            if (typeof a == "string")
                return f.inArray(this[0], f(a));
            return f.inArray(a.jquery ? a[0] : a, this)
        },
        add: function(a, b) {
            var c = typeof a == "string" ? f(a, b) : f.makeArray(a && a.nodeType ? [a] : a)
              , d = f.merge(this.get(), c);
            return this.pushStack(S(c[0]) || S(d[0]) ? d : f.unique(d))
        },
        andSelf: function() {
            return this.add(this.prevObject)
        }
    }),
    f.each({
        parent: function(a) {
            var b = a.parentNode;
            return b && b.nodeType !== 11 ? b : null
        },
        parents: function(a) {
            return f.dir(a, "parentNode")
        },
        parentsUntil: function(a, b, c) {
            return f.dir(a, "parentNode", c)
        },
        next: function(a) {
            return f.nth(a, 2, "nextSibling")
        },
        prev: function(a) {
            return f.nth(a, 2, "previousSibling")
        },
        nextAll: function(a) {
            return f.dir(a, "nextSibling")
        },
        prevAll: function(a) {
            return f.dir(a, "previousSibling")
        },
        nextUntil: function(a, b, c) {
            return f.dir(a, "nextSibling", c)
        },
        prevUntil: function(a, b, c) {
            return f.dir(a, "previousSibling", c)
        },
        siblings: function(a) {
            return f.sibling((a.parentNode || {}).firstChild, a)
        },
        children: function(a) {
            return f.sibling(a.firstChild)
        },
        contents: function(a) {
            return f.nodeName(a, "iframe") ? a.contentDocument || a.contentWindow.document : f.makeArray(a.childNodes)
        }
    }, function(a, b) {
        f.fn[a] = function(c, d) {
            var e = f.map(this, b, c);
            L.test(a) || (d = c),
            d && typeof d == "string" && (e = f.filter(d, e)),
            e = this.length > 1 && !R[a] ? f.unique(e) : e,
            (this.length > 1 || N.test(d)) && M.test(a) && (e = e.reverse());
            return this.pushStack(e, a, P.call(arguments).join(","))
        }
    }),
    f.extend({
        filter: function(a, b, c) {
            c && (a = ":not(" + a + ")");
            return b.length === 1 ? f.find.matchesSelector(b[0], a) ? [b[0]] : [] : f.find.matches(a, b)
        },
        dir: function(a, c, d) {
            var e = []
              , g = a[c];
            while (g && g.nodeType !== 9 && (d === b || g.nodeType !== 1 || !f(g).is(d)))
                g.nodeType === 1 && e.push(g),
                g = g[c];
            return e
        },
        nth: function(a, b, c, d) {
            b = b || 1;
            var e = 0;
            for (; a; a = a[c])
                if (a.nodeType === 1 && ++e === b)
                    break;
            return a
        },
        sibling: function(a, b) {
            var c = [];
            for (; a; a = a.nextSibling)
                a.nodeType === 1 && a !== b && c.push(a);
            return c
        }
    });
    var V = "abbr|article|aside|audio|bdi|canvas|data|datalist|details|figcaption|figure|footer|header|hgroup|mark|meter|nav|output|progress|section|summary|time|video"
      , W = / jQuery\d+="(?:\d+|null)"/g
      , X = /^\s+/
      , Y = /<(?!area|br|col|embed|hr|img|input|link|meta|param)(([\w:]+)[^>]*)\/>/ig
      , Z = /<([\w:]+)/
      , $ = /<tbody/i
      , _ = /<|&#?\w+;/
      , ba = /<(?:script|style)/i
      , bb = /<(?:script|object|embed|option|style)/i
      , bc = new RegExp("<(?:" + V + ")[\\s/>]","i")
      , bd = /checked\s*(?:[^=]|=\s*.checked.)/i
      , be = /\/(java|ecma)script/i
      , bf = /^\s*<!(?:\[CDATA\[|\-\-)/
      , bg = {
        option: [1, "<select multiple='multiple'>", "</select>"],
        legend: [1, "<fieldset>", "</fieldset>"],
        thead: [1, "<table>", "</table>"],
        tr: [2, "<table><tbody>", "</tbody></table>"],
        td: [3, "<table><tbody><tr>", "</tr></tbody></table>"],
        col: [2, "<table><tbody></tbody><colgroup>", "</colgroup></table>"],
        area: [1, "<map>", "</map>"],
        _default: [0, "", ""]
    }
      , bh = U(c);
    bg.optgroup = bg.option,
    bg.tbody = bg.tfoot = bg.colgroup = bg.caption = bg.thead,
    bg.th = bg.td,
    f.support.htmlSerialize || (bg._default = [1, "div<div>", "</div>"]),
    f.fn.extend({
        text: function(a) {
            return f.access(this, function(a) {
                return a === b ? f.text(this) : this.empty().append((this[0] && this[0].ownerDocument || c).createTextNode(a))
            }, null, a, arguments.length)
        },
        wrapAll: function(a) {
            if (f.isFunction(a))
                return this.each(function(b) {
                    f(this).wrapAll(a.call(this, b))
                });
            if (this[0]) {
                var b = f(a, this[0].ownerDocument).eq(0).clone(!0);
                this[0].parentNode && b.insertBefore(this[0]),
                b.map(function() {
                    var a = this;
                    while (a.firstChild && a.firstChild.nodeType === 1)
                        a = a.firstChild;
                    return a
                }).append(this)
            }
            return this
        },
        wrapInner: function(a) {
            if (f.isFunction(a))
                return this.each(function(b) {
                    f(this).wrapInner(a.call(this, b))
                });
            return this.each(function() {
                var b = f(this)
                  , c = b.contents();
                c.length ? c.wrapAll(a) : b.append(a)
            })
        },
        wrap: function(a) {
            var b = f.isFunction(a);
            return this.each(function(c) {
                f(this).wrapAll(b ? a.call(this, c) : a)
            })
        },
        unwrap: function() {
            return this.parent().each(function() {
                f.nodeName(this, "body") || f(this).replaceWith(this.childNodes)
            }).end()
        },
        append: function() {
            return this.domManip(arguments, !0, function(a) {
                this.nodeType === 1 && this.appendChild(a)
            })
        },
        prepend: function() {
            return this.domManip(arguments, !0, function(a) {
                this.nodeType === 1 && this.insertBefore(a, this.firstChild)
            })
        },
        before: function() {
            if (this[0] && this[0].parentNode)
                return this.domManip(arguments, !1, function(a) {
                    this.parentNode.insertBefore(a, this)
                });
            if (arguments.length) {
                var a = f
                .clean(arguments);
                a.push.apply(a, this.toArray());
                return this.pushStack(a, "before", arguments)
            }
        },
        after: function() {
            if (this[0] && this[0].parentNode)
                return this.domManip(arguments, !1, function(a) {
                    this.parentNode.insertBefore(a, this.nextSibling)
                });
            if (arguments.length) {
                var a = this.pushStack(this, "after", arguments);
                a.push.apply(a, f.clean(arguments));
                return a
            }
        },
        remove: function(a, b) {
            for (var c = 0, d; (d = this[c]) != null; c++)
                if (!a || f.filter(a, [d]).length)
                    !b && d.nodeType === 1 && (f.cleanData(d.getElementsByTagName("*")),
                    f.cleanData([d])),
                    d.parentNode && d.parentNode.removeChild(d);
            return this
        },
        empty: function() {
            for (var a = 0, b; (b = this[a]) != null; a++) {
                b.nodeType === 1 && f.cleanData(b.getElementsByTagName("*"));
                while (b.firstChild)
                    b.removeChild(b.firstChild)
            }
            return this
        },
        clone: function(a, b) {
            a = a == null ? !1 : a,
            b = b == null ? a : b;
            return this.map(function() {
                return f.clone(this, a, b)
            })
        },
        html: function(a) {
            return f.access(this, function(a) {
                var c = this[0] || {}
                  , d = 0
                  , e = this.length;
                if (a === b)
                    return c.nodeType === 1 ? c.innerHTML.replace(W, "") : null;
                if (typeof a == "string" && !ba.test(a) && (f.support.leadingWhitespace || !X.test(a)) && !bg[(Z.exec(a) || ["", ""])[1].toLowerCase()]) {
                    a = a.replace(Y, "<$1></$2>");
                    try {
                        for (; d < e; d++)
                            c = this[d] || {},
                            c.nodeType === 1 && (f.cleanData(c.getElementsByTagName("*")),
                            c.innerHTML = a);
                        c = 0
                    } catch (g) {}
                }
                c && this.empty().append(a)
            }, null, a, arguments.length)
        },
        replaceWith: function(a) {
            if (this[0] && this[0].parentNode) {
                if (f.isFunction(a))
                    return this.each(function(b) {
                        var c = f(this)
                          , d = c.html();
                        c.replaceWith(a.call(this, b, d))
                    });
                typeof a != "string" && (a = f(a).detach());
                return this.each(function() {
                    var b = this.nextSibling
                      , c = this.parentNode;
                    f(this).remove(),
                    b ? f(b).before(a) : f(c).append(a)
                })
            }
            return this.length ? this.pushStack(f(f.isFunction(a) ? a() : a), "replaceWith", a) : this
        },
        detach: function(a) {
            return this.remove(a, !0)
        },
        domManip: function(a, c, d) {
            var e, g, h, i, j = a[0], k = [];
            if (!f.support.checkClone && arguments.length === 3 && typeof j == "string" && bd.test(j))
                return this.each(function() {
                    f(this).domManip(a, c, d, !0)
                });
            if (f.isFunction(j))
                return this.each(function(e) {
                    var g = f(this);
                    a[0] = j.call(this, e, c ? g.html() : b),
                    g.domManip(a, c, d)
                });
            if (this[0]) {
                i = j && j.parentNode,
                f.support.parentNode && i && i.nodeType === 11 && i.childNodes.length === this.length ? e = {
                    fragment: i
                } : e = f.buildFragment(a, this, k),
                h = e.fragment,
                h.childNodes.length === 1 ? g = h = h.firstChild : g = h.firstChild;
                if (g) {
                    c = c && f.nodeName(g, "tr");
                    for (var l = 0, m = this.length, n = m - 1; l < m; l++)
                        d.call(c ? bi(this[l], g) : this[l], e.cacheable || m > 1 && l < n ? f.clone(h, !0, !0) : h)
                }
                k.length && f.each(k, function(a, b) {
                    b.src ? f.ajax({
                        type: "GET",
                        global: !1,
                        url: b.src,
                        async: !1,
                        dataType: "script"
                    }) : f.globalEval((b.text || b.textContent || b.innerHTML || "").replace(bf, "/*$0*/")),
                    b.parentNode && b.parentNode.removeChild(b)
                })
            }
            return this
        }
    }),
    f.buildFragment = function(a, b, d) {
        var e, g, h, i, j = a[0];
        b && b[0] && (i = b[0].ownerDocument || b[0]),
        i.createDocumentFragment || (i = c),
        a.length === 1 && typeof j == "string" && j.length < 512 && i === c && j.charAt(0) === "<" && !bb.test(j) && (f.support.checkClone || !bd.test(j)) && (f.support.html5Clone || !bc.test(j)) && (g = !0,
        h = f.fragments[j],
        h && h !== 1 && (e = h)),
        e || (e = i.createDocumentFragment(),
        f.clean(a, i, e, d)),
        g && (f.fragments[j] = h ? e : 1);
        return {
            fragment: e,
            cacheable: g
        }
    }
    ,
    f.fragments = {},
    f.each({
        appendTo: "append",
        prependTo: "prepend",
        insertBefore: "before",
        insertAfter: "after",
        replaceAll: "replaceWith"
    }, function(a, b) {
        f.fn[a] = function(c) {
            var d = []
              , e = f(c)
              , g = this.length === 1 && this[0].parentNode;
            if (g && g.nodeType === 11 && g.childNodes.length === 1 && e.length === 1) {
                e[b](this[0]);
                return this
            }
            for (var h = 0, i = e.length; h < i; h++) {
                var j = (h > 0 ? this.clone(!0) : this).get();
                f(e[h])[b](j),
                d = d.concat(j)
            }
            return this.pushStack(d, a, e.selector)
        }
    }),
    f.extend({
        clone: function(a, b, c) {
            var d, e, g, h = f.support.html5Clone || f.isXMLDoc(a) || !bc.test("<" + a.nodeName + ">") ? a.cloneNode(!0) : bo(a);
            if ((!f.support.noCloneEvent || !f.support.noCloneChecked) && (a.nodeType === 1 || a.nodeType === 11) && !f.isXMLDoc(a)) {
                bk(a, h),
                d = bl(a),
                e = bl(h);
                for (g = 0; d[g]; ++g)
                    e[g] && bk(d[g], e[g])
            }
            if (b) {
                bj(a, h);
                if (c) {
                    d = bl(a),
                    e = bl(h);
                    for (g = 0; d[g]; ++g)
                        bj(d[g], e[g])
                }
            }
            d = e = null;
            return h
        },
        clean: function(a, b, d, e) {
            var g, h, i, j = [];
            b = b || c,
            typeof b.createElement == "undefined" && (b = b.ownerDocument || b[0] && b[0].ownerDocument || c);
            for (var k = 0, l; (l = a[k]) != null; k++) {
                typeof l == "number" && (l += "");
                if (!l)
                    continue;
                if (typeof l == "string")
                    if (!_.test(l))
                        l = b.createTextNode(l);
                    else {
                        l = l.replace(Y, "<$1></$2>");
                        var m = (Z.exec(l) || ["", ""])[1].toLowerCase(), n = bg[m] || bg._default, o = n[0], p = b.createElement("div"), q = bh.childNodes, r;
                        b === c ? bh.appendChild(p) : U(b).appendChild(p),
                        p.innerHTML = n[1] + l + n[2];
                        while (o--)
                            p = p.lastChild;
                        if (!f.support.tbody) {
                            var s = $.test(l)
                              , t = m === "table" && !s ? p.firstChild && p.firstChild.childNodes : n[1] === "<table>" && !s ? p.childNodes : [];
                            for (i = t.length - 1; i >= 0; --i)
                                f.nodeName(t[i], "tbody") && !t[i].childNodes.length && t[i].parentNode.removeChild(t[i])
                        }
                        !f.support.leadingWhitespace && X.test(l) && p.insertBefore(b.createTextNode(X.exec(l)[0]), p.firstChild),
                        l = p.childNodes,
                        p && (p.parentNode.removeChild(p),
                        q.length > 0 && (r = q[q.length - 1],
                        r && r.parentNode && r.parentNode.removeChild(r)))
                    }
                var u;
                if (!f.support.appendChecked)
                    if (l[0] && typeof (u = l.length) == "number")
                        for (i = 0; i < u; i++)
                            bn(l[i]);
                    else
                        bn(l);
                l.nodeType ? j.push(l) : j = f.merge(j, l)
            }
            if (d) {
                g = function(a) {
                    return !a.type || be.test(a.type)
                }
                ;
                for (k = 0; j[k]; k++) {
                    h = j[k];
                    if (e && f.nodeName(h, "script") && (!h.type || be.test(h.type)))
                        e.push(h.parentNode ? h.parentNode.removeChild(h) : h);
                    else {
                        if (h.nodeType === 1) {
                            var v = f.grep(h.getElementsByTagName("script"), g);
                            j.splice.apply(j, [k + 1, 0].concat(v))
                        }
                        d.appendChild(h)
                    }
                }
            }
            return j
        },
        cleanData: function(a) {
            var b, c, d = f.cache, e = f.event.special, g = f.support.deleteExpando;
            for (var h = 0, i; (i = a[h]) != null; h++) {
                if (i.nodeName && f.noData[i.nodeName.toLowerCase()])
                    continue;
                c = i[f.expando];
                if (c) {
                    b = d[c];
                    if (b && b.events) {
                        for (var j in b.events)
                            e[j] ? f.event.remove(i, j) : f.removeEvent(i, j, b.handle);
                        b.handle && (b.handle.elem = null)
                    }
                    g ? delete i[f.expando] : i.removeAttribute && i.removeAttribute(f.expando),
                    delete d[c]
                }
            }
        }
    });
    var bp = /alpha\([^)]*\)/i, bq = /opacity=([^)]*)/, br = /([A-Z]|^ms)/g, bs = /^[\-+]?(?:\d*\.)?\d+$/i, bt = /^-?(?:\d*\.)?\d+(?!px)[^\d\s]+$/i, bu = /^([\-+])=([\-+.\de]+)/, bv = /^margin/, bw = {
        position: "absolute",
        visibility: "hidden",
        display: "block"
    }, bx = ["Top", "Right", "Bottom", "Left"], by, bz, bA;
    f.fn.css = function(a, c) {
        return f.access(this, function(a, c, d) {
            return d !== b ? f.style(a, c, d) : f.css(a, c)
        }, a, c, arguments.length > 1)
    }
    ,
    f.extend({
        cssHooks: {
            opacity: {
                get: function(a, b) {
                    if (b) {
                        var c = by(a, "opacity");
                        return c === "" ? "1" : c
                    }
                    return a.style.opacity
                }
            }
        },
        cssNumber: {
            fillOpacity: !0,
            fontWeight: !0,
            lineHeight: !0,
            opacity: !0,
            orphans: !0,
            widows: !0,
            zIndex: !0,
            zoom: !0
        },
        cssProps: {
            "float": f.support.cssFloat ? "cssFloat" : "styleFloat"
        },
        style: function(a, c, d, e) {
            if (!!a && a.nodeType !== 3 && a.nodeType !== 8 && !!a.style) {
                var g, h, i = f.camelCase(c), j = a.style, k = f.cssHooks[i];
                c = f.cssProps[i] || i;
                if (d === b) {
                    if (k && "get"in k && (g = k.get(a, !1, e)) !== b)
                        return g;
                    return j[c]
                }
                h = typeof d,
                h === "string" && (g = bu.exec(d)) && (d = +(g[1] + 1) * +g[2] + parseFloat(f.css(a, c)),
                h = "number");
                if (d == null || h === "number" && isNaN(d))
                    return;
                h === "number" && !f.cssNumber[i] && (d += "px");
                if (!k || !("set"in k) || (d = k.set(a, d)) !== b)
                    try {
                        j[c] = d
                    } catch (l) {}
            }
        },
        css: function(a, c, d) {
            var e, g;
            c = f.camelCase(c),
            g = f.cssHooks[c],
            c = f.cssProps[c] || c,
            c === "cssFloat" && (c = "float");
            if (g && "get"in g && (e = g.get(a, !0, d)) !== b)
                return e;
            if (by)
                return by(a, c)
        },
        swap: function(a, b, c) {
            var d = {}, e, f;
            for (f in b)
                d[f] = a.style[f],
                a.style[f] = b[f];
            e = c.call(a);
            for (f in b)
                a.style[f] = d[f];
            return e
        }
    }),
    f.curCSS = f.css,
    c.defaultView && c.defaultView.getComputedStyle && (bz = function(a, b) {
        var c, d, e, g, h = a.style;
        b = b.replace(br, "-$1").toLowerCase(),
        (d = a.ownerDocument.defaultView) && (e = d.getComputedStyle(a, null)) && (c = e.getPropertyValue(b),
        c === "" && !f.contains(a.ownerDocument.documentElement, a) && (c = f.style(a, b))),
        !f.support.pixelMargin && e && bv.test(b) && bt.test(c) && (g = h.width,
        h.width = c,
        c = e.width,
        h.width = g);
        return c
    }
    ),
    c.documentElement.currentStyle && (bA = function(a, b) {
        var c, d, e, f = a.currentStyle && a.currentStyle[b], g = a.style;
        f == null && g && (e = g[b]) && (f = e),
        bt.test(f) && (c = g.left,
        d = a.runtimeStyle && a.runtimeStyle.left,
        d && (a.runtimeStyle.left = a.currentStyle.left),
        g.left = b === "fontSize" ? "1em" : f,
        f = g.pixelLeft + "px",
        g.left = c,
        d && (a.runtimeStyle.left = d));
        return f === "" ? "auto" : f
    }
    ),
    by = bz || bA,
    f.each(["height", "width"], function(a, b) {
        f.cssHooks[b] = {
            get: function(a, c, d) {
                if (c)
                    return a.offsetWidth !== 0 ? bB(a, b, d) : f.swap(a, bw, function() {
                        return bB(a, b, d)
                    })
            },
            set: function(a, b) {
                return bs.test(b) ? b + "px" : b
            }
        }
    }),
    f.support.opacity || (f.cssHooks.opacity = {
        get: function(a, b) {
            return bq.test((b && a.currentStyle ? a.currentStyle.filter : a.style.filter) || "") ? parseFloat(RegExp.$1) / 100 + "" : b ? "1" : ""
        },
        set: function(a, b) {
            var c = a.style
              , d = a.currentStyle
              , e = f.isNumeric(b) ? "alpha(opacity=" + b * 100 + ")" : ""
              , g = d && d.filter || c.filter || "";
            c.zoom = 1;
            if (b >= 1 && f.trim(g.replace(bp, "")) === "") {
                c.removeAttribute("filter");
                if (d && !d.filter)
                    return
            }
            c.filter = bp.test(g) ? g.replace(bp, e) : g + " " + e
        }
    }),
    f(function() {
        f.support.reliableMarginRight || (f.cssHooks.marginRight = {
            get: function(a, b) {
                return f.swap(a, {
                    display: "inline-block"
                }, function() {
                    return b ? by(a, "margin-right") : a.style.marginRight
                })
            }
        })
    }),
    f.expr && f.expr.filters && (f.expr.filters.hidden = function(a) {
        var b = a.offsetWidth
          , c = a.offsetHeight;
        return b === 0 && c === 0 || !f.support.reliableHiddenOffsets && (a.style && a.style.display || f.css(a, "display")) === "none"
    }
    ,
    f.expr.filters.visible = function(a) {
        return !f.expr.filters.hidden(a)
    }
    ),
    f.each({
        margin: "",
        padding: "",
        border: "Width"
    }, function(a, b) {
        f.cssHooks[a + b] = {
            expand: function(c) {
                var d, e = typeof c == "string" ? c.split(" ") : [c], f = {};
                for (d = 0; d < 4; d++)
                    f[a + bx[d] + b] = e[d] || e[d - 2] || e[0];
                return f
            }
        }
    });
    var bC = /%20/g, bD = /\[\]$/, bE = /\r?\n/g, bF = /#.*$/, bG = /^(.*?):[ \t]*([^\r\n]*)\r?$/mg, bH = /^(?:color|date|datetime|datetime-local|email|hidden|month|number|password|range|search|tel|text|time|url|week)$/i, bI = /^(?:about|app|app\-storage|.+\-extension|file|res|widget):$/, bJ = /^(?:GET|HEAD)$/, bK = /^\/\//, bL = /\?/, bM = /<script\b[^<]*(?:(?!<\/script>)<[^<]*)*<\/script>/gi, bN = /^(?:select|textarea)/i, bO = /\s+/, bP = /([?&])_=[^&]*/, bQ = /^([\w\+\.\-]+:)(?:\/\/([^\/?#:]*)(?::(\d+))?)?/, bR = f.fn.load, bS = {}, bT = {}, bU, bV, bW = ["*/"] + ["*"];
    try {
        bU = e.href
    } catch (bX) {
        bU = c.createElement("a"),
        bU.href = "",
        bU = bU.href
    }
    bV = bQ.exec(bU.toLowerCase()) || [],
    f.fn.extend({
        load: function(a, c, d) {
            if (typeof a != "string" && bR)
                return bR.apply(this, arguments);
            if (!this.length)
                return this;
            var e = a.indexOf(" ");
            if (e >= 0) {
                var g = a.slice(e, a.length);
                a = a.slice(0, e)
            }
            var h = "GET";
            c && (f.isFunction(c) ? (d = c,
            c = b) : typeof c == "object" && (c = f.param(c, f.ajaxSettings.traditional),
            h = "POST"));
            var i = this;
            f.ajax({
                url: a,
                type: h,
                dataType: "html",
                data: c,
                complete: function(a, b, c) {
                    c = a.responseText,
                    a.isResolved() && (a.done(function(a) {
                        c = a
                    }),
                    i.html(g ? f("<div>").append(c.replace(bM, "")).find(g) : c)),
                    d && i.each(d, [c, b, a])
                }
            });
            return this
        },
        serialize: function() {
            return f.param(this.serializeArray())
        },
        serializeArray: function() {
            return this.map(function() {
                return this.elements ? f.makeArray(this.elements) : this
            }).filter(function() {
                return this.name && !this.disabled && (this.checked || bN.test(this.nodeName) || bH.test(this.type))
            }).map(function(a, b) {
                var c = f(this).val();
                return c == null ? null : f.isArray(c) ? f.map(c, function(a, c) {
                    return {
                        name: b.name,
                        value: a.replace(bE, "\r\n")
                    }
                }) : {
                    name: b.name,
                    value: c.replace(bE, "\r\n")
                }
            }).get()
        }
    }),
    f.each("ajaxStart ajaxStop ajaxComplete ajaxError ajaxSuccess ajaxSend".split(" "), function(a, b) {
        f.fn[b] = function(a) {
            return this.on(b, a)
        }
    }),
    f.each(["get", "post"], function(a, c) {
        f[c] = function(a, d, e, g) {
            f.isFunction(d) && (g = g || e,
            e = d,
            d = b);
            return f.ajax({
                type: c,
                url: a,
                data: d,
                success: e,
                dataType: g
            })
        }
    }),
    f.extend({
        getScript: function(a, c) {
            return f.get(a, b, c, "script")
        },
        getJSON: function(a, b, c) {
            return f.get(a, b, c, "json")
        },
        ajaxSetup: function(a, b) {
            b ? b$(a, f.ajaxSettings) : (b = a,
            a = f.ajaxSettings),
            b$(a, b);
            return a
        },
        ajaxSettings: {
            url: bU,
            isLocal: bI.test(bV[1]),
            global: !0,
            type: "GET",
            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
            processData: !0,
            async: !0,
            accepts: {
                xml: "application/xml, text/xml",
                html: "text/html",
                text: "text/plain",
                json: "application/json, text/javascript",
                "*": bW
            },
            contents: {
                xml: /xml/,
                html: /html/,
                json: /json/
            },
            responseFields: {
                xml: "responseXML",
                text: "responseText"
            },
            converters: {
                "* text": a.String,
                "text html": !0,
                "text json": f.parseJSON,
                "text xml": f.parseXML
            },
            flatOptions: {
                context: !0,
                url: !0
            }
        },
        ajaxPrefilter: bY(bS),
        ajaxTransport: bY(bT),
        ajax: function(a, c) {
            function w(a, c, l, m) {
                if (s !== 2) {
                    s = 2,
                    q && clearTimeout(q),
                    p = b,
                    n = m || "",
                    v.readyState = a > 0 ? 4 : 0;
                    var o, r, u, w = c, x = l ? ca(d, v, l) : b, y, z;
                    if (a >= 200 && a < 300 || a === 304) {
                        if (d.ifModified) {
                            if (y = v.getResponseHeader("Last-Modified"))
                                f.lastModified[k] = y;
                            if (z = v.getResponseHeader("Etag"))
                                f.etag[k] = z
                        }
                        if (a === 304)
                            w = "notmodified",
                            o = !0;
                        else
                            try {
                                r = cb(d, x),
                                w = "success",
                                o = !0
                            } catch (A) {
                                w = "parsererror",
                                u = A
                            }
                    } else {
                        u = w;
                        if (!w || a)
                            w = "error",
                            a < 0 && (a = 0)
                    }
                    v.status = a,
                    v.statusText = "" + (c || w),
                    o ? h.resolveWith(e, [r, w, v]) : h.rejectWith(e, [v, w, u]),
                    v.statusCode(j),
                    j = b,
                    t && g.trigger("ajax" + (o ? "Success" : "Error"), [v, d, o ? r : u]),
                    i.fireWith(e, [v, w]),
                    t && (g.trigger("ajaxComplete", [v, d]),
                    --f.active || f.event.trigger("ajaxStop"))
                }
            }
            typeof a == "object" && (c = a,
            a = b),
            c = c || {};
            var d = f.ajaxSetup({}, c), e = d.context || d, g = e !== d && (e.nodeType || e instanceof f) ? f(e) : f.event, h = f.Deferred(), i = f.Callbacks("once memory"), j = d.statusCode || {}, k, l = {}, m = {}, n, o, p, q, r, s = 0, t, u, v = {
                readyState: 0,
                setRequestHeader: function(a, b) {
                    if (!s) {
                        var c = a.toLowerCase();
                        a = m[c] = m[c] || a,
                        l[a] = b
                    }
                    return this
                },
                getAllResponseHeaders: function() {
                    return s === 2 ? n : null
                },
                getResponseHeader: function(a) {
                    var c;
                    if (s === 2) {
                        if (!o) {
                            o = {};
                            while (c = bG.exec(n))
                                o[c[1].toLowerCase()] = c[2]
                        }
                        c = o[a.toLowerCase()]
                    }
                    return c === b ? null : c
                },
                overrideMimeType: function(a) {
                    s || (d.mimeType = a);
                    return this
                },
                abort: function(a) {
                    a = a || "abort",
                    p && p.abort(a),
                    w(0, a);
                    return this
                }
            };
            h.promise(v),
            v.success = v.done,
            v.error = v.fail,
            v.complete = i.add,
            v.statusCode = function(a) {
                if (a) {
                    var b;
                    if (s < 2)
                        for (b in a)
                            j[b] = [j[b], a[b]];
                    else
                        b = a[v.status],
                        v.then(b, b)
                }
                return this
            }
            ,
            d.url = ((a || d.url) + "").replace(bF, "").replace(bK, bV[1] + "//"),
            d.dataTypes = f.trim(d.dataType || "*").toLowerCase().split(bO),
            d.crossDomain == null && (r = bQ.exec(d.url.toLowerCase()),
            d.crossDomain = !(!r || r[1] == bV[1] && r[2] == bV[2] && (r[3] || (r[1] === "http:" ? 80 : 443)) == (bV[3] || (bV[1] === "http:" ? 80 : 443)))),
            d.data && d.processData && typeof d.data != "string" && (d.data = f.param(d.data, d.traditional)),
            bZ(bS, d, c, v);
            if (s === 2)
                return !1;
            t = d.global,
            d.type = d.type.toUpperCase(),
            d.hasContent = !bJ.test(d.type),
            t && f.active++ === 0 && f.event.trigger("ajaxStart");
            if (!d.hasContent) {
                d.data && (d.url += (bL.test(d.url) ? "&" : "?") + d.data,
                delete d.data),
                k = d.url;
                if (d.cache === !1) {
                    var x = f.now()
                      , y = d.url.replace(bP, "$1_=" + x);
                    d.url = y + (y === d.url ? (bL.test(d.url) ? "&" : "?") + "_=" + x : "")
                }
            }
            (d.data && d.hasContent && d.contentType !== !1 || c.contentType) && v.setRequestHeader("Content-Type", d.contentType),
            d.ifModified && (k = k || d.url,
            f.lastModified[k] && v.setRequestHeader("If-Modified-Since", f.lastModified[k]),
            f.etag[k] && v.setRequestHeader("If-None-Match", f.etag[k])),
            v.setRequestHeader("Accept", d.dataTypes[0] && d.accepts[d.dataTypes[0]] ? d.accepts[d.dataTypes[0]] + (d.dataTypes[0] !== "*" ? ", " + bW + "; q=0.01" : "") : d.accepts["*"]);
            for (u in d.headers)
                v.setRequestHeader(u, d.headers[u]);
            if (d.beforeSend && (d.beforeSend.call(e, v, d) === !1 || s === 2)) {
                v.abort();
                return !1
            }
            for (u in {
                success: 1,
                error: 1,
                complete: 1
            })
                v[u](d[u]);
            p = bZ(bT, d, c, v);
            if (!p)
                w(-1, "No Transport");
            else {
                v.readyState = 1,
                t && g.trigger("ajaxSend", [v, d]),
                d.async && d.timeout > 0 && (q = setTimeout(function() {
                    v.abort("timeout")
                }, d.timeout));
                try {
                    s = 1,
                    p.send(l, w)
                } catch (z) {
                    if (s < 2)
                        w(-1, z);
                    else
                        throw z
                }
            }
            return v
        },
        param: function(a, c) {
            var d = []
              , e = function(a, b) {
                b = f.isFunction(b) ? b() : b,
                d[d.length] = encodeURIComponent(a) + "=" + encodeURIComponent(b)
            };
            c === b && (c = f.ajaxSettings.traditional);
            if (f.isArray(a) || a.jquery && !f.isPlainObject(a))
                f.each(a, function() {
                    e(this.name, this.value)
                });
            else
                for (var g in a)
                    b_(g, a[g], c, e);
            return d.join("&").replace(bC, "+")
        }
    }),
    f.extend({
        active: 0,
        lastModified: {},
        etag: {}
    });
    var cc = f.now()
      , cd = /(\=)\?(&|$)|\?\?/i;
    f.ajaxSetup({
        jsonp: "callback",
        jsonpCallback: function() {
            return f.expando + "_" + cc++
        }
    }),
    f.ajaxPrefilter("json jsonp", function(b, c, d) {
        var e = typeof b.data == "string" && /^application\/x\-www\-form\-urlencoded/.test(b.contentType);
        if (b.dataTypes[0] === "jsonp" || b.jsonp !== !1 && (cd.test(b.url) || e && cd.test(b.data))) {
            var g, h = b.jsonpCallback = f.isFunction(b.jsonpCallback) ? b.jsonpCallback() : b.jsonpCallback, i = a[h], j = b.url, k = b.data, l = "$1" + h + "$2";
            b.jsonp !== !1 && (j = j.replace(cd, l),
            b.url === j && (e && (k = k.replace(cd, l)),
            b.data === k && (j += (/\?/.test(j) ? "&" : "?") + b.jsonp + "=" + h))),
            b.url = j,
            b.data = k,
            a[h] = function(a) {
                g = [a]
            }
            ,
            d.always(function() {
                a[h] = i,
                g && f.isFunction(i) && a[h](g[0])
            }),
            b.converters["script json"] = function() {
                g || f.error(h + " was not called");
                return g[0]
            }
            ,
            b.dataTypes[0] = "json";
            return "script"
        }
    }),
    f.ajaxSetup({
        accepts: {
            script: "text/javascript, application/javascript, application/ecmascript, application/x-ecmascript"
        },
        contents: {
            script: /javascript|ecmascript/
        },
        converters: {
            "text script": function(a) {
                f.globalEval(a);
                return a
            }
        }
    }),
    f.ajaxPrefilter("script", function(a) {
        a.cache === b && (a.cache = !1),
        a.crossDomain && (a.type = "GET",
        a.global = !1)
    }),
    f.ajaxTransport("script", function(a) {
        if (a.crossDomain) {
            var d, e = c.head || c.getElementsByTagName("head")[0] || c.documentElement;
            return {
                send: function(f, g) {
                    d = c.createElement("script"),
                    d.async = "async",
                    a.scriptCharset && (d.charset = a.scriptCharset),
                    d.src = a.url,
                    d.onload = d.onreadystatechange = function(a, c) {
                        if (c || !d.readyState || /loaded|complete/.test(d.readyState))
                            d.onload = d.onreadystatechange = null,
                            e && d.parentNode && e.removeChild(d),
                            d = b,
                            c || g(200, "success")
                    }
                    ,
                    e.insertBefore(d, e.firstChild)
                },
                abort: function() {
                    d && d.onload(0, 1)
                }
            }
        }
    });
    var ce = a.ActiveXObject ? function() {
        for (var a in cg)
            cg[a](0, 1)
    }
    : !1, cf = 0, cg;
    f.ajaxSettings.xhr = a.ActiveXObject ? function() {
        return !this.isLocal && ch() || ci()
    }
    : ch,
    function(a) {
        f.extend(f.support, {
            ajax: !!a,
            cors: !!a && "withCredentials"in a
        })
    }(f.ajaxSettings.xhr()),
    f.support.ajax && f.ajaxTransport(function(c) {
        if (!c.crossDomain || f.support.cors) {
            var d;
            return {
                send: function(e, g) {
                    var h = c.xhr(), i, j;
                    c.username ? h.open(c.type, c.url, c.async, c.username, c.password) : h.open(c.type, c.url, c.async);
                    if (c.xhrFields)
                        for (j in c.xhrFields)
                            h[j] = c.xhrFields[j];
                    c.mimeType && h.overrideMimeType && h.overrideMimeType(c.mimeType),
                    !c.crossDomain && !e["X-Requested-With"] && (e["X-Requested-With"] = "XMLHttpRequest");
                    try {
                        for (j in e)
                            h.setRequestHeader(j, e[j])
                    } catch (k) {}
                    h.send(c.hasContent && c.data || null),
                    d = function(a, e) {
                        var j, k, l, m, n;
                        try {
                            if (d && (e || h.readyState === 4)) {
                                d = b,
                                i && (h.onreadystatechange = f.noop,
                                ce && delete cg[i]);
                                if (e)
                                    h.readyState !== 4 && h.abort();
                                else {
                                    j = h.status,
                                    l = h.getAllResponseHeaders(),
                                    m = {},
                                    n = h.responseXML,
                                    n && n.documentElement && (m.xml = n);
                                    try {
                                        m.text = h.responseText
                                    } catch (a) {}
                                    try {
                                        k = h.statusText
                                    } catch (o) {
                                        k = ""
                                    }
                                    !j && c.isLocal && !c.crossDomain ? j = m.text ? 200 : 404 : j === 1223 && (j = 204)
                                }
                            }
                        } catch (p) {
                            e || g(-1, p)
                        }
                        m && g(j, k, m, l)
                    }
                    ,
                    !c.async || h.readyState === 4 ? d() : (i = ++cf,
                    ce && (cg || (cg = {},
                    f(a).unload(ce)),
                    cg[i] = d),
                    h.onreadystatechange = d)
                },
                abort: function() {
                    d && d(0, 1)
                }
            }
        }
    });
    var cj = {}, ck, cl, cm = /^(?:toggle|show|hide)$/, cn = /^([+\-]=)?([\d+.\-]+)([a-z%]*)$/i, co, cp = [["height", "marginTop", "marginBottom", "paddingTop", "paddingBottom"], ["width", "marginLeft", "marginRight", "paddingLeft", "paddingRight"], ["opacity"]], cq;
    f.fn.extend({
        show: function(a, b, c) {
            var d, e;
            if (a || a === 0)
                return this.animate(ct("show", 3), a, b, c);
            for (var g = 0, h = this.length; g < h; g++)
                d = this[g],
                d.style && (e = d.style.display,
                !f._data(d, "olddisplay") && e === "none" && (e = d.style.display = ""),
                (e === "" && f.css(d, "display") === "none" || !f.contains(d.ownerDocument.documentElement, d)) && f._data(d, "olddisplay", cu(d.nodeName)));
            for (g = 0; g < h; g++) {
                d = this[g];
                if (d.style) {
                    e = d.style.display;
                    if (e === "" || e === "none")
                        d.style.display = f._data(d, "olddisplay") || ""
                }
            }
            return this
        },
        hide: function(a, b, c) {
            if (a || a === 0)
                return this.animate(ct("hide", 3), a, b, c);
            var d, e, g = 0, h = this.length;
            for (; g < h; g++)
                d = this[g],
                d.style && (e = f.css(d, "display"),
                e !== "none" && !f._data(d, "olddisplay") && f._data(d, "olddisplay", e));
            for (g = 0; g < h; g++)
                this[g].style && (this[g].style.display = "none");
            return this
        },
        _toggle: f.fn.toggle,
        toggle: function(a, b, c) {
            var d = typeof a == "boolean";
            f.isFunction(a) && f.isFunction(b) ? this._toggle.apply(this, arguments) : a == null || d ? this.each(function() {
                var b = d ? a : f(this).is(":hidden");
                f(this)[b ? "show" : "hide"]()
            }) : this.animate(ct("toggle", 3), a, b, c);
            return this
        },
        fadeTo: function(a, b, c, d) {
            return this.filter(":hidden").css("opacity", 0).show().end().animate({
                opacity: b
            }, a, c, d)
        },
        animate: function(a, b, c, d) {
            function g() {
                e.queue === !1 && f._mark(this);
                var b = f.extend({}, e), c = this.nodeType === 1, d = c && f(this).is(":hidden"), g, h, i, j, k, l, m, n, o, p, q;
                b.animatedProperties = {};
                for (i in a) {
                    g = f.camelCase(i),
                    i !== g && (a[g] = a[i],
                    delete a[i]);
                    if ((k = f.cssHooks[g]) && "expand"in k) {
                        l = k.expand(a[g]),
                        delete a[g];
                        for (i in l)
                            i in a || (a[i] = l[i])
                    }
                }
                for (g in a) {
                    h = a[g],
                    f.isArray(h) ? (b.animatedProperties[g] = h[1],
                    h = a[g] = h[0]) : b.animatedProperties[g] = b.specialEasing && b.specialEasing[g] || b.easing || "swing";
                    if (h === "hide" && d || h === "show" && !d)
                        return b.complete.call(this);
                    c && (g === "height" || g === "width") && (b.overflow = [this.style.overflow, this.style.overflowX, this.style.overflowY],
                    f.css(this, "display") === "inline" && f.css(this, "float") === "none" && (!f.support.inlineBlockNeedsLayout || cu(this.nodeName) === "inline" ? this.style.display = "inline-block" : this.style.zoom = 1))
                }
                b.overflow != null && (this.style.overflow = "hidden");
                for (i in a)
                    j = new f.fx(this,b,i),
                    h = a[i],
                    cm.test(h) ? (q = f._data(this, "toggle" + i) || (h === "toggle" ? d ? "show" : "hide" : 0),
                    q ? (f._data(this, "toggle" + i, q === "show" ? "hide" : "show"),
                    j[q]()) : j[h]()) : (m = cn.exec(h),
                    n = j.cur(),
                    m ? (o = parseFloat(m[2]),
                    p = m[3] || (f.cssNumber[i] ? "" : "px"),
                    p !== "px" && (f.style(this, i, (o || 1) + p),
                    n = (o || 1) / j.cur() * n,
                    f.style(this, i, n + p)),
                    m[1] && (o = (m[1] === "-=" ? -1 : 1) * o + n),
                    j.custom(n, o, p)) : j.custom(n, h, ""));
                return !0
            }
            var e = f.speed(b, c, d);
            if (f.isEmptyObject(a))
                return this.each(e.complete, [!1]);
            a = f.extend({}, a);
            return e.queue === !1 ? this.each(g) : this.queue(e.queue, g)
        },
        stop: function(a, c, d) {
            typeof a != "string" && (d = c,
            c = a,
            a = b),
            c && a !== !1 && this.queue(a || "fx", []);
            return this.each(function() {
                function h(a, b, c) {
                    var e = b[c];
                    f.removeData(a, c, !0),
                    e.stop(d)
                }
                var b, c = !1, e = f.timers, g = f._data(this);
                d || f._unmark(!0, this);
                if (a == null)
                    for (b in g)
                        g[b] && g[b].stop && b.indexOf(".run") === b.length - 4 && h(this, g, b);
                else
                    g[b = a + ".run"] && g[b].stop && h(this, g, b);
                for (b = e.length; b--; )
                    e[b].elem === this && (a == null || e[b].queue === a) && (d ? e[b](!0) : e[b].saveState(),
                    c = !0,
                    e.splice(b, 1));
                (!d || !c) && f.dequeue(this, a)
            })
        }
    }),
    f.each({
        slideDown: ct("show", 1),
        slideUp: ct("hide", 1),
        slideToggle: ct("toggle", 1),
        fadeIn: {
            opacity: "show"
        },
        fadeOut: {
            opacity: "hide"
        },
        fadeToggle: {
            opacity: "toggle"
        }
    }, function(a, b) {
        f.fn[a] = function(a, c, d) {
            return this.animate(b, a, c, d)
        }
    }),
    f.extend({
        speed: function(a, b, c) {
            var d = a && typeof a == "object" ? f.extend({}, a) : {
                complete: c || !c && b || f.isFunction(a) && a,
                duration: a,
                easing: c && b || b && !f.isFunction(b) && b
            };
            d.duration = f.fx.off ? 0 : typeof d.duration == "number" ? d.duration : d.duration in f.fx.speeds ? f.fx.speeds[d.duration] : f.fx.speeds._default;
            if (d.queue == null || d.queue === !0)
                d.queue = "fx";
            d.old = d.complete,
            d.complete = function(a) {
                f.isFunction(d.old) && d.old.call(this),
                d.queue ? f.dequeue(this, d.queue) : a !== !1 && f._unmark(this)
            }
            ;
            return d
        },
        easing: {
            linear: function(a) {
                return a
            },
            swing: function(a) {
                return -Math.cos(a * Math.PI) / 2 + .5
            }
        },
        timers: [],
        fx: function(a, b, c) {
            this.options = b,
            this.elem = a,
            this.prop = c,
            b.orig = b.orig || {}
        }
    }),
    f.fx.prototype = {
        update: function() {
            this.options.step && this.options.step.call(this.elem, this.now, this),
            (f.fx.step[this.prop] || f.fx.step._default)(this)
        },
        cur: function() {
            if (this.elem[this.prop] != null && (!this.elem.style || this.elem.style[this.prop] == null))
                return this.elem[this.prop];
            var a, b = f.css(this.elem, this.prop);
            return isNaN(a = parseFloat(b)) ? !b || b === "auto" ? 0 : b : a
        },
        custom: function(a, c, d) {
            function h(a) {
                return e.step(a)
            }
            var e = this
              , g = f.fx;
            this.startTime = cq || cr(),
            this.end = c,
            this.now = this.start = a,
            this.pos = this.state = 0,
            this.unit = d || this.unit || (f.cssNumber[this.prop] ? "" : "px"),
            h.queue = this.options.queue,
            h.elem = this.elem,
            h.saveState = function() {
                f._data(e.elem, "fxshow" + e.prop) === b && (e.options.hide ? f._data(e.elem, "fxshow" + e.prop, e.start) : e.options.show && f._data(e.elem, "fxshow" + e.prop, e.end))
            }
            ,
            h() && f.timers.push(h) && !co && (co = setInterval(g.tick, g.interval))
        },
        show: function() {
            var a = f._data(this.elem, "fxshow" + this.prop);
            this.options.orig[this.prop] = a || f.style(this.elem, this.prop),
            this.options.show = !0,
            a !== b ? this.custom(this.cur(), a) : this.custom(this.prop === "width" || this.prop === "height" ? 1 : 0, this.cur()),
            f(this.elem).show()
        },
        hide: function() {
            this.options.orig[this.prop] = f._data(this.elem, "fxshow" + this.prop) || f.style(this.elem, this.prop),
            this.options.hide = !0,
            this.custom(this.cur(), 0)
        },
        step: function(a) {
            var b, c, d, e = cq || cr(), g = !0, h = this.elem, i = this.options;
            if (a || e >= i.duration + this.startTime) {
                this.now = this.end,
                this.pos = this.state = 1,
                this.update(),
                i.animatedProperties[this.prop] = !0;
                for (b in i.animatedProperties)
                    i.animatedProperties[b] !== !0 && (g = !1);
                if (g) {
                    i.overflow != null && !f.support.shrinkWrapBlocks && f.each(["", "X", "Y"], function(a, b) {
                        h.style["overflow" + b] = i.overflow[a]
                    }),
                    i.hide && f(h).hide();
                    if (i.hide || i.show)
                        for (b in i.animatedProperties)
                            f.style(h, b, i.orig[b]),
                            f.removeData(h, "fxshow" + b, !0),
                            f.removeData(h, "toggle" + b, !0);
                    d = i.complete,
                    d && (i.complete = !1,
                    d.call(h))
                }
                return !1
            }
            i.duration == Infinity ? this.now = e : (c = e - this.startTime,
            this.state = c / i.duration,
            this.pos = f.easing[i.animatedProperties[this.prop]](this.state, c, 0, 1, i.duration),
            this.now = this.start + (this.end - this.start) * this.pos),
            this.update();
            return !0
        }
    },
    f.extend(f.fx, {
        tick: function() {
            var a, b = f.timers, c = 0;
            for (; c < b.length; c++)
                a = b[c],
                !a() && b[c] === a && b.splice(c--, 1);
            b.length || f.fx.stop()
        },
        interval: 13,
        stop: function() {
            clearInterval(co),
            co = null
        },
        speeds: {
            slow: 600,
            fast: 200,
            _default: 400
        },
        step: {
            opacity: function(a) {
                f.style(a.elem, "opacity", a.now)
            },
            _default: function(a) {
                a.elem.style && a.elem.style[a.prop] != null ? a.elem.style[a.prop] = a.now + a.unit : a.elem[a.prop] = a.now
            }
        }
    }),
    f.each(cp.concat.apply([], cp), function(a, b) {
        b.indexOf("margin") && (f.fx.step[b] = function(a) {
            f.style(a.elem, b, Math.max(0, a.now) + a.unit)
        }
        )
    }),
    f.expr && f.expr.filters && (f.expr.filters.animated = function(a) {
        return f.grep(f.timers, function(b) {
            return a === b.elem
        }).length
    }
    );
    var cv, cw = /^t(?:able|d|h)$/i, cx = /^(?:body|html)$/i;
    "getBoundingClientRect"in c.documentElement ? cv = function(a, b, c, d) {
        try {
            d = a.getBoundingClientRect()
        } catch (e) {}
        if (!d || !f.contains(c, a))
            return d ? {
                top: d.top,
                left: d.left
            } : {
                top: 0,
                left: 0
            };
        var g = b.body
          , h = cy(b)
          , i = c.clientTop || g.clientTop || 0
          , j = c.clientLeft || g.clientLeft || 0
          , k = h.pageYOffset || f.support.boxModel && c.scrollTop || g.scrollTop
          , l = h.pageXOffset || f.support.boxModel && c.scrollLeft || g.scrollLeft
          , m = d.top + k - i
          , n = d.left + l - j;
        return {
            top: m,
            left: n
        }
    }
    : cv = function(a, b, c) {
        var d, e = a.offsetParent, g = a, h = b.body, i = b.defaultView, j = i ? i.getComputedStyle(a, null) : a.currentStyle, k = a.offsetTop, l = a.offsetLeft;
        while ((a = a.parentNode) && a !== h && a !== c) {
            if (f.support.fixedPosition && j.position === "fixed")
                break;
            d = i ? i.getComputedStyle(a, null) : a.currentStyle,
            k -= a.scrollTop,
            l -= a.scrollLeft,
            a === e && (k += a.offsetTop,
            l += a.offsetLeft,
            f.support.doesNotAddBorder && (!f.support.doesAddBorderForTableAndCells || !cw.test(a.nodeName)) && (k += parseFloat(d.borderTopWidth) || 0,
            l += parseFloat(d.borderLeftWidth) || 0),
            g = e,
            e = a.offsetParent),
            f.support.subtractsBorderForOverflowNotVisible && d.overflow !== "visible" && (k += parseFloat(d.borderTopWidth) || 0,
            l += parseFloat(d.borderLeftWidth) || 0),
            j = d
        }
        if (j.position === "relative" || j.position === "static")
            k += h.offsetTop,
            l += h.offsetLeft;
        f.support.fixedPosition && j.position === "fixed" && (k += Math.max(c.scrollTop, h.scrollTop),
        l += Math.max(c.scrollLeft, h.scrollLeft));
        return {
            top: k,
            left: l
        }
    }
    ,
    f.fn.offset = function(a) {
        if (arguments.length)
            return a === b ? this : this.each(function(b) {
                f.offset.setOffset(this, a, b)
            });
        var c = this[0]
          , d = c && c.ownerDocument;
        if (!d)
            return null;
        if (c === d.body)
            return f.offset.bodyOffset(c);
        return cv(c, d, d.documentElement)
    }
    ,
    f.offset = {
        bodyOffset: function(a) {
            var b = a.offsetTop
              , c = a.offsetLeft;
            f.support.doesNotIncludeMarginInBodyOffset && (b += parseFloat(f.css(a, "marginTop")) || 0,
            c += parseFloat(f.css(a, "marginLeft")) || 0);
            return {
                top: b,
                left: c
            }
        },
        setOffset: function(a, b, c) {
            var d = f.css(a, "position");
            d === "static" && (a.style.position = "relative");
            var e = f(a), g = e.offset(), h = f.css(a, "top"), i = f.css(a, "left"), j = (d === "absolute" || d === "fixed") && f.inArray("auto", [h, i]) > -1, k = {}, l = {}, m, n;
            j ? (l = e.position(),
            m = l.top,
            n = l.left) : (m = parseFloat(h) || 0,
            n = parseFloat(i) || 0),
            f.isFunction(b) && (b = b.call(a, c, g)),
            b.top != null && (k.top = b.top - g.top + m),
            b.left != null && (k.left = b.left - g.left + n),
            "using"in b ? b.using.call(a, k) : e.css(k)
        }
    },
    f.fn.extend({
        position: function() {
            if (!this[0])
                return null;
            var a = this[0]
              , b = this.offsetParent()
              , c = this.offset()
              , d = cx.test(b[0].nodeName) ? {
                top: 0,
                left: 0
            } : b.offset();
            c.top -= parseFloat(f.css(a, "marginTop")) || 0,
            c.left -= parseFloat(f.css(a, "marginLeft")) || 0,
            d.top += parseFloat(f.css(b[0], "borderTopWidth")) || 0,
            d.left += parseFloat(f.css(b[0], "borderLeftWidth")) || 0;
            return {
                top: c.top - d.top,
                left: c.left - d.left
            }
        },
        offsetParent: function() {
            return this.map(function() {
                var a = this.offsetParent || c.body;
                while (a && !cx.test(a.nodeName) && f.css(a, "position") === "static")
                    a = a.offsetParent;
                return a
            })
        }
    }),
    f.each({
        scrollLeft: "pageXOffset",
        scrollTop: "pageYOffset"
    }, function(a, c) {
        var d = /Y/.test(c);
        f.fn[a] = function(e) {
            return f.access(this, function(a, e, g) {
                var h = cy(a);
                if (g === b)
                    return h ? c in h ? h[c] : f.support.boxModel && h.document.documentElement[e] || h.document.body[e] : a[e];
                h ? h.scrollTo(d ? f(h).scrollLeft() : g, d ? g : f(h).scrollTop()) : a[e] = g
            }, a, e, arguments.length, null)
        }
    }),
    f.each({
        Height: "height",
        Width: "width"
    }, function(a, c) {
        var d = "client" + a
          , e = "scroll" + a
          , g = "offset" + a;
        f.fn["inner" + a] = function() {
            var a = this[0];
            return a ? a.style ? parseFloat(f.css(a, c, "padding")) : this[c]() : null
        }
        ,
        f.fn["outer" + a] = function(a) {
            var b = this[0];
            return b ? b.style ? parseFloat(f.css(b, c, a ? "margin" : "border")) : this[c]() : null
        }
        ,
        f.fn[c] = function(a) {
            return f.access(this, function(a, c, h) {
                var i, j, k, l;
                if (f.isWindow(a)) {
                    i = a.document,
                    j = i.documentElement[d];
                    return f.support.boxModel && j || i.body && i.body[d] || j
                }
                if (a.nodeType === 9) {
                    i = a.documentElement;
                    if (i[d] >= i[e])
                        return i[d];
                    return Math.max(a.body[e], i[e], a.body[g], i[g])
                }
                if (h === b) {
                    k = f.css(a, c),
                    l = parseFloat(k);
                    return f.isNumeric(l) ? l : k
                }
                f(a).css(c, h)
            }, c, a, arguments.length, null)
        }
    }),
    a.jQuery = a.$ = f,
    typeof define == "function" && define.amd && define.amd.jQuery && define("jquery", [], function() {
        return f
    })
}
)(window);

/*! Lazy Load 1.9.7 - MIT license - Copyright 2010-2015 Mika Tuupola */
!function(a, b, c, d) {
    var e = a(b);
    a.fn.lazyload = function(f) {
        function g() {
            var b = 0;
            i.each(function() {
                var c = a(this);
                if (!j.skip_invisible || c.is(":visible"))
                    if (a.abovethetop(this, j) || a.leftofbegin(this, j))
                        ;
                    else if (a.belowthefold(this, j) || a.rightoffold(this, j)) {
                        if (++b > j.failure_limit)
                            return !1
                    } else
                        c.trigger("appear"),
                        b = 0
            })
        }
        var h, i = this, j = {
            threshold: 0,
            failure_limit: 0,
            event: "scroll",
            effect: "show",
            container: b,
            data_attribute: "original",
            skip_invisible: !1,
            appear: null,
            load: null,
            placeholder: "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAANSURBVBhXYzh8+PB/AAffA0nNPuCLAAAAAElFTkSuQmCC"
        };
        return f && (d !== f.failurelimit && (f.failure_limit = f.failurelimit,
        delete f.failurelimit),
        d !== f.effectspeed && (f.effect_speed = f.effectspeed,
        delete f.effectspeed),
        a.extend(j, f)),
        h = j.container === d || j.container === b ? e : a(j.container),
        0 === j.event.indexOf("scroll") && h.bind(j.event, function() {
            return g()
        }),
        this.each(function() {
            var b = this
              , c = a(b);
            b.loaded = !1,
            (c.attr("src") === d || c.attr("src") === !1) && c.is("img") && c.attr("src", j.placeholder),
            c.one("appear", function() {
                if (!this.loaded) {
                    if (j.appear) {
                        var d = i.length;
                        j.appear.call(b, d, j)
                    }
                    a("<img />").bind("load", function() {
                        var d = c.attr("data-" + j.data_attribute);
                        c.hide(),
                        c.is("img") ? c.attr("src", d) : c.css("background-image", "url('" + d + "')"),
                        c[j.effect](j.effect_speed),
                        b.loaded = !0;
                        var e = a.grep(i, function(a) {
                            return !a.loaded
                        });
                        if (i = a(e),
                        j.load) {
                            var f = i.length;
                            j.load.call(b, f, j)
                        }
                    }).attr("src", c.attr("data-" + j.data_attribute))
                }
            }),
            0 !== j.event.indexOf("scroll") && c.bind(j.event, function() {
                b.loaded || c.trigger("appear")
            })
        }),
        e.bind("resize", function() {
            g()
        }),
        /(?:iphone|ipod|ipad).*os 5/gi.test(navigator.appVersion) && e.bind("pageshow", function(b) {
            b.originalEvent && b.originalEvent.persisted && i.each(function() {
                a(this).trigger("appear")
            })
        }),
        a(c).ready(function() {
            g()
        }),
        this
    }
    ,
    a.belowthefold = function(c, f) {
        var g;
        return g = f.container === d || f.container === b ? (b.innerHeight ? b.innerHeight : e.height()) + e.scrollTop() : a(f.container).offset().top + a(f.container).height(),
        g <= a(c).offset().top - f.threshold
    }
    ,
    a.rightoffold = function(c, f) {
        var g;
        return g = f.container === d || f.container === b ? e.width() + e.scrollLeft() : a(f.container).offset().left + a(f.container).width(),
        g <= a(c).offset().left - f.threshold
    }
    ,
    a.abovethetop = function(c, f) {
        var g;
        return g = f.container === d || f.container === b ? e.scrollTop() : a(f.container).offset().top,
        g >= a(c).offset().top + f.threshold + a(c).height()
    }
    ,
    a.leftofbegin = function(c, f) {
        var g;
        return g = f.container === d || f.container === b ? e.scrollLeft() : a(f.container).offset().left,
        g >= a(c).offset().left + f.threshold + a(c).width()
    }
    ,
    a.inviewport = function(b, c) {
        return !(a.rightoffold(b, c) || a.leftofbegin(b, c) || a.belowthefold(b, c) || a.abovethetop(b, c))
    }
    ,
    a.extend(a.expr[":"], {
        "below-the-fold": function(b) {
            return a.belowthefold(b, {
                threshold: 0
            })
        },
        "above-the-top": function(b) {
            return !a.belowthefold(b, {
                threshold: 0
            })
        },
        "right-of-screen": function(b) {
            return a.rightoffold(b, {
                threshold: 0
            })
        },
        "left-of-screen": function(b) {
            return !a.rightoffold(b, {
                threshold: 0
            })
        },
        "in-viewport": function(b) {
            return a.inviewport(b, {
                threshold: 0
            })
        },
        "above-the-fold": function(b) {
            return !a.belowthefold(b, {
                threshold: 0
            })
        },
        "right-of-fold": function(b) {
            return a.rightoffold(b, {
                threshold: 0
            })
        },
        "left-of-fold": function(b) {
            return !a.rightoffold(b, {
                threshold: 0
            })
        }
    })
}(jQuery, window, document);

/* jquery.nicescroll 3.6.8 InuYaksa*2015 MIT http://nicescroll.areaaperta.com */
(function(f) {
    "function" === typeof define && define.amd ? define(["jquery"], f) : "object" === typeof exports ? module.exports = f(require("jquery")) : f(jQuery)
}
)(function(f) {
    var B = !1
      , F = !1
      , O = 0
      , P = 2E3
      , A = 0
      , J = ["webkit", "ms", "moz", "o"]
      , v = window.requestAnimationFrame || !1
      , w = window.cancelAnimationFrame || !1;
    if (!v)
        for (var Q in J) {
            var G = J[Q];
            if (v = window[G + "RequestAnimationFrame"]) {
                w = window[G + "CancelAnimationFrame"] || window[G + "CancelRequestAnimationFrame"];
                break
            }
        }
    var x = window.MutationObserver || window.WebKitMutationObserver || !1
      , K = {
        zindex: "auto",
        cursoropacitymin: 0,
        cursoropacitymax: 1,
        cursorcolor: "#424242",
        cursorwidth: "6px",
        cursorborder: "1px solid #fff",
        cursorborderradius: "5px",
        scrollspeed: 60,
        mousescrollstep: 24,
        touchbehavior: !1,
        hwacceleration: !0,
        usetransition: !0,
        boxzoom: !1,
        dblclickzoom: !0,
        gesturezoom: !0,
        grabcursorenabled: !0,
        autohidemode: !0,
        background: "",
        iframeautoresize: !0,
        cursorminheight: 32,
        preservenativescrolling: !0,
        railoffset: !1,
        railhoffset: !1,
        bouncescroll: !0,
        spacebarenabled: !0,
        railpadding: {
            top: 0,
            right: 0,
            left: 0,
            bottom: 0
        },
        disableoutline: !0,
        horizrailenabled: !0,
        railalign: "right",
        railvalign: "bottom",
        enabletranslate3d: !0,
        enablemousewheel: !0,
        enablekeyboard: !0,
        smoothscroll: !0,
        sensitiverail: !0,
        enablemouselockapi: !0,
        cursorfixedheight: !1,
        directionlockdeadzone: 6,
        hidecursordelay: 400,
        nativeparentscrolling: !0,
        enablescrollonselection: !0,
        overflowx: !0,
        overflowy: !0,
        cursordragspeed: .3,
        rtlmode: "auto",
        cursordragontouch: !1,
        oneaxismousemode: "auto",
        scriptpath: function() {
            var f = document.getElementsByTagName("script")
              , f = f.length ? f[f.length - 1].src.split("?")[0] : "";
            return 0 < f.split("/").length ? f.split("/").slice(0, -1).join("/") + "/" : ""
        }(),
        preventmultitouchscrolling: !0,
        disablemutationobserver: !1
    }
      , H = !1
      , R = function() {
        if (H)
            return H;
        var f = document.createElement("DIV")
          , c = f.style
          , k = navigator.userAgent
          , l = navigator.platform
          , d = {
            haspointerlock: "pointerLockElement"in document || "webkitPointerLockElement"in document || "mozPointerLockElement"in document
        };
        d.isopera = "opera"in window;
        d.isopera12 = d.isopera && "getUserMedia"in navigator;
        d.isoperamini = "[object OperaMini]" === Object.prototype.toString.call(window.operamini);
        d.isie = "all"in document && "attachEvent"in f && !d.isopera;
        d.isieold = d.isie && !("msInterpolationMode"in c);
        d.isie7 = d.isie && !d.isieold && (!("documentMode"in document) || 7 == document.documentMode);
        d.isie8 = d.isie && "documentMode"in document && 8 == document.documentMode;
        d.isie9 = d.isie && "performance"in window && 9 == document.documentMode;
        d.isie10 = d.isie && "performance"in window && 10 == document.documentMode;
        d.isie11 = "msRequestFullscreen"in f && 11 <= document.documentMode;
        d.isieedge12 = navigator.userAgent.match(/Edge\/12\./);
        d.isieedge = "msOverflowStyle"in f;
        d.ismodernie = d.isie11 || d.isieedge;
        d.isie9mobile = /iemobile.9/i.test(k);
        d.isie9mobile && (d.isie9 = !1);
        d.isie7mobile = !d.isie9mobile && d.isie7 && /iemobile/i.test(k);
        d.ismozilla = "MozAppearance"in c;
        d.iswebkit = "WebkitAppearance"in c;
        d.ischrome = "chrome"in window;
        d.ischrome38 = d.ischrome && "touchAction"in c;
        d.ischrome22 = !d.ischrome38 && d.ischrome && d.haspointerlock;
        d.ischrome26 = !d.ischrome38 && d.ischrome && "transition"in c;
        d.cantouch = "ontouchstart"in document.documentElement || "ontouchstart"in window;
        d.hasw3ctouch = (window.PointerEvent || !1) && (0 < navigator.MaxTouchPoints || 0 < navigator.msMaxTouchPoints);
        d.hasmstouch = !d.hasw3ctouch && (window.MSPointerEvent || !1);
        d.ismac = /^mac$/i.test(l);
        d.isios = d.cantouch && /iphone|ipad|ipod/i.test(l);
        d.isios4 = d.isios && !("seal"in Object);
        d.isios7 = d.isios && "webkitHidden"in document;
        d.isios8 = d.isios && "hidden"in document;
        d.isandroid = /android/i.test(k);
        d.haseventlistener = "addEventListener"in f;
        d.trstyle = !1;
        d.hastransform = !1;
        d.hastranslate3d = !1;
        d.transitionstyle = !1;
        d.hastransition = !1;
        d.transitionend = !1;
        l = ["transform", "msTransform", "webkitTransform", "MozTransform", "OTransform"];
        for (k = 0; k < l.length; k++)
            if (void 0 !== c[l[k]]) {
                d.trstyle = l[k];
                break
            }
        d.hastransform = !!d.trstyle;
        d.hastransform && (c[d.trstyle] = "translate3d(1px,2px,3px)",
        d.hastranslate3d = /translate3d/.test(c[d.trstyle]));
        d.transitionstyle = !1;
        d.prefixstyle = "";
        d.transitionend = !1;
        for (var l = "transition webkitTransition msTransition MozTransition OTransition OTransition KhtmlTransition".split(" "), q = " -webkit- -ms- -moz- -o- -o -khtml-".split(" "), t = "transitionend webkitTransitionEnd msTransitionEnd transitionend otransitionend oTransitionEnd KhtmlTransitionEnd".split(" "), k = 0; k < l.length; k++)
            if (l[k]in c) {
                d.transitionstyle = l[k];
                d.prefixstyle = q[k];
                d.transitionend = t[k];
                break
            }
        d.ischrome26 && (d.prefixstyle = q[1]);
        d.hastransition = d.transitionstyle;
        a: {
            k = ["grab", "-webkit-grab", "-moz-grab"];
            if (d.ischrome && !d.ischrome38 || d.isie)
                k = [];
            for (l = 0; l < k.length; l++)
                if (q = k[l],
                c.cursor = q,
                c.cursor == q) {
                    c = q;
                    break a
                }
            c = "url(//patriciaportfolio.googlecode.com/files/openhand.cur),n-resize"
        }
        d.cursorgrabvalue = c;
        d.hasmousecapture = "setCapture"in f;
        d.hasMutationObserver = !1 !== x;
        return H = d
    }
      , S = function(h, c) {
        function k() {
            var b = a.doc.css(e.trstyle);
            return b && "matrix" == b.substr(0, 6) ? b.replace(/^.*\((.*)\)$/g, "$1").replace(/px/g, "").split(/, +/) : !1
        }
        function l() {
            var b = a.win;
            if ("zIndex"in b)
                return b.zIndex();
            for (; 0 < b.length && 9 != b[0].nodeType; ) {
                var g = b.css("zIndex");
                if (!isNaN(g) && 0 != g)
                    return parseInt(g);
                b = b.parent()
            }
            return !1
        }
        function d(b, g, u) {
            g = b.css(g);
            b = parseFloat(g);
            return isNaN(b) ? (b = z[g] || 0,
            u = 3 == b ? u ? a.win.outerHeight() - a.win.innerHeight() : a.win.outerWidth() - a.win.innerWidth() : 1,
            a.isie8 && b && (b += 1),
            u ? b : 0) : b
        }
        function q(b, g, u, c) {
            a._bind(b, g, function(a) {
                a = a ? a : window.event;
                var c = {
                    original: a,
                    target: a.target || a.srcElement,
                    type: "wheel",
                    deltaMode: "MozMousePixelScroll" == a.type ? 0 : 1,
                    deltaX: 0,
                    deltaZ: 0,
                    preventDefault: function() {
                        a.preventDefault ? a.preventDefault() : a.returnValue = !1;
                        return !1
                    },
                    stopImmediatePropagation: function() {
                        a.stopImmediatePropagation ? a.stopImmediatePropagation() : a.cancelBubble = !0
                    }
                };
                "mousewheel" == g ? (a.wheelDeltaX && (c.deltaX = -.025 * a.wheelDeltaX),
                a.wheelDeltaY && (c.deltaY = -.025 * a.wheelDeltaY),
                c.deltaY || c.deltaX || (c.deltaY = -.025 * a.wheelDelta)) : c.deltaY = a.detail;
                return u.call(b, c)
            }, c)
        }
        function t(b, g, c) {
            var d, e;
            0 == b.deltaMode ? (d = -Math.floor(a.opt.mousescrollstep / 54 * b.deltaX),
            e = -Math.floor(a.opt.mousescrollstep / 54 * b.deltaY)) : 1 == b.deltaMode && (d = -Math.floor(b.deltaX * a.opt.mousescrollstep),
            e = -Math.floor(b.deltaY * a.opt.mousescrollstep));
            g && a.opt.oneaxismousemode && 0 == d && e && (d = e,
            e = 0,
            c && (0 > d ? a.getScrollLeft() >= a.page.maxw : 0 >= a.getScrollLeft()) && (e = d,
            d = 0));
            a.isrtlmode && (d = -d);
            d && (a.scrollmom && a.scrollmom.stop(),
            a.lastdeltax += d,
            a.debounced("mousewheelx", function() {
                var b = a.lastdeltax;
                a.lastdeltax = 0;
                a.rail.drag || a.doScrollLeftBy(b)
            }, 15));
            if (e) {
                if (a.opt.nativeparentscrolling && c && !a.ispage && !a.zoomactive)
                    if (0 > e) {
                        if (a.getScrollTop() >= a.page.maxh)
                            return !0
                    } else if (0 >= a.getScrollTop())
                        return !0;
                a.scrollmom && a.scrollmom.stop();
                a.lastdeltay += e;
                a.synched("mousewheely", function() {
                    var b = a.lastdeltay;
                    a.lastdeltay = 0;
                    a.rail.drag || a.doScrollBy(b)
                }, 15)
            }
            b.stopImmediatePropagation();
            return b.preventDefault()
        }
        var a = this;
        this.version = "3.6.8";
        this.name = "nicescroll";
        this.me = c;
        this.opt = {
            doc: f("body"),
            win: !1
        };
        f.extend(this.opt, K);
        this.opt.snapbackspeed = 80;
        if (h)
            for (var r in a.opt)
                void 0 !== h[r] && (a.opt[r] = h[r]);
        a.opt.disablemutationobserver && (x = !1);
        this.iddoc = (this.doc = a.opt.doc) && this.doc[0] ? this.doc[0].id || "" : "";
        this.ispage = /^BODY|HTML/.test(a.opt.win ? a.opt.win[0].nodeName : this.doc[0].nodeName);
        this.haswrapper = !1 !== a.opt.win;
        this.win = a.opt.win || (this.ispage ? f(window) : this.doc);
        this.docscroll = this.ispage && !this.haswrapper ? f(window) : this.win;
        this.body = f("body");
        this.iframe = this.isfixed = this.viewport = !1;
        this.isiframe = "IFRAME" == this.doc[0].nodeName && "IFRAME" == this.win[0].nodeName;
        this.istextarea = "TEXTAREA" == this.win[0].nodeName;
        this.forcescreen = !1;
        this.canshowonmouseevent = "scroll" != a.opt.autohidemode;
        this.page = this.view = this.onzoomout = this.onzoomin = this.onscrollcancel = this.onscrollend = this.onscrollstart = this.onclick = this.ongesturezoom = this.onkeypress = this.onmousewheel = this.onmousemove = this.onmouseup = this.onmousedown = !1;
        this.scroll = {
            x: 0,
            y: 0
        };
        this.scrollratio = {
            x: 0,
            y: 0
        };
        this.cursorheight = 20;
        this.scrollvaluemax = 0;
        if ("auto" == this.opt.rtlmode) {
            r = this.win[0] == window ? this.body : this.win;
            var p = r.css("writing-mode") || r.css("-webkit-writing-mode") || r.css("-ms-writing-mode") || r.css("-moz-writing-mode");
            "horizontal-tb" == p || "lr-tb" == p || "" == p ? (this.isrtlmode = "rtl" == r.css("direction"),
            this.isvertical = !1) : (this.isrtlmode = "vertical-rl" == p || "tb" == p || "tb-rl" == p || "rl-tb" == p,
            this.isvertical = "vertical-rl" == p || "tb" == p || "tb-rl" == p)
        } else
            this.isrtlmode = !0 === this.opt.rtlmode,
            this.isvertical = !1;
        this.observerbody = this.observerremover = this.observer = this.scrollmom = this.scrollrunning = !1;
        do
            this.id = "ascrail" + P++;
        while (document.getElementById(this.id));
        this.hasmousefocus = this.hasfocus = this.zoomactive = this.zoom = this.selectiondrag = this.cursorfreezed = this.cursor = this.rail = !1;
        this.visibility = !0;
        this.hidden = this.locked = this.railslocked = !1;
        this.cursoractive = !0;
        this.wheelprevented = !1;
        this.overflowx = a.opt.overflowx;
        this.overflowy = a.opt.overflowy;
        this.nativescrollingarea = !1;
        this.checkarea = 0;
        this.events = [];
        this.saved = {};
        this.delaylist = {};
        this.synclist = {};
        this.lastdeltay = this.lastdeltax = 0;
        this.detected = R();
        var e = f.extend({}, this.detected);
        this.ishwscroll = (this.canhwscroll = e.hastransform && a.opt.hwacceleration) && a.haswrapper;
        this.hasreversehr = this.isrtlmode ? this.isvertical ? !(e.iswebkit || e.isie || e.isie11) : !(e.iswebkit || e.isie && !e.isie10 && !e.isie11) : !1;
        this.istouchcapable = !1;
        e.cantouch || !e.hasw3ctouch && !e.hasmstouch ? !e.cantouch || e.isios || e.isandroid || !e.iswebkit && !e.ismozilla || (this.istouchcapable = !0) : this.istouchcapable = !0;
        a.opt.enablemouselockapi || (e.hasmousecapture = !1,
        e.haspointerlock = !1);
        this.debounced = function(b, g, c) {
            a && (a.delaylist[b] || (g.call(a),
            a.delaylist[b] = {
                h: v(function() {
                    a.delaylist[b].fn.call(a);
                    a.delaylist[b] = !1
                }, c)
            }),
            a.delaylist[b].fn = g)
        }
        ;
        var I = !1;
        this.synched = function(b, g) {
            a.synclist[b] = g;
            (function() {
                I || (v(function() {
                    if (a) {
                        I = !1;
                        for (var b in a.synclist) {
                            var g = a.synclist[b];
                            g && g.call(a);
                            a.synclist[b] = !1
                        }
                    }
                }),
                I = !0)
            }
            )();
            return b
        }
        ;
        this.unsynched = function(b) {
            a.synclist[b] && (a.synclist[b] = !1)
        }
        ;
        this.css = function(b, g) {
            for (var c in g)
                a.saved.css.push([b, c, b.css(c)]),
                b.css(c, g[c])
        }
        ;
        this.scrollTop = function(b) {
            return void 0 === b ? a.getScrollTop() : a.setScrollTop(b)
        }
        ;
        this.scrollLeft = function(b) {
            return void 0 === b ? a.getScrollLeft() : a.setScrollLeft(b)
        }
        ;
        var D = function(a, g, c, d, e, f, k) {
            this.st = a;
            this.ed = g;
            this.spd = c;
            this.p1 = d || 0;
            this.p2 = e || 1;
            this.p3 = f || 0;
            this.p4 = k || 1;
            this.ts = (new Date).getTime();
            this.df = this.ed - this.st
        };
        D.prototype = {
            B2: function(a) {
                return 3 * a * a * (1 - a)
            },
            B3: function(a) {
                return 3 * a * (1 - a) * (1 - a)
            },
            B4: function(a) {
                return (1 - a) * (1 - a) * (1 - a)
            },
            getNow: function() {
                var a = 1 - ((new Date).getTime() - this.ts) / this.spd
                  , g = this.B2(a) + this.B3(a) + this.B4(a);
                return 0 > a ? this.ed : this.st + Math.round(this.df * g)
            },
            update: function(a, g) {
                this.st = this.getNow();
                this.ed = a;
                this.spd = g;
                this.ts = (new Date).getTime();
                this.df = this.ed - this.st;
                return this
            }
        };
        if (this.ishwscroll) {
            this.doc.translate = {
                x: 0,
                y: 0,
                tx: "0px",
                ty: "0px"
            };
            e.hastranslate3d && e.isios && this.doc.css("-webkit-backface-visibility", "hidden");
            this.getScrollTop = function(b) {
                if (!b) {
                    if (b = k())
                        return 16 == b.length ? -b[13] : -b[5];
                    if (a.timerscroll && a.timerscroll.bz)
                        return a.timerscroll.bz.getNow()
                }
                return a.doc.translate.y
            }
            ;
            this.getScrollLeft = function(b) {
                if (!b) {
                    if (b = k())
                        return 16 == b.length ? -b[12] : -b[4];
                    if (a.timerscroll && a.timerscroll.bh)
                        return a.timerscroll.bh.getNow()
                }
                return a.doc.translate.x
            }
            ;
            this.notifyScrollEvent = function(a) {
                var g = document.createEvent("UIEvents");
                g.initUIEvent("scroll", !1, !0, window, 1);
                g.niceevent = !0;
                a.dispatchEvent(g)
            }
            ;
            var y = this.isrtlmode ? 1 : -1;
            e.hastranslate3d && a.opt.enabletranslate3d ? (this.setScrollTop = function(b, g) {
                a.doc.translate.y = b;
                a.doc.translate.ty = -1 * b + "px";
                a.doc.css(e.trstyle, "translate3d(" + a.doc.translate.tx + "," + a.doc.translate.ty + ",0px)");
                g || a.notifyScrollEvent(a.win[0])
            }
            ,
            this.setScrollLeft = function(b, g) {
                a.doc.translate.x = b;
                a.doc.translate.tx = b * y + "px";
                a.doc.css(e.trstyle, "translate3d(" + a.doc.translate.tx + "," + a.doc.translate.ty + ",0px)");
                g || a.notifyScrollEvent(a.win[0])
            }
            ) : (this.setScrollTop = function(b, g) {
                a.doc.translate.y = b;
                a.doc.translate.ty = -1 * b + "px";
                a.doc.css(e.trstyle, "translate(" + a.doc.translate.tx + "," + a.doc.translate.ty + ")");
                g || a.notifyScrollEvent(a.win[0])
            }
            ,
            this.setScrollLeft = function(b, g) {
                a.doc.translate.x = b;
                a.doc.translate.tx = b * y + "px";
                a.doc.css(e.trstyle, "translate(" + a.doc.translate.tx + "," + a.doc.translate.ty + ")");
                g || a.notifyScrollEvent(a.win[0])
            }
            )
        } else
            this.getScrollTop = function() {
                return a.docscroll.scrollTop()
            }
            ,
            this.setScrollTop = function(b) {
                return setTimeout(function() {
                    a && a.docscroll.scrollTop(b)
                }, 1)
            }
            ,
            this.getScrollLeft = function() {
                return a.hasreversehr ? a.detected.ismozilla ? a.page.maxw - Math.abs(a.docscroll.scrollLeft()) : a.page.maxw - a.docscroll.scrollLeft() : a.docscroll.scrollLeft()
            }
            ,
            this.setScrollLeft = function(b) {
                return setTimeout(function() {
                    if (a)
                        return a.hasreversehr && (b = a.detected.ismozilla ? -(a.page.maxw - b) : a.page.maxw - b),
                        a.docscroll.scrollLeft(b)
                }, 1)
            }
            ;
        this.getTarget = function(a) {
            return a ? a.target ? a.target : a.srcElement ? a.srcElement : !1 : !1
        }
        ;
        this.hasParent = function(a, g) {
            if (!a)
                return !1;
            for (var c = a.target || a.srcElement || a || !1; c && c.id != g; )
                c = c.parentNode || !1;
            return !1 !== c
        }
        ;
        var z = {
            thin: 1,
            medium: 3,
            thick: 5
        };
        this.getDocumentScrollOffset = function() {
            return {
                top: window.pageYOffset || document.documentElement.scrollTop,
                left: window.pageXOffset || document.documentElement.scrollLeft
            }
        }
        ;
        this.getOffset = function() {
            if (a.isfixed) {
                var b = a.win.offset()
                  , g = a.getDocumentScrollOffset();
                b.top -= g.top;
                b.left -= g.left;
                return b
            }
            b = a.win.offset();
            if (!a.viewport)
                return b;
            g = a.viewport.offset();
            return {
                top: b.top - g.top,
                left: b.left - g.left
            }
        }
        ;
        this.updateScrollBar = function(b) {
            var g, c, e;
            if (a.ishwscroll)
                a.rail.css({
                    height: a.win.innerHeight() - (a.opt.railpadding.top + a.opt.railpadding.bottom)
                }),
                a.railh && a.railh.css({
                    width: a.win.innerWidth() - (a.opt.railpadding.left + a.opt.railpadding.right)
                });
            else {
                var f = a.getOffset();
                g = f.top;
                c = f.left - (a.opt.railpadding.left + a.opt.railpadding.right);
                g += d(a.win, "border-top-width", !0);
                c += a.rail.align ? a.win.outerWidth() - d(a.win, "border-right-width") - a.rail.width : d(a.win, "border-left-width");
                if (e = a.opt.railoffset)
                    e.top && (g += e.top),
                    e.left && (c += e.left);
                a.railslocked || a.rail.css({
                    top: g,
                    left: c,
                    height: (b ? b.h : a.win.innerHeight()) - (a.opt.railpadding.top + a.opt.railpadding.bottom)
                });
                a.zoom && a.zoom.css({
                    top: g + 1,
                    left: 1 == a.rail.align ? c - 20 : c + a.rail.width + 4
                });
                if (a.railh && !a.railslocked) {
                    g = f.top;
                    c = f.left;
                    if (e = a.opt.railhoffset)
                        e.top && (g += e.top),
                        e.left && (c += e.left);
                    b = a.railh.align ? g + d(a.win, "border-top-width", !0) + a.win.innerHeight() - a.railh.height : g + d(a.win, "border-top-width", !0);
                    c += d(a.win, "border-left-width");
                    a.railh.css({
                        top: b - (a.opt.railpadding.top + a.opt.railpadding.bottom),
                        left: c,
                        width: a.railh.width
                    })
                }
            }
        }
        ;
        this.doRailClick = function(b, g, c) {
            var d;
            a.railslocked || (a.cancelEvent(b),
            g ? (g = c ? a.doScrollLeft : a.doScrollTop,
            d = c ? (b.pageX - a.railh.offset().left - a.cursorwidth / 2) * a.scrollratio.x : (b.pageY - a.rail.offset().top - a.cursorheight / 2) * a.scrollratio.y,
            g(d)) : (g = c ? a.doScrollLeftBy : a.doScrollBy,
            d = c ? a.scroll.x : a.scroll.y,
            b = c ? b.pageX - a.railh.offset().left : b.pageY - a.rail.offset().top,
            c = c ? a.view.w : a.view.h,
            g(d >= b ? c : -c)))
        }
        ;
        a.hasanimationframe = v;
        a.hascancelanimationframe = w;
        a.hasanimationframe ? a.hascancelanimationframe || (w = function() {
            a.cancelAnimationFrame = !0
        }
        ) : (v = function(a) {
            return setTimeout(a, 15 - Math.floor(+new Date / 1E3) % 16)
        }
        ,
        w = clearTimeout);
        this.init = function() {
            a.saved.css = [];
            if (e.isie7mobile || e.isoperamini)
                return !0;
            e.hasmstouch && a.css(a.ispage ? f("html") : a.win, {
                _touchaction: "none"
            });
            var b = e.ismodernie || e.isie10 ? {
                "-ms-overflow-style": "none"
            } : {
                "overflow-y": "hidden"
            };
            a.zindex = "auto";
            a.zindex = a.ispage || "auto" != a.opt.zindex ? a.opt.zindex : l() || "auto";
            !a.ispage && "auto" != a.zindex && a.zindex > A && (A = a.zindex);
            a.isie && 0 == a.zindex && "auto" == a.opt.zindex && (a.zindex = "auto");
            if (!a.ispage || !e.cantouch && !e.isieold && !e.isie9mobile) {
                var c = a.docscroll;
                a.ispage && (c = a.haswrapper ? a.win : a.doc);
                e.isie9mobile || a.css(c, b);
                a.ispage && e.isie7 && ("BODY" == a.doc[0].nodeName ? a.css(f("html"), {
                    "overflow-y": "hidden"
                }) : "HTML" == a.doc[0].nodeName && a.css(f("body"), b));
                !e.isios || a.ispage || a.haswrapper || a.css(f("body"), {
                    "-webkit-overflow-scrolling": "touch"
                });
                var d = f(document.createElement("div"));
                d.css({
                    position: "relative",
                    top: 0,
                    "float": "right",
                    width: a.opt.cursorwidth,
                    height: 0,
                    "background-color": a.opt.cursorcolor,
                    border: a.opt.cursorborder,
                    "background-clip": "padding-box",
                    "-webkit-border-radius": a.opt.cursorborderradius,
                    "-moz-border-radius": a.opt.cursorborderradius,
                    "border-radius": a.opt.cursorborderradius
                });
                d.hborder = parseFloat(d.outerHeight() - d.innerHeight());
                d.addClass("nicescroll-cursors");
                a.cursor = d;
                var m = f(document.createElement("div"));
                m.attr("id", a.id);
                m.addClass("nicescroll-rails nicescroll-rails-vr");
                var k, h, p = ["left", "right", "top", "bottom"], L;
                for (L in p)
                    h = p[L],
                    (k = a.opt.railpadding[h]) ? m.css("padding-" + h, k + "px") : a.opt.railpadding[h] = 0;
                m.append(d);
                m.width = Math.max(parseFloat(a.opt.cursorwidth), d.outerWidth());
                m.css({
                    width: m.width + "px",
                    zIndex: a.zindex,
                    background: a.opt.background,
                    cursor: "default"
                });
                m.visibility = !0;
                m.scrollable = !0;
                m.align = "left" == a.opt.railalign ? 0 : 1;
                a.rail = m;
                d = a.rail.drag = !1;
                !a.opt.boxzoom || a.ispage || e.isieold || (d = document.createElement("div"),
                a.bind(d, "click", a.doZoom),
                a.bind(d, "mouseenter", function() {
                    a.zoom.css("opacity", a.opt.cursoropacitymax)
                }),
                a.bind(d, "mouseleave", function() {
                    a.zoom.css("opacity", a.opt.cursoropacitymin)
                }),
                a.zoom = f(d),
                a.zoom.css({
                    cursor: "pointer",
                    zIndex: a.zindex,
                    backgroundImage: "url(" + a.opt.scriptpath + "zoomico.png)",
                    height: 18,
                    width: 18,
                    backgroundPosition: "0px 0px"
                }),
                a.opt.dblclickzoom && a.bind(a.win, "dblclick", a.doZoom),
                e.cantouch && a.opt.gesturezoom && (a.ongesturezoom = function(b) {
                    1.5 < b.scale && a.doZoomIn(b);
                    .8 > b.scale && a.doZoomOut(b);
                    return a.cancelEvent(b)
                }
                ,
                a.bind(a.win, "gestureend", a.ongesturezoom)));
                a.railh = !1;
                var n;
                a.opt.horizrailenabled && (a.css(c, {
                    overflowX: "hidden"
                }),
                d = f(document.createElement("div")),
                d.css({
                    position: "absolute",
                    top: 0,
                    height: a.opt.cursorwidth,
                    width: 0,
                    backgroundColor: a.opt.cursorcolor,
                    border: a.opt.cursorborder,
                    backgroundClip: "padding-box",
                    "-webkit-border-radius": a.opt.cursorborderradius,
                    "-moz-border-radius": a.opt.cursorborderradius,
                    "border-radius": a.opt.cursorborderradius
                }),
                e.isieold && d.css("overflow", "hidden"),
                d.wborder = parseFloat(d.outerWidth() - d.innerWidth()),
                d.addClass("nicescroll-cursors"),
                a.cursorh = d,
                n = f(document.createElement("div")),
                n.attr("id", a.id + "-hr"),
                n.addClass("nicescroll-rails nicescroll-rails-hr"),
                n.height = Math.max(parseFloat(a.opt.cursorwidth), d.outerHeight()),
                n.css({
                    height: n.height + "px",
                    zIndex: a.zindex,
                    background: a.opt.background
                }),
                n.append(d),
                n.visibility = !0,
                n.scrollable = !0,
                n.align = "top" == a.opt.railvalign ? 0 : 1,
                a.railh = n,
                a.railh.drag = !1);
                a.ispage ? (m.css({
                    position: "fixed",
                    top: 0,
                    height: "100%"
                }),
                m.align ? m.css({
                    right: 0
                }) : m.css({
                    left: 0
                }),
                a.body.append(m),
                a.railh && (n.css({
                    position: "fixed",
                    left: 0,
                    width: "100%"
                }),
                n.align ? n.css({
                    bottom: 0
                }) : n.css({
                    top: 0
                }),
                a.body.append(n))) : (a.ishwscroll ? ("static" == a.win.css("position") && a.css(a.win, {
                    position: "relative"
                }),
                c = "HTML" == a.win[0].nodeName ? a.body : a.win,
                f(c).scrollTop(0).scrollLeft(0),
                a.zoom && (a.zoom.css({
                    position: "absolute",
                    top: 1,
                    right: 0,
                    "margin-right": m.width + 4
                }),
                c.append(a.zoom)),
                m.css({
                    position: "absolute",
                    top: 0
                }),
                m.align ? m.css({
                    right: 0
                }) : m.css({
                    left: 0
                }),
                c.append(m),
                n && (n.css({
                    position: "absolute",
                    left: 0,
                    bottom: 0
                }),
                n.align ? n.css({
                    bottom: 0
                }) : n.css({
                    top: 0
                }),
                c.append(n))) : (a.isfixed = "fixed" == a.win.css("position"),
                c = a.isfixed ? "fixed" : "absolute",
                a.isfixed || (a.viewport = a.getViewport(a.win[0])),
                a.viewport && (a.body = a.viewport,
                0 == /fixed|absolute/.test(a.viewport.css("position")) && a.css(a.viewport, {
                    position: "relative"
                })),
                m.css({
                    position: c
                }),
                a.zoom && a.zoom.css({
                    position: c
                }),
                a.updateScrollBar(),
                a.body.append(m),
                a.zoom && a.body.append(a.zoom),
                a.railh && (n.css({
                    position: c
                }),
                a.body.append(n))),
                e.isios && a.css(a.win, {
                    "-webkit-tap-highlight-color": "rgba(0,0,0,0)",
                    "-webkit-touch-callout": "none"
                }),
                e.isie && a.opt.disableoutline && a.win.attr("hideFocus", "true"),
                e.iswebkit && a.opt.disableoutline && a.win.css("outline", "none"));
                !1 === a.opt.autohidemode ? (a.autohidedom = !1,
                a.rail.css({
                    opacity: a.opt.cursoropacitymax
                }),
                a.railh && a.railh.css({
                    opacity: a.opt.cursoropacitymax
                })) : !0 === a.opt.autohidemode || "leave" === a.opt.autohidemode ? (a.autohidedom = f().add(a.rail),
                e.isie8 && (a.autohidedom = a.autohidedom.add(a.cursor)),
                a.railh && (a.autohidedom = a.autohidedom.add(a.railh)),
                a.railh && e.isie8 && (a.autohidedom = a.autohidedom.add(a.cursorh))) : "scroll" == a.opt.autohidemode ? (a.autohidedom = f().add(a.rail),
                a.railh && (a.autohidedom = a.autohidedom.add(a.railh))) : "cursor" == a.opt.autohidemode ? (a.autohidedom = f().add(a.cursor),
                a.railh && (a.autohidedom = a.autohidedom.add(a.cursorh))) : "hidden" == a.opt.autohidemode && (a.autohidedom = !1,
                a.hide(),
                a.railslocked = !1);
                if (e.isie9mobile)
                    a.scrollmom = new M(a),
                    a.onmangotouch = function() {
                        var b = a.getScrollTop()
                          , c = a.getScrollLeft();
                        if (b == a.scrollmom.lastscrolly && c == a.scrollmom.lastscrollx)
                            return !0;
                        var g = b - a.mangotouch.sy
                          , d = c - a.mangotouch.sx;
                        if (0 != Math.round(Math.sqrt(Math.pow(d, 2) + Math.pow(g, 2)))) {
                            var e = 0 > g ? -1 : 1
                              , f = 0 > d ? -1 : 1
                              , u = +new Date;
                            a.mangotouch.lazy && clearTimeout(a.mangotouch.lazy);
                            80 < u - a.mangotouch.tm || a.mangotouch.dry != e || a.mangotouch.drx != f ? (a.scrollmom.stop(),
                            a.scrollmom.reset(c, b),
                            a.mangotouch.sy = b,
                            a.mangotouch.ly = b,
                            a.mangotouch.sx = c,
                            a.mangotouch.lx = c,
                            a.mangotouch.dry = e,
                            a.mangotouch.drx = f,
                            a.mangotouch.tm = u) : (a.scrollmom.stop(),
                            a.scrollmom.update(a.mangotouch.sx - d, a.mangotouch.sy - g),
                            a.mangotouch.tm = u,
                            g = Math.max(Math.abs(a.mangotouch.ly - b), Math.abs(a.mangotouch.lx - c)),
                            a.mangotouch.ly = b,
                            a.mangotouch.lx = c,
                            2 < g && (a.mangotouch.lazy = setTimeout(function() {
                                a.mangotouch.lazy = !1;
                                a.mangotouch.dry = 0;
                                a.mangotouch.drx = 0;
                                a.mangotouch.tm = 0;
                                a.scrollmom.doMomentum(30)
                            }, 100)))
                        }
                    }
                    ,
                    m = a.getScrollTop(),
                    n = a.getScrollLeft(),
                    a.mangotouch = {
                        sy: m,
                        ly: m,
                        dry: 0,
                        sx: n,
                        lx: n,
                        drx: 0,
                        lazy: !1,
                        tm: 0
                    },
                    a.bind(a.docscroll, "scroll", a.onmangotouch);
                else {
                    if (e.cantouch || a.istouchcapable || a.opt.touchbehavior || e.hasmstouch) {
                        a.scrollmom = new M(a);
                        a.ontouchstart = function(b) {
                            if (b.pointerType && 2 != b.pointerType && "touch" != b.pointerType)
                                return !1;
                            a.hasmoving = !1;
                            if (!a.railslocked) {
                                var c;
                                if (e.hasmstouch)
                                    for (c = b.target ? b.target : !1; c; ) {
                                        var g = f(c).getNiceScroll();
                                        if (0 < g.length && g[0].me == a.me)
                                            break;
                                        if (0 < g.length)
                                            return !1;
                                        if ("DIV" == c.nodeName && c.id == a.id)
                                            break;
                                        c = c.parentNode ? c.parentNode : !1
                                    }
                                a.cancelScroll();
                                if ((c = a.getTarget(b)) && /INPUT/i.test(c.nodeName) && /range/i.test(c.type))
                                    return a.stopPropagation(b);
                                !("clientX"in b) && "changedTouches"in b && (b.clientX = b.changedTouches[0].clientX,
                                b.clientY = b.changedTouches[0].clientY);
                                a.forcescreen && (g = b,
                                b = {
                                    original: b.original ? b.original : b
                                },
                                b.clientX = g.screenX,
                                b.clientY = g.screenY);
                                a.rail.drag = {
                                    x: b.clientX,
                                    y: b.clientY,
                                    sx: a.scroll.x,
                                    sy: a.scroll.y,
                                    st: a.getScrollTop(),
                                    sl: a.getScrollLeft(),
                                    pt: 2,
                                    dl: !1
                                };
                                if (a.ispage || !a.opt.directionlockdeadzone)
                                    a.rail.drag.dl = "f";
                                else {
                                    var g = f(window).width()
                                      , d = f(window).height()
                                      , d = Math.max(0, Math.max(document.body.scrollHeight, document.documentElement.scrollHeight) - d)
                                      , g = Math.max(0, Math.max(document.body.scrollWidth, document.documentElement.scrollWidth) - g);
                                    a.rail.drag.ck = !a.rail.scrollable && a.railh.scrollable ? 0 < d ? "v" : !1 : a.rail.scrollable && !a.railh.scrollable ? 0 < g ? "h" : !1 : !1;
                                    a.rail.drag.ck || (a.rail.drag.dl = "f")
                                }
                                a.opt.touchbehavior && a.isiframe && e.isie && (g = a.win.position(),
                                a.rail.drag.x += g.left,
                                a.rail.drag.y += g.top);
                                a.hasmoving = !1;
                                a.lastmouseup = !1;
                                a.scrollmom.reset(b.clientX, b.clientY);
                                if (!e.cantouch && !this.istouchcapable && !b.pointerType) {
                                    if (!c || !/INPUT|SELECT|TEXTAREA/i.test(c.nodeName))
                                        return !a.ispage && e.hasmousecapture && c.setCapture(),
                                        a.opt.touchbehavior ? (c.onclick && !c._onclick && (c._onclick = c.onclick,
                                        c.onclick = function(b) {
                                            if (a.hasmoving)
                                                return !1;
                                            c._onclick.call(this, b)
                                        }
                                        ),
                                        a.cancelEvent(b)) : a.stopPropagation(b);
                                    /SUBMIT|CANCEL|BUTTON/i.test(f(c).attr("type")) && (pc = {
                                        tg: c,
                                        click: !1
                                    },
                                    a.preventclick = pc)
                                }
                            }
                        }
                        ;
                        a.ontouchend = function(b) {
                            if (!a.rail.drag)
                                return !0;
                            if (2 == a.rail.drag.pt) {
                                if (b.pointerType && 2 != b.pointerType && "touch" != b.pointerType)
                                    return !1;
                                a.scrollmom.doMomentum();
                                a.rail.drag = !1;
                                if (a.hasmoving && (a.lastmouseup = !0,
                                a.hideCursor(),
                                e.hasmousecapture && document.releaseCapture(),
                                !e.cantouch))
                                    return a.cancelEvent(b)
                            } else if (1 == a.rail.drag.pt)
                                return a.onmouseup(b)
                        }
                        ;
                        var q = a.opt.touchbehavior && a.isiframe && !e.hasmousecapture;
                        a.ontouchmove = function(b, c) {
                            if (!a.rail.drag || b.targetTouches && a.opt.preventmultitouchscrolling && 1 < b.targetTouches.length || b.pointerType && 2 != b.pointerType && "touch" != b.pointerType)
                                return !1;
                            if (2 == a.rail.drag.pt) {
                                if (e.cantouch && e.isios && void 0 === b.original)
                                    return !0;
                                a.hasmoving = !0;
                                a.preventclick && !a.preventclick.click && (a.preventclick.click = a.preventclick.tg.onclick || !1,
                                a.preventclick.tg.onclick = a.onpreventclick);
                                b = f.extend({
                                    original: b
                                }, b);
                                "changedTouches"in b && (b.clientX = b.changedTouches[0].clientX,
                                b.clientY = b.changedTouches[0].clientY);
                                if (a.forcescreen) {
                                    var g = b;
                                    b = {
                                        original: b.original ? b.original : b
                                    };
                                    b.clientX = g.screenX;
                                    b.clientY = g.screenY
                                }
                                var d, g = d = 0;
                                q && !c && (d = a.win.position(),
                                g = -d.left,
                                d = -d.top);
                                var u = b.clientY + d;
                                d = u - a.rail.drag.y;
                                var m = b.clientX + g
                                  , k = m - a.rail.drag.x
                                  , h = a.rail.drag.st - d;
                                a.ishwscroll && a.opt.bouncescroll ? 0 > h ? h = Math.round(h / 2) : h > a.page.maxh && (h = a.page.maxh + Math.round((h - a.page.maxh) / 2)) : (0 > h && (u = h = 0),
                                h > a.page.maxh && (h = a.page.maxh,
                                u = 0));
                                var l;
                                a.railh && a.railh.scrollable && (l = a.isrtlmode ? k - a.rail.drag.sl : a.rail.drag.sl - k,
                                a.ishwscroll && a.opt.bouncescroll ? 0 > l ? l = Math.round(l / 2) : l > a.page.maxw && (l = a.page.maxw + Math.round((l - a.page.maxw) / 2)) : (0 > l && (m = l = 0),
                                l > a.page.maxw && (l = a.page.maxw,
                                m = 0)));
                                g = !1;
                                if (a.rail.drag.dl)
                                    g = !0,
                                    "v" == a.rail.drag.dl ? l = a.rail.drag.sl : "h" == a.rail.drag.dl && (h = a.rail.drag.st);
                                else {
                                    d = Math.abs(d);
                                    var k = Math.abs(k)
                                      , C = a.opt.directionlockdeadzone;
                                    if ("v" == a.rail.drag.ck) {
                                        if (d > C && k <= .3 * d)
                                            return a.rail.drag = !1,
                                            !0;
                                        k > C && (a.rail.drag.dl = "f",
                                        f("body").scrollTop(f("body").scrollTop()))
                                    } else if ("h" == a.rail.drag.ck) {
                                        if (k > C && d <= .3 * k)
                                            return a.rail.drag = !1,
                                            !0;
                                        d > C && (a.rail.drag.dl = "f",
                                        f("body").scrollLeft(f("body").scrollLeft()))
                                    }
                                }
                                a.synched("touchmove", function() {
                                    a.rail.drag && 2 == a.rail.drag.pt && (a.prepareTransition && a.prepareTransition(0),
                                    a.rail.scrollable && a.setScrollTop(h),
                                    a.scrollmom.update(m, u),
                                    a.railh && a.railh.scrollable ? (a.setScrollLeft(l),
                                    a.showCursor(h, l)) : a.showCursor(h),
                                    e.isie10 && document.selection.clear())
                                });
                                e.ischrome && a.istouchcapable && (g = !1);
                                if (g)
                                    return a.cancelEvent(b)
                            } else if (1 == a.rail.drag.pt)
                                return a.onmousemove(b)
                        }
                    }
                    a.onmousedown = function(b, c) {
                        if (!a.rail.drag || 1 == a.rail.drag.pt) {
                            if (a.railslocked)
                                return a.cancelEvent(b);
                            a.cancelScroll();
                            a.rail.drag = {
                                x: b.clientX,
                                y: b.clientY,
                                sx: a.scroll.x,
                                sy: a.scroll.y,
                                pt: 1,
                                hr: !!c
                            };
                            var g = a.getTarget(b);
                            !a.ispage && e.hasmousecapture && g.setCapture();
                            a.isiframe && !e.hasmousecapture && (a.saved.csspointerevents = a.doc.css("pointer-events"),
                            a.css(a.doc, {
                                "pointer-events": "none"
                            }));
                            a.hasmoving = !1;
                            return a.cancelEvent(b)
                        }
                    }
                    ;
                    a.onmouseup = function(b) {
                        if (a.rail.drag) {
                            if (1 != a.rail.drag.pt)
                                return !0;
                            e.hasmousecapture && document.releaseCapture();
                            a.isiframe && !e.hasmousecapture && a.doc.css("pointer-events", a.saved.csspointerevents);
                            a.rail.drag = !1;
                            a.hasmoving && a.triggerScrollEnd();
                            return a.cancelEvent(b)
                        }
                    }
                    ;
                    a.onmousemove = function(b) {
                        if (a.rail.drag) {
                            if (1 == a.rail.drag.pt) {
                                if (e.ischrome && 0 == b.which)
                                    return a.onmouseup(b);
                                a.cursorfreezed = !0;
                                a.hasmoving = !0;
                                if (a.rail.drag.hr) {
                                    a.scroll.x = a.rail.drag.sx + (b.clientX - a.rail.drag.x);
                                    0 > a.scroll.x && (a.scroll.x = 0);
                                    var c = a.scrollvaluemaxw;
                                    a.scroll.x > c && (a.scroll.x = c)
                                } else
                                    a.scroll.y = a.rail.drag.sy + (b.clientY - a.rail.drag.y),
                                    0 > a.scroll.y && (a.scroll.y = 0),
                                    c = a.scrollvaluemax,
                                    a.scroll.y > c && (a.scroll.y = c);
                                a.synched("mousemove", function() {
                                    a.rail.drag && 1 == a.rail.drag.pt && (a.showCursor(),
                                    a.rail.drag.hr ? a.hasreversehr ? a.doScrollLeft(a.scrollvaluemaxw - Math.round(a.scroll.x * a.scrollratio.x), a.opt.cursordragspeed) : a.doScrollLeft(Math.round(a.scroll.x * a.scrollratio.x), a.opt.cursordragspeed) : a.doScrollTop(Math.round(a.scroll.y * a.scrollratio.y), a.opt.cursordragspeed))
                                });
                                return a.cancelEvent(b)
                            }
                        } else
                            a.checkarea = 0
                    }
                    ;
                    if (e.cantouch || a.opt.touchbehavior)
                        a.onpreventclick = function(b) {
                            if (a.preventclick)
                                return a.preventclick.tg.onclick = a.preventclick.click,
                                a.preventclick = !1,
                                a.cancelEvent(b)
                        }
                        ,
                        a.bind(a.win, "mousedown", a.ontouchstart),
                        a.onclick = e.isios ? !1 : function(b) {
                            return a.lastmouseup ? (a.lastmouseup = !1,
                            a.cancelEvent(b)) : !0
                        }
                        ,
                        a.opt.grabcursorenabled && e.cursorgrabvalue && (a.css(a.ispage ? a.doc : a.win, {
                            cursor: e.cursorgrabvalue
                        }),
                        a.css(a.rail, {
                            cursor: e.cursorgrabvalue
                        }));
                    else {
                        var r = function(b) {
                            if (a.selectiondrag) {
                                if (b) {
                                    var c = a.win.outerHeight();
                                    b = b.pageY - a.selectiondrag.top;
                                    0 < b && b < c && (b = 0);
                                    b >= c && (b -= c);
                                    a.selectiondrag.df = b
                                }
                                0 != a.selectiondrag.df && (a.doScrollBy(2 * -Math.floor(a.selectiondrag.df / 6)),
                                a.debounced("doselectionscroll", function() {
                                    r()
                                }, 50))
                            }
                        };
                        a.hasTextSelected = "getSelection"in document ? function() {
                            return 0 < document.getSelection().rangeCount
                        }
                        : "selection"in document ? function() {
                            return "None" != document.selection.type
                        }
                        : function() {
                            return !1
                        }
                        ;
                        a.onselectionstart = function(b) {
                            a.ispage || (a.selectiondrag = a.win.offset())
                        }
                        ;
                        a.onselectionend = function(b) {
                            a.selectiondrag = !1
                        }
                        ;
                        a.onselectiondrag = function(b) {
                            a.selectiondrag && a.hasTextSelected() && a.debounced("selectionscroll", function() {
                                r(b)
                            }, 250)
                        }
                    }
                    e.hasw3ctouch ? (a.css(a.rail, {
                        "touch-action": "none"
                    }),
                    a.css(a.cursor, {
                        "touch-action": "none"
                    }),
                    a.bind(a.win, "pointerdown", a.ontouchstart),
                    a.bind(document, "pointerup", a.ontouchend),
                    a.bind(document, "pointermove", a.ontouchmove)) : e.hasmstouch ? (a.css(a.rail, {
                        "-ms-touch-action": "none"
                    }),
                    a.css(a.cursor, {
                        "-ms-touch-action": "none"
                    }),
                    a.bind(a.win, "MSPointerDown", a.ontouchstart),
                    a.bind(document, "MSPointerUp", a.ontouchend),
                    a.bind(document, "MSPointerMove", a.ontouchmove),
                    a.bind(a.cursor, "MSGestureHold", function(a) {
                        a.preventDefault()
                    }),
                    a.bind(a.cursor, "contextmenu", function(a) {
                        a.preventDefault()
                    })) : this.istouchcapable && (a.bind(a.win, "touchstart", a.ontouchstart),
                    a.bind(document, "touchend", a.ontouchend),
                    a.bind(document, "touchcancel", a.ontouchend),
                    a.bind(document, "touchmove", a.ontouchmove));
                    if (a.opt.cursordragontouch || !e.cantouch && !a.opt.touchbehavior)
                        a.rail.css({
                            cursor: "default"
                        }),
                        a.railh && a.railh.css({
                            cursor: "default"
                        }),
                        a.jqbind(a.rail, "mouseenter", function() {
                            if (!a.ispage && !a.win.is(":visible"))
                                return !1;
                            a.canshowonmouseevent && a.showCursor();
                            a.rail.active = !0
                        }),
                        a.jqbind(a.rail, "mouseleave", function() {
                            a.rail.active = !1;
                            a.rail.drag || a.hideCursor()
                        }),
                        a.opt.sensitiverail && (a.bind(a.rail, "click", function(b) {
                            a.doRailClick(b, !1, !1)
                        }),
                        a.bind(a.rail, "dblclick", function(b) {
                            a.doRailClick(b, !0, !1)
                        }),
                        a.bind(a.cursor, "click", function(b) {
                            a.cancelEvent(b)
                        }),
                        a.bind(a.cursor, "dblclick", function(b) {
                            a.cancelEvent(b)
                        })),
                        a.railh && (a.jqbind(a.railh, "mouseenter", function() {
                            if (!a.ispage && !a.win.is(":visible"))
                                return !1;
                            a.canshowonmouseevent && a.showCursor();
                            a.rail.active = !0
                        }),
                        a.jqbind(a.railh, "mouseleave", function() {
                            a.rail.active = !1;
                            a.rail.drag || a.hideCursor()
                        }),
                        a.opt.sensitiverail && (a.bind(a.railh, "click", function(b) {
                            a.doRailClick(b, !1, !0)
                        }),
                        a.bind(a.railh, "dblclick", function(b) {
                            a.doRailClick(b, !0, !0)
                        }),
                        a.bind(a.cursorh, "click", function(b) {
                            a.cancelEvent(b)
                        }),
                        a.bind(a.cursorh, "dblclick", function(b) {
                            a.cancelEvent(b)
                        })));
                    e.cantouch || a.opt.touchbehavior ? (a.bind(e.hasmousecapture ? a.win : document, "mouseup", a.ontouchend),
                    a.bind(document, "mousemove", a.ontouchmove),
                    a.onclick && a.bind(document, "click", a.onclick),
                    a.opt.cursordragontouch ? (a.bind(a.cursor, "mousedown", a.onmousedown),
                    a.bind(a.cursor, "mouseup", a.onmouseup),
                    a.cursorh && a.bind(a.cursorh, "mousedown", function(b) {
                        a.onmousedown(b, !0)
                    }),
                    a.cursorh && a.bind(a.cursorh, "mouseup", a.onmouseup)) : (a.bind(a.rail, "mousedown", function(a) {
                        a.preventDefault()
                    }),
                    a.railh && a.bind(a.railh, "mousedown", function(a) {
                        a.preventDefault()
                    }))) : (a.bind(e.hasmousecapture ? a.win : document, "mouseup", a.onmouseup),
                    a.bind(document, "mousemove", a.onmousemove),
                    a.onclick && a.bind(document, "click", a.onclick),
                    a.bind(a.cursor, "mousedown", a.onmousedown),
                    a.bind(a.cursor, "mouseup", a.onmouseup),
                    a.railh && (a.bind(a.cursorh, "mousedown", function(b) {
                        a.onmousedown(b, !0)
                    }),
                    a.bind(a.cursorh, "mouseup", a.onmouseup)),
                    !a.ispage && a.opt.enablescrollonselection && (a.bind(a.win[0], "mousedown", a.onselectionstart),
                    a.bind(document, "mouseup", a.onselectionend),
                    a.bind(a.cursor, "mouseup", a.onselectionend),
                    a.cursorh && a.bind(a.cursorh, "mouseup", a.onselectionend),
                    a.bind(document, "mousemove", a.onselectiondrag)),
                    a.zoom && (a.jqbind(a.zoom, "mouseenter", function() {
                        a.canshowonmouseevent && a.showCursor();
                        a.rail.active = !0
                    }),
                    a.jqbind(a.zoom, "mouseleave", function() {
                        a.rail.active = !1;
                        a.rail.drag || a.hideCursor()
                    })));
                    a.opt.enablemousewheel && (a.isiframe || a.mousewheel(e.isie && a.ispage ? document : a.win, a.onmousewheel),
                    a.mousewheel(a.rail, a.onmousewheel),
                    a.railh && a.mousewheel(a.railh, a.onmousewheelhr));
                    a.ispage || e.cantouch || /HTML|^BODY/.test(a.win[0].nodeName) || (a.win.attr("tabindex") || a.win.attr({
                        tabindex: O++
                    }),
                    a.jqbind(a.win, "focus", function(b) {
                        B = a.getTarget(b).id || !0;
                        a.hasfocus = !0;
                        a.canshowonmouseevent && a.noticeCursor()
                    }),
                    a.jqbind(a.win, "blur", function(b) {
                        B = !1;
                        a.hasfocus = !1
                    }),
                    a.jqbind(a.win, "mouseenter", function(b) {
                        F = a.getTarget(b).id || !0;
                        a.hasmousefocus = !0;
                        a.canshowonmouseevent && a.noticeCursor()
                    }),
                    a.jqbind(a.win, "mouseleave", function() {
                        F = !1;
                        a.hasmousefocus = !1;
                        a.rail.drag || a.hideCursor()
                    }))
                }
                a.onkeypress = function(b) {
                    if (a.railslocked && 0 == a.page.maxh)
                        return !0;
                    b = b ? b : window.e;
                    var c = a.getTarget(b);
                    if (c && /INPUT|TEXTAREA|SELECT|OPTION/.test(c.nodeName) && (!c.getAttribute("type") && !c.type || !/submit|button|cancel/i.tp) || f(c).attr("contenteditable"))
                        return !0;
                    if (a.hasfocus || a.hasmousefocus && !B || a.ispage && !B && !F) {
                        c = b.keyCode;
                        if (a.railslocked && 27 != c)
                            return a.cancelEvent(b);
                        var g = b.ctrlKey || !1
                          , d = b.shiftKey || !1
                          , e = !1;
                        switch (c) {
                        case 38:
                        case 63233:
                            a.doScrollBy(72);
                            e = !0;
                            break;
                        case 40:
                        case 63235:
                            a.doScrollBy(-72);
                            e = !0;
                            break;
                        case 37:
                        case 63232:
                            a.railh && (g ? a.doScrollLeft(0) : a.doScrollLeftBy(72),
                            e = !0);
                            break;
                        case 39:
                        case 63234:
                            a.railh && (g ? a.doScrollLeft(a.page.maxw) : a.doScrollLeftBy(-72),
                            e = !0);
                            break;
                        case 33:
                        case 63276:
                            a.doScrollBy(a.view.h);
                            e = !0;
                            break;
                        case 34:
                        case 63277:
                            a.doScrollBy(-a.view.h);
                            e = !0;
                            break;
                        case 36:
                        case 63273:
                            a.railh && g ? a.doScrollPos(0, 0) : a.doScrollTo(0);
                            e = !0;
                            break;
                        case 35:
                        case 63275:
                            a.railh && g ? a.doScrollPos(a.page.maxw, a.page.maxh) : a.doScrollTo(a.page.maxh);
                            e = !0;
                            break;
                        case 32:
                            a.opt.spacebarenabled && (d ? a.doScrollBy(a.view.h) : a.doScrollBy(-a.view.h),
                            e = !0);
                            break;
                        case 27:
                            a.zoomactive && (a.doZoom(),
                            e = !0)
                        }
                        if (e)
                            return a.cancelEvent(b)
                    }
                }
                ;
                a.opt.enablekeyboard && a.bind(document, e.isopera && !e.isopera12 ? "keypress" : "keydown", a.onkeypress);
                a.bind(document, "keydown", function(b) {
                    b.ctrlKey && (a.wheelprevented = !0)
                });
                a.bind(document, "keyup", function(b) {
                    b.ctrlKey || (a.wheelprevented = !1)
                });
                a.bind(window, "blur", function(b) {
                    a.wheelprevented = !1
                });
                a.bind(window, "resize", a.lazyResize);
                a.bind(window, "orientationchange", a.lazyResize);
                a.bind(window, "load", a.lazyResize);
                if (e.ischrome && !a.ispage && !a.haswrapper) {
                    var t = a.win.attr("style")
                      , m = parseFloat(a.win.css("width")) + 1;
                    a.win.css("width", m);
                    a.synched("chromefix", function() {
                        a.win.attr("style", t)
                    })
                }
                a.onAttributeChange = function(b) {
                    a.lazyResize(a.isieold ? 250 : 30)
                }
                ;
                a.isie11 || !1 === x || (a.observerbody = new x(function(b) {
                    b.forEach(function(b) {
                        if ("attributes" == b.type)
                            return f("body").hasClass("modal-open") && f("body").hasClass("modal-dialog") && !f.contains(f(".modal-dialog")[0], a.doc[0]) ? a.hide() : a.show()
                    });
                    if (document.body.scrollHeight != a.page.maxh)
                        return a.lazyResize(30)
                }
                ),
                a.observerbody.observe(document.body, {
                    childList: !0,
                    subtree: !0,
                    characterData: !1,
                    attributes: !0,
                    attributeFilter: ["class"]
                }));
                a.ispage || a.haswrapper || (!1 !== x ? (a.observer = new x(function(b) {
                    b.forEach(a.onAttributeChange)
                }
                ),
                a.observer.observe(a.win[0], {
                    childList: !0,
                    characterData: !1,
                    attributes: !0,
                    subtree: !1
                }),
                a.observerremover = new x(function(b) {
                    b.forEach(function(b) {
                        if (0 < b.removedNodes.length)
                            for (var c in b.removedNodes)
                                if (a && b.removedNodes[c] == a.win[0])
                                    return a.remove()
                    })
                }
                ),
                a.observerremover.observe(a.win[0].parentNode, {
                    childList: !0,
                    characterData: !1,
                    attributes: !1,
                    subtree: !1
                })) : (a.bind(a.win, e.isie && !e.isie9 ? "propertychange" : "DOMAttrModified", a.onAttributeChange),
                e.isie9 && a.win[0].attachEvent("onpropertychange", a.onAttributeChange),
                a.bind(a.win, "DOMNodeRemoved", function(b) {
                    b.target == a.win[0] && a.remove()
                })));
                !a.ispage && a.opt.boxzoom && a.bind(window, "resize", a.resizeZoom);
                a.istextarea && (a.bind(a.win, "keydown", a.lazyResize),
                a.bind(a.win, "mouseup", a.lazyResize));
                a.lazyResize(30)
            }
            if ("IFRAME" == this.doc[0].nodeName) {
                var N = function() {
                    a.iframexd = !1;
                    var c;
                    try {
                        c = "contentDocument"in this ? this.contentDocument : this.contentWindow.document
                    } catch (g) {
                        a.iframexd = !0,
                        c = !1
                    }
                    if (a.iframexd)
                        return "console"in window && console.log("NiceScroll error: policy restriced iframe"),
                        !0;
                    a.forcescreen = !0;
                    a.isiframe && (a.iframe = {
                        doc: f(c),
                        html: a.doc.contents().find("html")[0],
                        body: a.doc.contents().find("body")[0]
                    },
                    a.getContentSize = function() {
                        return {
                            w: Math.max(a.iframe.html.scrollWidth, a.iframe.body.scrollWidth),
                            h: Math.max(a.iframe.html.scrollHeight, a.iframe.body.scrollHeight)
                        }
                    }
                    ,
                    a.docscroll = f(a.iframe.body));
                    if (!e.isios && a.opt.iframeautoresize && !a.isiframe) {
                        a.win.scrollTop(0);
                        a.doc.height("");
                        var d = Math.max(c.getElementsByTagName("html")[0].scrollHeight, c.body.scrollHeight);
                        a.doc.height(d)
                    }
                    a.lazyResize(30);
                    e.isie7 && a.css(f(a.iframe.html), b);
                    a.css(f(a.iframe.body), b);
                    e.isios && a.haswrapper && a.css(f(c.body), {
                        "-webkit-transform": "translate3d(0,0,0)"
                    });
                    "contentWindow"in this ? a.bind(this.contentWindow, "scroll", a.onscroll) : a.bind(c, "scroll", a.onscroll);
                    a.opt.enablemousewheel && a.mousewheel(c, a.onmousewheel);
                    a.opt.enablekeyboard && a.bind(c, e.isopera ? "keypress" : "keydown", a.onkeypress);
                    if (e.cantouch || a.opt.touchbehavior)
                        a.bind(c, "mousedown", a.ontouchstart),
                        a.bind(c, "mousemove", function(b) {
                            return a.ontouchmove(b, !0)
                        }),
                        a.opt.grabcursorenabled && e.cursorgrabvalue && a.css(f(c.body), {
                            cursor: e.cursorgrabvalue
                        });
                    a.bind(c, "mouseup", a.ontouchend);
                    a.zoom && (a.opt.dblclickzoom && a.bind(c, "dblclick", a.doZoom),
                    a.ongesturezoom && a.bind(c, "gestureend", a.ongesturezoom))
                };
                this.doc[0].readyState && "complete" == this.doc[0].readyState && setTimeout(function() {
                    N.call(a.doc[0], !1)
                }, 500);
                a.bind(this.doc, "load", N)
            }
        }
        ;
        this.showCursor = function(b, c) {
            a.cursortimeout && (clearTimeout(a.cursortimeout),
            a.cursortimeout = 0);
            if (a.rail) {
                a.autohidedom && (a.autohidedom.stop().css({
                    opacity: a.opt.cursoropacitymax
                }),
                a.cursoractive = !0);
                a.rail.drag && 1 == a.rail.drag.pt || (void 0 !== b && !1 !== b && (a.scroll.y = Math.round(1 * b / a.scrollratio.y)),
                void 0 !== c && (a.scroll.x = Math.round(1 * c / a.scrollratio.x)));
                a.cursor.css({
                    height: a.cursorheight,
                    top: a.scroll.y
                });
                if (a.cursorh) {
                    var d = a.hasreversehr ? a.scrollvaluemaxw - a.scroll.x : a.scroll.x;
                    !a.rail.align && a.rail.visibility ? a.cursorh.css({
                        width: a.cursorwidth,
                        left: d + a.rail.width
                    }) : a.cursorh.css({
                        width: a.cursorwidth,
                        left: d
                    });
                    a.cursoractive = !0
                }
                a.zoom && a.zoom.stop().css({
                    opacity: a.opt.cursoropacitymax
                })
            }
        }
        ;
        this.hideCursor = function(b) {
            a.cursortimeout || !a.rail || !a.autohidedom || a.hasmousefocus && "leave" == a.opt.autohidemode || (a.cursortimeout = setTimeout(function() {
                a.rail.active && a.showonmouseevent || (a.autohidedom.stop().animate({
                    opacity: a.opt.cursoropacitymin
                }),
                a.zoom && a.zoom.stop().animate({
                    opacity: a.opt.cursoropacitymin
                }),
                a.cursoractive = !1);
                a.cursortimeout = 0
            }, b || a.opt.hidecursordelay))
        }
        ;
        this.noticeCursor = function(b, c, d) {
            a.showCursor(c, d);
            a.rail.active || a.hideCursor(b)
        }
        ;
        this.getContentSize = a.ispage ? function() {
            return {
                w: Math.max(document.body.scrollWidth, document.documentElement.scrollWidth),
                h: Math.max(document.body.scrollHeight, document.documentElement.scrollHeight)
            }
        }
        : a.haswrapper ? function() {
            return {
                w: a.doc.outerWidth() + parseInt(a.win.css("paddingLeft")) + parseInt(a.win.css("paddingRight")),
                h: a.doc.outerHeight() + parseInt(a.win.css("paddingTop")) + parseInt(a.win.css("paddingBottom"))
            }
        }
        : function() {
            return {
                w: a.docscroll[0].scrollWidth,
                h: a.docscroll[0].scrollHeight
            }
        }
        ;
        this.onResize = function(b, c) {
            if (!a || !a.win)
                return !1;
            if (!a.haswrapper && !a.ispage) {
                if ("none" == a.win.css("display"))
                    return a.visibility && a.hideRail().hideRailHr(),
                    !1;
                a.hidden || a.visibility || a.showRail().showRailHr()
            }
            var d = a.page.maxh
              , e = a.page.maxw
              , f = a.view.h
              , k = a.view.w;
            a.view = {
                w: a.ispage ? a.win.width() : parseInt(a.win[0].clientWidth),
                h: a.ispage ? a.win.height() : parseInt(a.win[0].clientHeight)
            };
            a.page = c ? c : a.getContentSize();
            a.page.maxh = Math.max(0, a.page.h - a.view.h);
            a.page.maxw = Math.max(0, a.page.w - a.view.w);
            if (a.page.maxh == d && a.page.maxw == e && a.view.w == k && a.view.h == f) {
                if (a.ispage)
                    return a;
                d = a.win.offset();
                if (a.lastposition && (e = a.lastposition,
                e.top == d.top && e.left == d.left))
                    return a;
                a.lastposition = d
            }
            0 == a.page.maxh ? (a.hideRail(),
            a.scrollvaluemax = 0,
            a.scroll.y = 0,
            a.scrollratio.y = 0,
            a.cursorheight = 0,
            a.setScrollTop(0),
            a.rail && (a.rail.scrollable = !1)) : (a.page.maxh -= a.opt.railpadding.top + a.opt.railpadding.bottom,
            a.rail.scrollable = !0);
            0 == a.page.maxw ? (a.hideRailHr(),
            a.scrollvaluemaxw = 0,
            a.scroll.x = 0,
            a.scrollratio.x = 0,
            a.cursorwidth = 0,
            a.setScrollLeft(0),
            a.railh && (a.railh.scrollable = !1)) : (a.page.maxw -= a.opt.railpadding.left + a.opt.railpadding.right,
            a.railh && (a.railh.scrollable = a.opt.horizrailenabled));
            a.railslocked = a.locked || 0 == a.page.maxh && 0 == a.page.maxw;
            if (a.railslocked)
                return a.ispage || a.updateScrollBar(a.view),
                !1;
            a.hidden || a.visibility ? !a.railh || a.hidden || a.railh.visibility || a.showRailHr() : a.showRail().showRailHr();
            a.istextarea && a.win.css("resize") && "none" != a.win.css("resize") && (a.view.h -= 20);
            a.cursorheight = Math.min(a.view.h, Math.round(a.view.h / a.page.h * a.view.h));
            a.cursorheight = a.opt.cursorfixedheight ? a.opt.cursorfixedheight : Math.max(a.opt.cursorminheight, a.cursorheight);
            a.cursorwidth = Math.min(a.view.w, Math.round(a.view.w / a.page.w * a.view.w));
            a.cursorwidth = a.opt.cursorfixedheight ? a.opt.cursorfixedheight : Math.max(a.opt.cursorminheight, a.cursorwidth);
            a.scrollvaluemax = a.view.h - a.cursorheight - a.cursor.hborder - (a.opt.railpadding.top + a.opt.railpadding.bottom);
            a.railh && (a.railh.width = 0 < a.page.maxh ? a.view.w - a.rail.width : a.view.w,
            a.scrollvaluemaxw = a.railh.width - a.cursorwidth - a.cursorh.wborder - (a.opt.railpadding.left + a.opt.railpadding.right));
            a.ispage || a.updateScrollBar(a.view);
            a.scrollratio = {
                x: a.page.maxw / a.scrollvaluemaxw,
                y: a.page.maxh / a.scrollvaluemax
            };
            a.getScrollTop() > a.page.maxh ? a.doScrollTop(a.page.maxh) : (a.scroll.y = Math.round(a.getScrollTop() * (1 / a.scrollratio.y)),
            a.scroll.x = Math.round(a.getScrollLeft() * (1 / a.scrollratio.x)),
            a.cursoractive && a.noticeCursor());
            a.scroll.y && 0 == a.getScrollTop() && a.doScrollTo(Math.floor(a.scroll.y * a.scrollratio.y));
            return a
        }
        ;
        this.resize = a.onResize;
        this.hlazyresize = 0;
        this.lazyResize = function(b) {
            a.haswrapper || a.hide();
            a.hlazyresize && clearTimeout(a.hlazyresize);
            a.hlazyresize = setTimeout(function() {
                a && a.show().resize()
            }, 240);
            return a
        }
        ;
        this.jqbind = function(b, c, d) {
            a.events.push({
                e: b,
                n: c,
                f: d,
                q: !0
            });
            f(b).bind(c, d)
        }
        ;
        this.mousewheel = function(b, c, d) {
            b = "jquery"in b ? b[0] : b;
            if ("onwheel"in document.createElement("div"))
                a._bind(b, "wheel", c, d || !1);
            else {
                var e = void 0 !== document.onmousewheel ? "mousewheel" : "DOMMouseScroll";
                q(b, e, c, d || !1);
                "DOMMouseScroll" == e && q(b, "MozMousePixelScroll", c, d || !1)
            }
        }
        ;
        e.haseventlistener ? (this.bind = function(b, c, d, e) {
            a._bind("jquery"in b ? b[0] : b, c, d, e || !1)
        }
        ,
        this._bind = function(b, c, d, e) {
            a.events.push({
                e: b,
                n: c,
                f: d,
                b: e,
                q: !1
            });
            b.addEventListener(c, d, e || !1)
        }
        ,
        this.cancelEvent = function(a) {
            if (!a)
                return !1;
            a = a.original ? a.original : a;
            a.cancelable && a.preventDefault();
            a.stopPropagation();
            a.preventManipulation && a.preventManipulation();
            return !1
        }
        ,
        this.stopPropagation = function(a) {
            if (!a)
                return !1;
            a = a.original ? a.original : a;
            a.stopPropagation();
            return !1
        }
        ,
        this._unbind = function(a, c, d, e) {
            a.removeEventListener(c, d, e)
        }
        ) : (this.bind = function(b, c, d, e) {
            var f = "jquery"in b ? b[0] : b;
            a._bind(f, c, function(b) {
                (b = b || window.event || !1) && b.srcElement && (b.target = b.srcElement);
                "pageY"in b || (b.pageX = b.clientX + document.documentElement.scrollLeft,
                b.pageY = b.clientY + document.documentElement.scrollTop);
                return !1 === d.call(f, b) || !1 === e ? a.cancelEvent(b) : !0
            })
        }
        ,
        this._bind = function(b, c, d, e) {
            a.events.push({
                e: b,
                n: c,
                f: d,
                b: e,
                q: !1
            });
            b.attachEvent ? b.attachEvent("on" + c, d) : b["on" + c] = d
        }
        ,
        this.cancelEvent = function(a) {
            a = window.event || !1;
            if (!a)
                return !1;
            a.cancelBubble = !0;
            a.cancel = !0;
            return a.returnValue = !1
        }
        ,
        this.stopPropagation = function(a) {
            a = window.event || !1;
            if (!a)
                return !1;
            a.cancelBubble = !0;
            return !1
        }
        ,
        this._unbind = function(a, c, d, e) {
            a.detachEvent ? a.detachEvent("on" + c, d) : a["on" + c] = !1
        }
        );
        this.unbindAll = function() {
            for (var b = 0; b < a.events.length; b++) {
                var c = a.events[b];
                c.q ? c.e.unbind(c.n, c.f) : a._unbind(c.e, c.n, c.f, c.b)
            }
        }
        ;
        this.showRail = function() {
            0 == a.page.maxh || !a.ispage && "none" == a.win.css("display") || (a.visibility = !0,
            a.rail.visibility = !0,
            a.rail.css("display", "block"));
            return a
        }
        ;
        this.showRailHr = function() {
            if (!a.railh)
                return a;
            0 == a.page.maxw || !a.ispage && "none" == a.win.css("display") || (a.railh.visibility = !0,
            a.railh.css("display", "block"));
            return a
        }
        ;
        this.hideRail = function() {
            a.visibility = !1;
            a.rail.visibility = !1;
            a.rail.css("display", "none");
            return a
        }
        ;
        this.hideRailHr = function() {
            if (!a.railh)
                return a;
            a.railh.visibility = !1;
            a.railh.css("display", "none");
            return a
        }
        ;
        this.show = function() {
            a.hidden = !1;
            a.railslocked = !1;
            return a.showRail().showRailHr()
        }
        ;
        this.hide = function() {
            a.hidden = !0;
            a.railslocked = !0;
            return a.hideRail().hideRailHr()
        }
        ;
        this.toggle = function() {
            return a.hidden ? a.show() : a.hide()
        }
        ;
        this.remove = function() {
            a.stop();
            a.cursortimeout && clearTimeout(a.cursortimeout);
            for (var b in a.delaylist)
                a.delaylist[b] && w(a.delaylist[b].h);
            a.doZoomOut();
            a.unbindAll();
            e.isie9 && a.win[0].detachEvent("onpropertychange", a.onAttributeChange);
            !1 !== a.observer && a.observer.disconnect();
            !1 !== a.observerremover && a.observerremover.disconnect();
            !1 !== a.observerbody && a.observerbody.disconnect();
            a.events = null;
            a.cursor && a.cursor.remove();
            a.cursorh && a.cursorh.remove();
            a.rail && a.rail.remove();
            a.railh && a.railh.remove();
            a.zoom && a.zoom.remove();
            for (b = 0; b < a.saved.css.length; b++) {
                var c = a.saved.css[b];
                c[0].css(c[1], void 0 === c[2] ? "" : c[2])
            }
            a.saved = !1;
            a.me.data("__nicescroll", "");
            var d = f.nicescroll;
            d.each(function(b) {
                if (this && this.id === a.id) {
                    delete d[b];
                    for (var c = ++b; c < d.length; c++,
                    b++)
                        d[b] = d[c];
                    d.length--;
                    d.length && delete d[d.length]
                }
            });
            for (var k in a)
                a[k] = null,
                delete a[k];
            a = null
        }
        ;
        this.scrollstart = function(b) {
            this.onscrollstart = b;
            return a
        }
        ;
        this.scrollend = function(b) {
            this.onscrollend = b;
            return a
        }
        ;
        this.scrollcancel = function(b) {
            this.onscrollcancel = b;
            return a
        }
        ;
        this.zoomin = function(b) {
            this.onzoomin = b;
            return a
        }
        ;
        this.zoomout = function(b) {
            this.onzoomout = b;
            return a
        }
        ;
        this.isScrollable = function(a) {
            a = a.target ? a.target : a;
            if ("OPTION" == a.nodeName)
                return !0;
            for (; a && 1 == a.nodeType && !/^BODY|HTML/.test(a.nodeName); ) {
                var c = f(a)
                  , c = c.css("overflowY") || c.css("overflowX") || c.css("overflow") || "";
                if (/scroll|auto/.test(c))
                    return a.clientHeight != a.scrollHeight;
                a = a.parentNode ? a.parentNode : !1
            }
            return !1
        }
        ;
        this.getViewport = function(a) {
            for (a = a && a.parentNode ? a.parentNode : !1; a && 1 == a.nodeType && !/^BODY|HTML/.test(a.nodeName); ) {
                var c = f(a);
                if (/fixed|absolute/.test(c.css("position")))
                    return c;
                var d = c.css("overflowY") || c.css("overflowX") || c.css("overflow") || "";
                if (/scroll|auto/.test(d) && a.clientHeight != a.scrollHeight || 0 < c.getNiceScroll().length)
                    return c;
                a = a.parentNode ? a.parentNode : !1
            }
            return !1
        }
        ;
        this.triggerScrollEnd = function() {
            if (a.onscrollend) {
                var b = a.getScrollLeft()
                  , c = a.getScrollTop();
                a.onscrollend.call(a, {
                    type: "scrollend",
                    current: {
                        x: b,
                        y: c
                    },
                    end: {
                        x: b,
                        y: c
                    }
                })
            }
        }
        ;
        this.onmousewheel = function(b) {
            if (!a.wheelprevented) {
                if (a.railslocked)
                    return a.debounced("checkunlock", a.resize, 250),
                    !0;
                if (a.rail.drag)
                    return a.cancelEvent(b);
                "auto" == a.opt.oneaxismousemode && 0 != b.deltaX && (a.opt.oneaxismousemode = !1);
                if (a.opt.oneaxismousemode && 0 == b.deltaX && !a.rail.scrollable)
                    return a.railh && a.railh.scrollable ? a.onmousewheelhr(b) : !0;
                var c = +new Date
                  , d = !1;
                a.opt.preservenativescrolling && a.checkarea + 600 < c && (a.nativescrollingarea = a.isScrollable(b),
                d = !0);
                a.checkarea = c;
                if (a.nativescrollingarea)
                    return !0;
                if (b = t(b, !1, d))
                    a.checkarea = 0;
                return b
            }
        }
        ;
        this.onmousewheelhr = function(b) {
            if (!a.wheelprevented) {
                if (a.railslocked || !a.railh.scrollable)
                    return !0;
                if (a.rail.drag)
                    return a.cancelEvent(b);
                var c = +new Date
                  , d = !1;
                a.opt.preservenativescrolling && a.checkarea + 600 < c && (a.nativescrollingarea = a.isScrollable(b),
                d = !0);
                a.checkarea = c;
                return a.nativescrollingarea ? !0 : a.railslocked ? a.cancelEvent(b) : t(b, !0, d)
            }
        }
        ;
        this.stop = function() {
            a.cancelScroll();
            a.scrollmon && a.scrollmon.stop();
            a.cursorfreezed = !1;
            a.scroll.y = Math.round(a.getScrollTop() * (1 / a.scrollratio.y));
            a.noticeCursor();
            return a
        }
        ;
        this.getTransitionSpeed = function(b) {
            b = Math.min(Math.round(10 * a.opt.scrollspeed), Math.round(b / 20 * a.opt.scrollspeed));
            return 20 < b ? b : 0
        }
        ;
        a.opt.smoothscroll ? a.ishwscroll && e.hastransition && a.opt.usetransition && a.opt.smoothscroll ? (this.prepareTransition = function(b, c) {
            var d = c ? 20 < b ? b : 0 : a.getTransitionSpeed(b)
              , f = d ? e.prefixstyle + "transform " + d + "ms ease-out" : "";
            a.lasttransitionstyle && a.lasttransitionstyle == f || (a.lasttransitionstyle = f,
            a.doc.css(e.transitionstyle, f));
            return d
        }
        ,
        this.doScrollLeft = function(b, c) {
            var d = a.scrollrunning ? a.newscrolly : a.getScrollTop();
            a.doScrollPos(b, d, c)
        }
        ,
        this.doScrollTop = function(b, c) {
            var d = a.scrollrunning ? a.newscrollx : a.getScrollLeft();
            a.doScrollPos(d, b, c)
        }
        ,
        this.doScrollPos = function(b, c, d) {
            var f = a.getScrollTop()
              , k = a.getScrollLeft();
            (0 > (a.newscrolly - f) * (c - f) || 0 > (a.newscrollx - k) * (b - k)) && a.cancelScroll();
            0 == a.opt.bouncescroll && (0 > c ? c = 0 : c > a.page.maxh && (c = a.page.maxh),
            0 > b ? b = 0 : b > a.page.maxw && (b = a.page.maxw));
            if (a.scrollrunning && b == a.newscrollx && c == a.newscrolly)
                return !1;
            a.newscrolly = c;
            a.newscrollx = b;
            a.newscrollspeed = d || !1;
            if (a.timer)
                return !1;
            a.timer = setTimeout(function() {
                var d = a.getScrollTop()
                  , f = a.getScrollLeft()
                  , k = Math.round(Math.sqrt(Math.pow(b - f, 2) + Math.pow(c - d, 2)))
                  , k = a.newscrollspeed && 1 < a.newscrollspeed ? a.newscrollspeed : a.getTransitionSpeed(k);
                a.newscrollspeed && 1 >= a.newscrollspeed && (k *= a.newscrollspeed);
                a.prepareTransition(k, !0);
                a.timerscroll && a.timerscroll.tm && clearInterval(a.timerscroll.tm);
                0 < k && (!a.scrollrunning && a.onscrollstart && a.onscrollstart.call(a, {
                    type: "scrollstart",
                    current: {
                        x: f,
                        y: d
                    },
                    request: {
                        x: b,
                        y: c
                    },
                    end: {
                        x: a.newscrollx,
                        y: a.newscrolly
                    },
                    speed: k
                }),
                e.transitionend ? a.scrollendtrapped || (a.scrollendtrapped = !0,
                a.bind(a.doc, e.transitionend, a.onScrollTransitionEnd, !1)) : (a.scrollendtrapped && clearTimeout(a.scrollendtrapped),
                a.scrollendtrapped = setTimeout(a.onScrollTransitionEnd, k)),
                a.timerscroll = {
                    bz: new D(d,a.newscrolly,k,0,0,.58,1),
                    bh: new D(f,a.newscrollx,k,0,0,.58,1)
                },
                a.cursorfreezed || (a.timerscroll.tm = setInterval(function() {
                    a.showCursor(a.getScrollTop(), a.getScrollLeft())
                }, 60)));
                a.synched("doScroll-set", function() {
                    a.timer = 0;
                    a.scrollendtrapped && (a.scrollrunning = !0);
                    a.setScrollTop(a.newscrolly);
                    a.setScrollLeft(a.newscrollx);
                    if (!a.scrollendtrapped)
                        a.onScrollTransitionEnd()
                })
            }, 50)
        }
        ,
        this.cancelScroll = function() {
            if (!a.scrollendtrapped)
                return !0;
            var b = a.getScrollTop()
              , c = a.getScrollLeft();
            a.scrollrunning = !1;
            e.transitionend || clearTimeout(e.transitionend);
            a.scrollendtrapped = !1;
            a._unbind(a.doc[0], e.transitionend, a.onScrollTransitionEnd);
            a.prepareTransition(0);
            a.setScrollTop(b);
            a.railh && a.setScrollLeft(c);
            a.timerscroll && a.timerscroll.tm && clearInterval(a.timerscroll.tm);
            a.timerscroll = !1;
            a.cursorfreezed = !1;
            a.showCursor(b, c);
            return a
        }
        ,
        this.onScrollTransitionEnd = function() {
            a.scrollendtrapped && a._unbind(a.doc[0], e.transitionend, a.onScrollTransitionEnd);
            a.scrollendtrapped = !1;
            a.prepareTransition(0);
            a.timerscroll && a.timerscroll.tm && clearInterval(a.timerscroll.tm);
            a.timerscroll = !1;
            var b = a.getScrollTop()
              , c = a.getScrollLeft();
            a.setScrollTop(b);
            a.railh && a.setScrollLeft(c);
            a.noticeCursor(!1, b, c);
            a.cursorfreezed = !1;
            0 > b ? b = 0 : b > a.page.maxh && (b = a.page.maxh);
            0 > c ? c = 0 : c > a.page.maxw && (c = a.page.maxw);
            if (b != a.newscrolly || c != a.newscrollx)
                return a.doScrollPos(c, b, a.opt.snapbackspeed);
            a.onscrollend && a.scrollrunning && a.triggerScrollEnd();
            a.scrollrunning = !1
        }
        ) : (this.doScrollLeft = function(b, c) {
            var d = a.scrollrunning ? a.newscrolly : a.getScrollTop();
            a.doScrollPos(b, d, c)
        }
        ,
        this.doScrollTop = function(b, c) {
            var d = a.scrollrunning ? a.newscrollx : a.getScrollLeft();
            a.doScrollPos(d, b, c)
        }
        ,
        this.doScrollPos = function(b, c, d) {
            function e() {
                if (a.cancelAnimationFrame)
                    return !0;
                a.scrollrunning = !0;
                if (p = 1 - p)
                    return a.timer = v(e) || 1;
                var b = 0, c, d, f = d = a.getScrollTop();
                if (a.dst.ay) {
                    f = a.bzscroll ? a.dst.py + a.bzscroll.getNow() * a.dst.ay : a.newscrolly;
                    c = f - d;
                    if (0 > c && f < a.newscrolly || 0 < c && f > a.newscrolly)
                        f = a.newscrolly;
                    a.setScrollTop(f);
                    f == a.newscrolly && (b = 1)
                } else
                    b = 1;
                d = c = a.getScrollLeft();
                if (a.dst.ax) {
                    d = a.bzscroll ? a.dst.px + a.bzscroll.getNow() * a.dst.ax : a.newscrollx;
                    c = d - c;
                    if (0 > c && d < a.newscrollx || 0 < c && d > a.newscrollx)
                        d = a.newscrollx;
                    a.setScrollLeft(d);
                    d == a.newscrollx && (b += 1)
                } else
                    b += 1;
                2 == b ? (a.timer = 0,
                a.cursorfreezed = !1,
                a.bzscroll = !1,
                a.scrollrunning = !1,
                0 > f ? f = 0 : f > a.page.maxh && (f = Math.max(0, a.page.maxh)),
                0 > d ? d = 0 : d > a.page.maxw && (d = a.page.maxw),
                d != a.newscrollx || f != a.newscrolly ? a.doScrollPos(d, f) : a.onscrollend && a.triggerScrollEnd()) : a.timer = v(e) || 1
            }
            c = void 0 === c || !1 === c ? a.getScrollTop(!0) : c;
            if (a.timer && a.newscrolly == c && a.newscrollx == b)
                return !0;
            a.timer && w(a.timer);
            a.timer = 0;
            var f = a.getScrollTop()
              , k = a.getScrollLeft();
            (0 > (a.newscrolly - f) * (c - f) || 0 > (a.newscrollx - k) * (b - k)) && a.cancelScroll();
            a.newscrolly = c;
            a.newscrollx = b;
            a.bouncescroll && a.rail.visibility || (0 > a.newscrolly ? a.newscrolly = 0 : a.newscrolly > a.page.maxh && (a.newscrolly = a.page.maxh));
            a.bouncescroll && a.railh.visibility || (0 > a.newscrollx ? a.newscrollx = 0 : a.newscrollx > a.page.maxw && (a.newscrollx = a.page.maxw));
            a.dst = {};
            a.dst.x = b - k;
            a.dst.y = c - f;
            a.dst.px = k;
            a.dst.py = f;
            var h = Math.round(Math.sqrt(Math.pow(a.dst.x, 2) + Math.pow(a.dst.y, 2)));
            a.dst.ax = a.dst.x / h;
            a.dst.ay = a.dst.y / h;
            var l = 0
              , n = h;
            0 == a.dst.x ? (l = f,
            n = c,
            a.dst.ay = 1,
            a.dst.py = 0) : 0 == a.dst.y && (l = k,
            n = b,
            a.dst.ax = 1,
            a.dst.px = 0);
            h = a.getTransitionSpeed(h);
            d && 1 >= d && (h *= d);
            a.bzscroll = 0 < h ? a.bzscroll ? a.bzscroll.update(n, h) : new D(l,n,h,0,1,0,1) : !1;
            if (!a.timer) {
                (f == a.page.maxh && c >= a.page.maxh || k == a.page.maxw && b >= a.page.maxw) && a.checkContentSize();
                var p = 1;
                a.cancelAnimationFrame = !1;
                a.timer = 1;
                a.onscrollstart && !a.scrollrunning && a.onscrollstart.call(a, {
                    type: "scrollstart",
                    current: {
                        x: k,
                        y: f
                    },
                    request: {
                        x: b,
                        y: c
                    },
                    end: {
                        x: a.newscrollx,
                        y: a.newscrolly
                    },
                    speed: h
                });
                e();
                (f == a.page.maxh && c >= f || k == a.page.maxw && b >= k) && a.checkContentSize();
                a.noticeCursor()
            }
        }
        ,
        this.cancelScroll = function() {
            a.timer && w(a.timer);
            a.timer = 0;
            a.bzscroll = !1;
            a.scrollrunning = !1;
            return a
        }
        ) : (this.doScrollLeft = function(b, c) {
            var d = a.getScrollTop();
            a.doScrollPos(b, d, c)
        }
        ,
        this.doScrollTop = function(b, c) {
            var d = a.getScrollLeft();
            a.doScrollPos(d, b, c)
        }
        ,
        this.doScrollPos = function(b, c, d) {
            var e = b > a.page.maxw ? a.page.maxw : b;
            0 > e && (e = 0);
            var f = c > a.page.maxh ? a.page.maxh : c;
            0 > f && (f = 0);
            a.synched("scroll", function() {
                a.setScrollTop(f);
                a.setScrollLeft(e)
            })
        }
        ,
        this.cancelScroll = function() {}
        );
        this.doScrollBy = function(b, c) {
            var d = 0
              , d = c ? Math.floor((a.scroll.y - b) * a.scrollratio.y) : (a.timer ? a.newscrolly : a.getScrollTop(!0)) - b;
            if (a.bouncescroll) {
                var e = Math.round(a.view.h / 2);
                d < -e ? d = -e : d > a.page.maxh + e && (d = a.page.maxh + e)
            }
            a.cursorfreezed = !1;
            e = a.getScrollTop(!0);
            if (0 > d && 0 >= e)
                return a.noticeCursor();
            if (d > a.page.maxh && e >= a.page.maxh)
                return a.checkContentSize(),
                a.noticeCursor();
            a.doScrollTop(d)
        }
        ;
        this.doScrollLeftBy = function(b, c) {
            var d = 0
              , d = c ? Math.floor((a.scroll.x - b) * a.scrollratio.x) : (a.timer ? a.newscrollx : a.getScrollLeft(!0)) - b;
            if (a.bouncescroll) {
                var e = Math.round(a.view.w / 2);
                d < -e ? d = -e : d > a.page.maxw + e && (d = a.page.maxw + e)
            }
            a.cursorfreezed = !1;
            e = a.getScrollLeft(!0);
            if (0 > d && 0 >= e || d > a.page.maxw && e >= a.page.maxw)
                return a.noticeCursor();
            a.doScrollLeft(d)
        }
        ;
        this.doScrollTo = function(b, c) {
            a.cursorfreezed = !1;
            a.doScrollTop(b)
        }
        ;
        this.checkContentSize = function() {
            var b = a.getContentSize();
            b.h == a.page.h && b.w == a.page.w || a.resize(!1, b)
        }
        ;
        a.onscroll = function(b) {
            a.rail.drag || a.cursorfreezed || a.synched("scroll", function() {
                a.scroll.y = Math.round(a.getScrollTop() * (1 / a.scrollratio.y));
                a.railh && (a.scroll.x = Math.round(a.getScrollLeft() * (1 / a.scrollratio.x)));
                a.noticeCursor()
            })
        }
        ;
        a.bind(a.docscroll, "scroll", a.onscroll);
        this.doZoomIn = function(b) {
            if (!a.zoomactive) {
                a.zoomactive = !0;
                a.zoomrestore = {
                    style: {}
                };
                var c = "position top left zIndex backgroundColor marginTop marginBottom marginLeft marginRight".split(" "), d = a.win[0].style, k;
                for (k in c) {
                    var h = c[k];
                    a.zoomrestore.style[h] = void 0 !== d[h] ? d[h] : ""
                }
                a.zoomrestore.style.width = a.win.css("width");
                a.zoomrestore.style.height = a.win.css("height");
                a.zoomrestore.padding = {
                    w: a.win.outerWidth() - a.win.width(),
                    h: a.win.outerHeight() - a.win.height()
                };
                e.isios4 && (a.zoomrestore.scrollTop = f(window).scrollTop(),
                f(window).scrollTop(0));
                a.win.css({
                    position: e.isios4 ? "absolute" : "fixed",
                    top: 0,
                    left: 0,
                    zIndex: A + 100,
                    margin: 0
                });
                c = a.win.css("backgroundColor");
                ("" == c || /transparent|rgba\(0, 0, 0, 0\)|rgba\(0,0,0,0\)/.test(c)) && a.win.css("backgroundColor", "#fff");
                a.rail.css({
                    zIndex: A + 101
                });
                a.zoom.css({
                    zIndex: A + 102
                });
                a.zoom.css("backgroundPosition", "0px -18px");
                a.resizeZoom();
                a.onzoomin && a.onzoomin.call(a);
                return a.cancelEvent(b)
            }
        }
        ;
        this.doZoomOut = function(b) {
            if (a.zoomactive)
                return a.zoomactive = !1,
                a.win.css("margin", ""),
                a.win.css(a.zoomrestore.style),
                e.isios4 && f(window).scrollTop(a.zoomrestore.scrollTop),
                a.rail.css({
                    "z-index": a.zindex
                }),
                a.zoom.css({
                    "z-index": a.zindex
                }),
                a.zoomrestore = !1,
                a.zoom.css("backgroundPosition", "0px 0px"),
                a.onResize(),
                a.onzoomout && a.onzoomout.call(a),
                a.cancelEvent(b)
        }
        ;
        this.doZoom = function(b) {
            return a.zoomactive ? a.doZoomOut(b) : a.doZoomIn(b)
        }
        ;
        this.resizeZoom = function() {
            if (a.zoomactive) {
                var b = a.getScrollTop();
                a.win.css({
                    width: f(window).width() - a.zoomrestore.padding.w + "px",
                    height: f(window).height() - a.zoomrestore.padding.h + "px"
                });
                a.onResize();
                a.setScrollTop(Math.min(a.page.maxh, b))
            }
        }
        ;
        this.init();
        f.nicescroll.push(this)
    }
      , M = function(f) {
        var c = this;
        this.nc = f;
        this.steptime = this.lasttime = this.speedy = this.speedx = this.lasty = this.lastx = 0;
        this.snapy = this.snapx = !1;
        this.demuly = this.demulx = 0;
        this.lastscrolly = this.lastscrollx = -1;
        this.timer = this.chky = this.chkx = 0;
        this.time = function() {
            return +new Date
        }
        ;
        this.reset = function(f, h) {
            c.stop();
            var d = c.time();
            c.steptime = 0;
            c.lasttime = d;
            c.speedx = 0;
            c.speedy = 0;
            c.lastx = f;
            c.lasty = h;
            c.lastscrollx = -1;
            c.lastscrolly = -1
        }
        ;
        this.update = function(f, h) {
            var d = c.time();
            c.steptime = d - c.lasttime;
            c.lasttime = d;
            var d = h - c.lasty
              , q = f - c.lastx
              , t = c.nc.getScrollTop()
              , a = c.nc.getScrollLeft()
              , t = t + d
              , a = a + q;
            c.snapx = 0 > a || a > c.nc.page.maxw;
            c.snapy = 0 > t || t > c.nc.page.maxh;
            c.speedx = q;
            c.speedy = d;
            c.lastx = f;
            c.lasty = h
        }
        ;
        this.stop = function() {
            c.nc.unsynched("domomentum2d");
            c.timer && clearTimeout(c.timer);
            c.timer = 0;
            c.lastscrollx = -1;
            c.lastscrolly = -1
        }
        ;
        this.doSnapy = function(f, h) {
            var d = !1;
            0 > h ? (h = 0,
            d = !0) : h > c.nc.page.maxh && (h = c.nc.page.maxh,
            d = !0);
            0 > f ? (f = 0,
            d = !0) : f > c.nc.page.maxw && (f = c.nc.page.maxw,
            d = !0);
            d ? c.nc.doScrollPos(f, h, c.nc.opt.snapbackspeed) : c.nc.triggerScrollEnd()
        }
        ;
        this.doMomentum = function(f) {
            var h = c.time()
              , d = f ? h + f : c.lasttime;
            f = c.nc.getScrollLeft();
            var q = c.nc.getScrollTop()
              , t = c.nc.page.maxh
              , a = c.nc.page.maxw;
            c.speedx = 0 < a ? Math.min(60, c.speedx) : 0;
            c.speedy = 0 < t ? Math.min(60, c.speedy) : 0;
            d = d && 60 >= h - d;
            if (0 > q || q > t || 0 > f || f > a)
                d = !1;
            f = c.speedx && d ? c.speedx : !1;
            if (c.speedy && d && c.speedy || f) {
                var r = Math.max(16, c.steptime);
                50 < r && (f = r / 50,
                c.speedx *= f,
                c.speedy *= f,
                r = 50);
                c.demulxy = 0;
                c.lastscrollx = c.nc.getScrollLeft();
                c.chkx = c.lastscrollx;
                c.lastscrolly = c.nc.getScrollTop();
                c.chky = c.lastscrolly;
                var p = c.lastscrollx
                  , e = c.lastscrolly
                  , v = function() {
                    var d = 600 < c.time() - h ? .04 : .02;
                    c.speedx && (p = Math.floor(c.lastscrollx - c.speedx * (1 - c.demulxy)),
                    c.lastscrollx = p,
                    0 > p || p > a) && (d = .1);
                    c.speedy && (e = Math.floor(c.lastscrolly - c.speedy * (1 - c.demulxy)),
                    c.lastscrolly = e,
                    0 > e || e > t) && (d = .1);
                    c.demulxy = Math.min(1, c.demulxy + d);
                    c.nc.synched("domomentum2d", function() {
                        c.speedx && (c.nc.getScrollLeft(),
                        c.chkx = p,
                        c.nc.setScrollLeft(p));
                        c.speedy && (c.nc.getScrollTop(),
                        c.chky = e,
                        c.nc.setScrollTop(e));
                        c.timer || (c.nc.hideCursor(),
                        c.doSnapy(p, e))
                    });
                    1 > c.demulxy ? c.timer = setTimeout(v, r) : (c.stop(),
                    c.nc.hideCursor(),
                    c.doSnapy(p, e))
                };
                v()
            } else
                c.doSnapy(c.nc.getScrollLeft(), c.nc.getScrollTop())
        }
    }
      , y = f.fn.scrollTop;
    f.cssHooks.pageYOffset = {
        get: function(h, c, k) {
            return (c = f.data(h, "__nicescroll") || !1) && c.ishwscroll ? c.getScrollTop() : y.call(h)
        },
        set: function(h, c) {
            var k = f.data(h, "__nicescroll") || !1;
            k && k.ishwscroll ? k.setScrollTop(parseInt(c)) : y.call(h, c);
            return this
        }
    };
    f.fn.scrollTop = function(h) {
        if (void 0 === h) {
            var c = this[0] ? f.data(this[0], "__nicescroll") || !1 : !1;
            return c && c.ishwscroll ? c.getScrollTop() : y.call(this)
        }
        return this.each(function() {
            var c = f.data(this, "__nicescroll") || !1;
            c && c.ishwscroll ? c.setScrollTop(parseInt(h)) : y.call(f(this), h)
        })
    }
    ;
    var z = f.fn.scrollLeft;
    f.cssHooks.pageXOffset = {
        get: function(h, c, k) {
            return (c = f.data(h, "__nicescroll") || !1) && c.ishwscroll ? c.getScrollLeft() : z.call(h)
        },
        set: function(h, c) {
            var k = f.data(h, "__nicescroll") || !1;
            k && k.ishwscroll ? k.setScrollLeft(parseInt(c)) : z.call(h, c);
            return this
        }
    };
    f.fn.scrollLeft = function(h) {
        if (void 0 === h) {
            var c = this[0] ? f.data(this[0], "__nicescroll") || !1 : !1;
            return c && c.ishwscroll ? c.getScrollLeft() : z.call(this)
        }
        return this.each(function() {
            var c = f.data(this, "__nicescroll") || !1;
            c && c.ishwscroll ? c.setScrollLeft(parseInt(h)) : z.call(f(this), h)
        })
    }
    ;
    var E = function(h) {
        var c = this;
        this.length = 0;
        this.name = "nicescrollarray";
        this.each = function(d) {
            f.each(c, d);
            return c
        }
        ;
        this.push = function(d) {
            c[c.length] = d;
            c.length++
        }
        ;
        this.eq = function(d) {
            return c[d]
        }
        ;
        if (h)
            for (var k = 0; k < h.length; k++) {
                var l = f.data(h[k], "__nicescroll") || !1;
                l && (this[this.length] = l,
                this.length++)
            }
        return this
    };
    (function(f, c, k) {
        for (var l = 0; l < c.length; l++)
            k(f, c[l])
    }
    )(E.prototype, "show hide toggle onResize resize remove stop doScrollPos".split(" "), function(f, c) {
        f[c] = function() {
            var f = arguments;
            return this.each(function() {
                this[c].apply(this, f)
            })
        }
    });
    f.fn.getNiceScroll = function(h) {
        return void 0 === h ? new E(this) : this[h] && f.data(this[h], "__nicescroll") || !1
    }
    ;
    f.expr[":"].nicescroll = function(h) {
        return void 0 !== f.data(h, "__nicescroll")
    }
    ;
    f.fn.niceScroll = function(h, c) {
        void 0 !== c || "object" != typeof h || "jquery"in h || (c = h,
        h = !1);
        c = f.extend({}, c);
        var k = new E;
        void 0 === c && (c = {});
        h && (c.doc = f(h),
        c.win = f(this));
        var l = !("doc"in c);
        l || "win"in c || (c.win = f(this));
        this.each(function() {
            var d = f(this).data("__nicescroll") || !1;
            d || (c.doc = l ? f(this) : c.doc,
            d = new S(c,f(this)),
            f(this).data("__nicescroll", d));
            k.push(d)
        });
        return 1 == k.length ? k[0] : k
    }
    ;
    window.NiceScroll = {
        getjQuery: function() {
            return f
        }
    };
    f.nicescroll || (f.nicescroll = new E,
    f.nicescroll.options = K)
});
