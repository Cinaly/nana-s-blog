/*
 Navicat Premium Data Transfer

 Source Server         : nana1
 Source Server Type    : MySQL
 Source Server Version : 100119
 Source Host           : localhost:3306
 Source Schema         : my_blog

 Target Server Type    : MySQL
 Target Server Version : 100119
 File Encoding         : 65001

 Date: 04/04/2019 18:06:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog`  (
  `article_id` int(5) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type_id` int(11) NOT NULL,
  `series_id` int(11) NOT NULL,
  `tags_id` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所属标签',
  `is_delete` int(1) UNSIGNED ZEROFILL NOT NULL COMMENT '是否删除',
  PRIMARY KEY (`article_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES (00004, '用字蛛压缩ttf字体文件', '#### 1. 下载字蛛，全局安装\n\n```\n   npm install font-spider -g\n```\n\n#### 2. 创建一个自己的文件夹 如 test\n    包含下面三个目录\n    1. css文件夹 (font.css)\n    2. font文件夹 (字体1.ttf,字体2.ttf)\n    3. index.html\n    \n#### 3. font.css\n    \n```\n@font-face {\n  font-family: \'sf-pro-text_regular\';  \n  src:  url(\'../font/sf-pro-text_regular.ttf\') format(\'truetype\'),\n  font-weight: normal;\n  font-style: normal;\n}\n\n@font-face {\n  font-family: \'sf-pro-text_semibold\';  \n  src:  url(\'../font/sf-pro-text_semibold.ttf\') format(\'truetype\'),\n  font-weight: normal;\n  font-style: normal;\n}\n\nbody{\n	font-family:\"sf-pro-text_regular\";\n}\n\n.tt1{\n	font-family: \'sf-pro-text_regular\';  \n	font-size: 24px;\n	color: #333;\n}\n\n.tt2{\n	font-family: \'sf-pro-text_semibold\';  \n	font-size: 24px;\n	color: #333;\n}\n```\n#### 4. index.html\n\n```\n<html>\n<head>\n	<link rel=\"stylesheet\" href=\"css/font.css\">\n</head>\n<body>\n<p class=\"tt1\">abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890.:,;\'\"(!?)+-*/=</p>\n<p class=\"tt2\">abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890.:,;\'\"(!?)+-*/=</p>\n</body>\n</html>\n```\n#### 5. 进入test目录下 运行如下命令\n\n```\nfont-spider ./*.html\n```\n#### 6.font文件夹下会生成对应的压缩字体文件\n```\nfont文件夹下的 .font-spider 文件夹里是原字体文件\n```\n', 2, 1, '', 0);
INSERT INTO `blog` VALUES (00005, 'Vue 不能检测以下变动的数组', '\n```\n由于 JavaScript 的限制，Vue 不能检测以下变动的数组：\n当你利用索引直接设置一个项时，例如：vm.items[indexOfItem] = newValue\n当你修改数组的长度时，例如：vm.items.length = newLength\n\n为了解决第一类问题，以下两种方式都可以实现和 vm.items[indexOfItem] = newValue相同的效果，同时也将触发状态更新： \n// Vue.set Vue.set(example1.items, indexOfItem,newValue) \n// Array.prototype.splice example1.items.splice(indexOfItem,1, newValue) \n\n为了解决第二类问题，你可以使用 splice： example1.items.splice(newLength)\n```\n', 4, 3, '', 0);
INSERT INTO `blog` VALUES (00006, 'vue中  methods , watcher , computed', '### 1.methods和(watch/computed)的对比\n\n1.作用机制上\n\n    methods里面定义的函数，是需要主动调用的，而和watch和computed相关的函数，会自动调用,完成我们希望完成的作用\n\n2.从性质上看\n\n    1.methods里面定义的是函数，你显然需要像\"fuc()\"这样去调用它（假设函数为fuc）\n\n    2.computed是计算属性，事实上和和data对象里的数据属性是同一类的（使用上）,\n\n    例如：\n\n    computed:{\n      fullName: function () { return this.firstName + lastName }\n    }\n    你在取用的时候，用this.fullName去取用，就和取data一样（不要当成函数调用！！）\n\n3.watch:类似于监听机制+事件机制：\n\n    例如：\n    \n    watch: {\n      firstName: function (val) { this.fullName = val + this.lastName }\n    }\n    firstName的改变是这个特殊“事件”被触发的条件，而firstName对应的函数就相当于监听到事件发生后执行的方法\n\n\n### 2.watch和computed的对比\n\nwatch和computed各自处理的数据关系场景不同\n\n1.watch擅长处理的场景：一个数据影响多个数据\n\n2.computed擅长处理的场景：一个数据受多个数据影响\n\n![2017080114321049.png](0)\n    \n1.methods里面的函数就是一群“耿直Boy”，如果有其他父函数调用它，它会每一次都“乖乖”地执行并返回结果，即使这些结果很可能是相同的，是不需要的\n\n2.而computed是一个“心机Boy”，它会以Vue提供的依赖追踪系统为基础，只要依赖数据没有发生变化,computed就不会再度进行计算   \n    \nhttps://www.jb51.net/article/120073.htm', 4, 3, '', 0);
INSERT INTO `blog` VALUES (00007, 'swiper组件', '组件目录\n# swiper\n- pagination\n  - index.vue---------------[1]\n- slide\n  - index.vue---------------[2]\n- wrapper\n  - index.vue---------------[3]\n- index.vue-----------------[4]\n- swiper.js-----------------[5]\n- swiper.css----------------[6]\n- swiperPagination.vue------[7]\n- swiperWrapper.vue---------[8]\n\n\n```\n------------[1]--------------\n\n<template>\n    <div class=\"swiper-pagination\">\n        <slot></slot>\n    </div>\n</template>\n<style lang=\"scss\">\n\n</style>\n<script>\n    export default {\n        data () {\n            return {\n\n            };\n        },\n        props: {\n            option: {\n                type: Object,\n                default: () => {}\n            }\n        },\n        created () {\n\n        },\n        methods: {\n\n        }\n    };\n</script>\n```\n\n\n```\n------------[2]--------------\n\n<template>\n    <div class=\"swiper-slide\">\n        <slot></slot>\n    </div>\n</template>\n<style lang=\"scss\" scope>\n</style>\n<script>\n    export default {\n        data () {\n            return {\n\n            };\n        },\n        created () {\n\n        },\n        methods: {\n\n        }\n    };\n</script>\n```\n\n```\n------------[3]--------------\n<template>\n    <div class=\"swiper-wrapper\">\n        <slot></slot>\n    </div>\n</template>\n<style lang=\"scss\" scoped>\n\n</style>\n<script>\n    export default {\n        data () {\n            return {\n\n            };\n        },\n        props: {\n//            option: {\n//                type: Object,\n//                default: () => {}\n//            }\n        },\n        created () {\n\n        },\n        methods: {\n\n        }\n    };\n</script>\n\n```\n```\n------------[4]--------------\n<template>\n    <div class=\"jc-swiper\" :style=\"setStyle()\">\n        <div class=\"swiper-container\" :class=\"this.option.containerName\">\n            <slot></slot>\n            <jc-swiper-pagination v-if=\"isShowPagination\"></jc-swiper-pagination>\n        </div>\n    </div>\n</template>\n<style lang=\"scss\" scoped>\n    @import \"swiper\";\n</style>\n<script src=\"./swiper.js\"></script>\n\n```\n```\n------------[5]--------------\nimport {mapState} from \'vuex\';\nimport swiperWrapper from \'./swiperWrapper.vue\';\nimport swiperPagination from \'./swiperPagination.vue\';\n\nexport default {\n    data () {\n        return {\n            isShowPagination: false\n        }\n    },\n    components: {\n        jcSwiperWrapper: swiperWrapper,\n        jcSwiperPagination: swiperPagination\n    },\n    props: {\n        option: {\n            type: Object,\n            default: () => {}\n        },\n        list: {\n            type: Array,\n            default: () => []\n        }\n    },\n    computed: {\n        ...mapState({\n            pageInfo: state => state.pageInfo\n        })\n    },\n    created () {\n\n    },\n    mounted() {\n        this.langName = this.pageInfo.pageLang;\n        setTimeout(() => {\n            let containerName = this.option.containerName;\n            let isShowPagination = this.option.isShowPagination === undefined ? true : this.option.isShowPagination;\n            let intervalTime = this.option.intervalTime ? this.option.intervalTime : 4000;\n            this.swiperControler(containerName).init({\n                loop: this.option.loop,\n                autoplay: this.option.autoplay,\n                paginationClickable :true, // 小圆点可点击\n                autoplayDisableOnInteraction: this.option.autoplayDisableOnInteraction ? true : false // 用户操作swiper之后，是否禁止autoplay。默认为true：停止。(如果要设置操作之后继续自动滚动，务必加上该参数)\n            }, this.langName, isShowPagination, intervalTime);\n        }, 10);\n    },\n    methods: {\n        setStyle: function () {\n            return {\n                width: this.option.width + \'px\',\n                height: this.option.height + \'px\'\n            }\n        },\n        // 轮播控制器\n        swiperControler: function(container) {\n            const paginationDOM = document.getElementsByClassName(container)[0].getElementsByClassName(\'swiper-pagination\')[0];\n            let paginationList = [];\n            let paginationInnerHTML = \'\'\n            if (paginationDOM) { // 如果存在jc-swiper-pagination组件\n                paginationInnerHTML = paginationDOM.innerHTML;\n                const newDOM = document.createElement(\'div\');\n                newDOM.innerHTML = paginationInnerHTML;\n                let slideLength = newDOM.childElementCount;\n                for (let i = 0; i < slideLength; i++) {\n                    paginationList.push(newDOM.children[i].outerHTML);\n                }\n                this.isShowPagination = false;\n            } else {\n                this.isShowPagination = true;\n            }\n            container = \'.\' + container;\n            return {\n                // anotherParams: 附加参数。 langName: 当前语言。 bullet: 是否有小圆点。 intervalTime: 轮播时间间隔\n                init: function(anotherParams, langName, bullet, intervalTime) {\n                    let swiperOption  = {\n                        pagination: container + \' .swiper-pagination\', // containerDom.find(\'.swiper-pagination\').className, // $(container).find(\'.swiper-pagination\').className, // pagination,\n                        initialSlide: 0,\n                        observeParents: true, // 修改swiper的父元素时，自动初始化swiper\n                        observer: true // 修改swiper自己或子元素时，自动初始化swiper\n                        // effect: \'flip\' // --可以实现3D效果的轮播\n                    };\n                    if (anotherParams) { // 追加参数\n                        Object.keys(anotherParams).forEach(function (key) {\n                            swiperOption[key] = anotherParams[key];\n                        })\n                    }\n                    if (bullet && (bullet === 1 || bullet === true)) { // 如果显示小圆点\n                        if (paginationDOM && paginationInnerHTML) { // 如果jc-swiper-pagination组件中存在内容，就将组件中的每一个swiper-pagination-bullet加载进去\n                            swiperOption.paginationBulletRender = function(swiper, index, className) {\n                                return paginationList[index];\n                            }\n                        } else { // 如果jc-swiper-pagination组件中无内容，就加载默认的swiper-pagination-bullet\n                            swiperOption.paginationBulletRender = function(swiper, index, className) {\n                                return \'<span class=\"\' + className + \'\"></span>\';\n                            }\n                        }\n                    } else { // 隐藏小圆点\n                        swiperOption.paginationBulletRender = function(swiper, index, className) {\n                            return \'\';\n                        }\n                    }\n                    setTimeout(function() {\n                        if (langName == \'ar\' || langName == \'fa\') { // 阿语和波斯语不需要设置自动轮播，而是手动设置定时器setInterval\n                            swiperOption.autoplay = false;\n                        } else { // 除了阿语和波斯语，其他语言都需要设置自动轮播\n                            swiperOption.autoplay = intervalTime;\n                        }\n                        if(anotherParams) {\n                            if (anotherParams.autoplay) { // 如果在init()中设置其他参数autoplay，那么自动轮播\n                                const swiper = new Swiper(container, swiperOption);\n                                if (langName == \'ar\' || langName == \"fa\"){\n                                    setInterval(function() {\n                                        swiper.slideNext();\n                                    }, intervalTime);\n                                }\n                            } else { // 如果init()中没有设置autoplay，需要判断intervalTime是否存在\n                                if (intervalTime && intervalTime > 0) { // 如果设置了时间，那么就是自动轮播\n                                    swiperOption.autoplay = intervalTime;\n                                    const swiper = new Swiper(container, swiperOption);\n                                } else { // 如果没有设置自动轮播，就是手动切换\n                                    swiperOption.autoplay = false;\n                                    const swiper = new Swiper(container, swiperOption);\n                                }\n                            }\n                        }\n                    }, 10);\n                }\n            };\n        },\n\n    }\n};\n```\n```\n------------[6]--------------\n.jc-swiper {\n    width: 100%;\n    height: 100%;\n    .swiper-container {\n        width: 100%;\n        height: 100%;\n    }\n}\n\n```\n```\n------------[7]--------------\n<template>\n    <div class=\"swiper-pagination swiper-pagination-bullets\"></div>\n</template>\n<style lang=\"scss\" scoped>\n\n</style>\n<script>\n    export default {\n        data () {\n            return {\n\n            };\n        },\n        props: {\n            option: {\n                type: Object,\n                default: () => {}\n            }\n        },\n        created () {\n\n        },\n        methods: {\n\n        }\n    };\n</script>\n```\n```\n------------[8]--------------\n<template>\n    <div class=\"swiper-container\" :class=\"this.option.containerName\">\n        <div class=\"swiper-wrapper\">\n            <slot></slot>\n        </div>\n    </div>\n</template>\n<style lang=\"scss\" scoped>\n\n</style>\n<script>\n    export default {\n        data () {\n            return {\n\n            };\n        },\n        props: {\n            option: {\n                type: Object,\n                default: () => {}\n            }\n        },\n        created () {\n\n        },\n        methods: {\n\n        }\n    };\n</script>\n```\n\n#### 使用\n```\n<template>\n    <div class=\"v-container\">\n        <div class=\"items\">\n            <div class=\"sort\"><i>NO.9</i>Swiper组件</div>\n            <div class=\"content\">\n                <jc-swiper :option=\"swiperOption\" :list=\"list\">\n                    <jc-swiper-wrapper>\n                        <jc-swiper-slide>\n                            <div class=\"slide-inner\">111</div>\n                        </jc-swiper-slide>\n                        <jc-swiper-slide>\n                            <div class=\"slide-inner\">222</div>\n                        </jc-swiper-slide>\n                        <jc-swiper-slide>\n                            <div class=\"slide-inner\">333</div>\n                        </jc-swiper-slide>\n                    </jc-swiper-wrapper>\n                    <jc-swiper-pagination>\n                        <!-- .swiper-pagination-bullet为空的话，默认小圆点 -->\n                        <span class=\"swiper-pagination-bullet bullet-test\" v-for=\"item in list\" :key=\"item.sort\">\n                            <div class=\"image\">\n                                <img :src=\"item.imgUrl\">\n                            </div>\n                            <div class=\"name\">{{ item.name }}</div>\n                        </span>\n                    </jc-swiper-pagination>\n                </jc-swiper>\n                <div class=\"separate\"></div>\n                <jc-swiper :option=\"swiperOption2\" :list=\"list\">\n                    <jc-swiper-wrapper>\n                        <jc-swiper-slide>\n                            <div class=\"slide-inner\">111</div>\n                        </jc-swiper-slide>\n                        <jc-swiper-slide>\n                            <div class=\"slide-inner\">222</div>\n                        </jc-swiper-slide>\n                        <jc-swiper-slide>\n                            <div class=\"slide-inner\">333</div>\n                        </jc-swiper-slide>\n                    </jc-swiper-wrapper>\n                    <!-- 默认小圆点 -->\n                    <!--<jc-swiper-pagination></jc-swiper-pagination>-->\n                </jc-swiper>\n            </div>\n        </div>\n    </div>\n</template>\n<style lang=\"scss\" scoped>\n    .separate {\n        margin-top: 20px;\n    }\n    .slide-inner {\n        width: 100%;\n        height: 100%;\n        background: #f2f2f2;\n        display: flex;\n        align-items: center;\n        justify-content: center;\n    }\n    .bullet-test {\n        width: 40px;\n        height: 80px;\n        border-radius: initial;\n        background: #f2f2f2;\n        opacity: initial;\n        &.swiper-pagination-bullet-active {\n            background: #f2f2f2;\n            color: #007aff;\n        }\n        .image {\n            img {\n                width: 40px;\n                height: 40px;\n            }\n        }\n        .name {\n            width: 40px;\n            height: 40px;\n            font-size: 2rem;\n        }\n    }\n</style>\n\n<script>\n    import {mapState} from \'vuex\';\n    import swiper from \'@/views/common/component/swiper/index.vue\';\n    import wrapper from \'@/views/common/component/swiper/wrapper/index.vue\';\n    import pagination from \'@/views/common/component/swiper/pagination/index.vue\';\n    import slide from \'@/views/common/component/swiper/slide/index.vue\';\n\n    export default {\n        name: \'demo-swiper\',\n        data () {\n            return {\n                swiperOption: {},\n                list: []\n            };\n        },\n        computed: {\n            ...mapState({\n                pageInfo: state => state.pageInfo\n            })\n        },\n        components: {\n            jcSwiper: swiper,\n            jcSwiperWrapper: wrapper,\n            jcSwiperPagination: pagination,\n            jcSwiperSlide: slide\n        },\n        created () {\n            /**\n             * swiper :option 参数\n             * @type {{width: number, height: number, containerName: string, paginationName: string, loop: boolean, autoplay: boolean, isShowPagination: boolean, autoplayDisableOnInteraction: boolean, intervalTime: number}}\n             *\n             * containerName（必须）: swiper-container 新增的class名\n             * loop：是否连续循环滚动\n             * autoplay：是否自动滚动\n             * isShowPagination：是否显示pagination\n             * autoplayDisableOnInteraction：用户操作swiper之后，是否禁止autoplay。默认为true：停止。(如果要设置操作之后继续自动滚动，务必加上该参数)\n             * intervalTime：时间间隔\n             */\n            this.swiperOption = {\n                width: 670,\n                height: 220,\n                containerName: \'swiper-container-demo\'\n//                loop: true,\n//                autoplay: true,\n//                isShowPagination: true,\n//                autoplayDisableOnInteraction: false,\n//                intervalTime: 4000\n            };\n\n            this.swiperOption2 = {\n                width: 670,\n                height: 220,\n                containerName: \'swiper-container-demo2\',\n                loop: true,\n                autoplay: true,\n                isShowPagination: true,\n                autoplayDisableOnInteraction: false,\n                intervalTime: 4000\n            };\n\n            this.list = [{\n                name: \'1\',\n                imgUrl: require(\'@/statics/images/common/placeholder_jc.png\'),\n                sort: 1\n            }, {\n                name: \'2\',\n                imgUrl: require(\'@/statics/images/common/placeholder_jc.png\'),\n                sort: 2\n            }, {\n                name: \'3\',\n                imgUrl: require(\'@/statics/images/common/placeholder_jc.png\'),\n                sort: 3\n            }];\n\n        },\n        methods: {\n\n        }\n    };\n</script>\n\n<style scoped>\n\n</style>\n\n```\n', 4, 3, '', 0);
INSERT INTO `blog` VALUES (00008, '防ios弹出框选择效果', '模板: \n\n```\n<div class=\"from-group form-input group-0\"  id=\"io-select-id\" @click=\"openSelectType()\">\n\n<!-- 仿iOS时间选择器 -->\n<div class=\"select-type\" v-insertBody></div>\n```\n\njs\n\n```\n// 打开时间选择面板\nopenSelectType: function () {\n    var _this = this;\n    var data = this.accountType;\n    \n    setTimeout(() => {\n        var ioSelectDOM = document.querySelector(\'#io-select-id\');\n        var ioSelectId = ioSelectDOM.dataset[\'id\'];\n        new window.IosSelect(1, [data], {\n            container: \'.select-type\',   // 容器class\n            // title: \'标题\',\n            sureText: _this.$t(\'Done\'),\n            closeText: _this.$t(\'Cancel\'),\n            headerHeight: 88,               // 组件标题栏高度 可选，默认 44\n            itemHeight: 88,                 // 每个元素的高度\n            itemShowCount: 5,               // 每一列显示元素个数，超出将隐藏\n            oneLevelId: ioSelectId,         // 第一级 选中的默认值\n            showAnimate: true,               // 是否在加载数据的时候显示动画效果\n            callback: function (res) {\n                ioSelectDOM.dataset[\'id\'] = res.id;\n                setTimeout(() => {\n                    _this.form.accountType.name = res[\'value\'];\n                    _this.form.accountType.id = res[\'id\'];\n                }, 0);\n            }\n        });\n    }, 0);\n}\n```\n\n\n指令  inserBody\n\n```\nexport const insertBody = (Vue) => {\n    return Vue.directive(\'insertBody\', {\n        inserted: function (el, bind, vNode) {\n            const modalMountEl = document.querySelector(\'#app\');\n            modalMountEl.appendChild(el);\n        },\n        unbind: function (el, bind, vNode) {\n            try {\n                document.querySelector(\'#app\').removeChild(el);\n            } catch (e) {\n            \n            }\n        }\n    });\n}\n\n```\n', 8, 1, '', 0);
INSERT INTO `blog` VALUES (00009, 'toast组件', '## 方式一\ntoast/src/main.vue\n\n```\n<style lang=\"scss\" scoped>\n    .hint {\n        position: fixed;\n        top: 50%;\n        left: 50%;\n        z-index: 1000;\n        padding: 34px 30px;\n        width: 440px;\n        background: rgba(0, 0, 0, 0.7);\n        border-radius: 8px;\n        color: #fff;\n        font-size: 2.4rem;\n        line-height: 30px;\n        text-align: center;\n        transform: translate(-50%, -50%);\n        animation: showHint 0.1s;\n    }\n\n    @keyframes showHint {\n        from {transform: translate(-50%, 0);opacity:0;}\n        to {transform: translate(-50%, -50%);opacity:1;}\n    }\n</style>\n\n<template>\n    <div v-if=\"visible\" class=\"hint\">{{message}}</div>\n</template>\n\n<script>\n	export default {\n		name: \'toast\',\n		data: function () {\n			return {\n				message: \'\',\n				duration: 3000,\n				timer: null,\n				visible: false\n			};\n		},\n		methods: {\n			clearTimer () {\n				clearTimeout(this.timer);\n			},\n			startTimer () {\n				if (this.duration > 0) {\n					this.timer = setTimeout(() => {\n						this.visible = false;\n					}, this.duration);\n				}\n			}\n		},\n		mounted () {\n			this.startTimer();\n		}\n	};\n</script>\n\n```\n\ntoast/src/main.js\n```\nimport Vue from \'vue\';\nimport Main from \'./main.vue\';\n\nlet HintConstructor = Vue.extend(Main);\nlet instance;\n\nconst Toast = function (options) {\n	options = options || {};\n	if (typeof options === \'string\') {\n		options = {\n			message: options\n		};\n	}\n\n	instance = new HintConstructor({\n		data: options\n	});\n\n	instance.vm = instance.$mount();\n	document.body.appendChild(instance.vm.$el);\n	instance.vm.visible = true;\n	instance.dom = instance.vm.$el;\n	return instance.vm;\n};\n\nexport default Toast;\n```\n\ntoast/index.js文件\n```\nimport Toast from \'./src/main.js\';\n\nexport default Toast;\n```\n\n使用方式:\n\n```\nimport Toast from \'......./toast/src/main\';\nmethods: {\n   xxx: function(){\n       Toast(\'支付处理中\');\n   }\n}\n```\n\n\n## 方式二\n#### toast 文件夹目录\n- index.vue\n- toast.js\n- toast.scss\n- toast.service.js\n\n\n```\n// index.vue\n<template>\n    <div j-component class=\"j-toast\" :style=\"setToastStyle()\" v-if=\"toast.show\" :class=\"{\'top\': toast.position === \'top\', \'bottom\': toast.position === \'bottom\', \'center\': toast.position === \'center\'}\">\n        <slot><p>{{ toast.message }}</p></slot>\n    </div>\n</template>\n<style lang=\"scss\">\n    #app .j-toast {\n\n    }\n</style>\n<style lang=\"scss\" scoped>\n    @import \"toast\";\n</style>\n<script src=\"./toast.js\"></script>\n\n```\n\n```\n// toast.js\nexport default {\n    name: \'j-toast\',\n    props: {\n        toast: {\n            type: Object,\n            default: () => {}\n        }\n    },\n    methods: {\n        setToastStyle: function () {\n            let style = this.toast.style || {};\n            return style;\n        }\n    },\n    mounted () {\n        setTimeout(() => {\n            this.toast.show = false;\n            this.$el.parentNode.removeChild(this.$el);\n        }, this.toast.timeout || 2000);\n    }\n};\n\n```\n\n```\n// toast.scss\n.j-toast {\n    max-width: 80%;\n    line-height: 120%;\n    padding: 20px 20px;\n    overflow: hidden;\n    top: 50%;\n    left: 50%;\n    color: RGBA(255, 255, 255, 1);\n    position: absolute;\n    transform: translate(-50%, -50%);\n    background: RGBA(0, 0, 0, .75);\n    border-radius: 10px;\n    font-size: 2.6rem;\n    z-index: 9999;\n    &.center {\n        top: 50%;\n    }\n    &.top {\n        top: 30%;\n    }\n    &.bottom {\n        top: 80%;\n    }\n}\n\n```\n```\n// toast.service.js\nimport Vue from \'vue\';\n\nconst JToastComponent = Vue.extend(require(\'@/views/common/component/toast/index.vue\'));\nconst toast           = {\n    show: (message, timeout = 2000, position = \'top\', style) => {\n    \n        const appEle    = document.getElementById(\'app\');\n        const jToastArr = document.querySelectorAll(\'div[j-component].j-toast\');\n    \n        jToastArr.forEach(item => {\n            try {\n                item.parentNode.removeChild(item);\n            } catch (e) {\n            \n            }\n        });\n        \n        const Component = Vue.component(\'jToast\', {\n            render: (createElement) => {\n                return createElement(JToastComponent, {\n                    props: {\n                        toast: {\n                            show: true,\n                            message: message,\n                            timeout: timeout,\n                            position: position,\n                            style: style\n                        }\n                    }\n                });\n            }\n        });\n        \n        const tempMount = document.createElement(\'div\');\n        appEle.appendChild(tempMount);\n        new Component().$mount(tempMount);\n    }\n};\n\nexport default toast;\n\n```\n\n使用方式\n\n```\nimport jToast from \'@/views/common/component/toast/toast.service\';\n\njToast.show(res.message);\n```\n\n\n', 2, 1, '', 0);

-- ----------------------------
-- Table structure for blog_series
-- ----------------------------
DROP TABLE IF EXISTS `blog_series`;
CREATE TABLE `blog_series`  (
  `series_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '博客所属系列id',
  `series_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '系列名字',
  PRIMARY KEY (`series_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of blog_series
-- ----------------------------
INSERT INTO `blog_series` VALUES (1, '个人笔记');
INSERT INTO `blog_series` VALUES (2, '踩坑之路');
INSERT INTO `blog_series` VALUES (3, '程序人生');

-- ----------------------------
-- Table structure for blog_tag
-- ----------------------------
DROP TABLE IF EXISTS `blog_tag`;
CREATE TABLE `blog_tag`  (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标签id',
  `tag_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标签名称',
  PRIMARY KEY (`tag_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of blog_tag
-- ----------------------------
INSERT INTO `blog_tag` VALUES (1, '方法');
INSERT INTO `blog_tag` VALUES (2, '组件');

-- ----------------------------
-- Table structure for blog_type
-- ----------------------------
DROP TABLE IF EXISTS `blog_type`;
CREATE TABLE `blog_type`  (
  `type_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章所属分类id',
  `type_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类名称',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of blog_type
-- ----------------------------
INSERT INTO `blog_type` VALUES (1, 'Java');
INSERT INTO `blog_type` VALUES (2, '工具类');
INSERT INTO `blog_type` VALUES (3, 'JavaScript');
INSERT INTO `blog_type` VALUES (4, 'Vue');
INSERT INTO `blog_type` VALUES (5, 'Angular');
INSERT INTO `blog_type` VALUES (6, 'Android');
INSERT INTO `blog_type` VALUES (7, 'NodeJS');
INSERT INTO `blog_type` VALUES (8, 'H5');
INSERT INTO `blog_type` VALUES (9, '其他');

SET FOREIGN_KEY_CHECKS = 1;