
var projectName = '宠物医院信息管理系统';
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.jsp'
}, 
]


var indexNav = [

{
	name: '医学知识',
	url: './pages/yixuezhishi/list.jsp'
}, 
{
	name: '医生信息',
	url: './pages/yishengxinxi/list.jsp'
}, 
{
	name: '药品信息',
	url: './pages/yaopinxinxi/list.jsp'
}, 

{
	name: '新闻资讯',
	url: './pages/news/list.jsp'
},
{
	name: '留言反馈',
	url: './pages/messages/list.jsp'
}
]

var adminurl =  "http://localhost:8080/jspmjl5mx/index.jsp";

var cartFlag = false

var chatFlag = false




var menu = [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"医生","menuJump":"列表","tableName":"yisheng"}],"menu":"医生管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"医学知识","menuJump":"列表","tableName":"yixuezhishi"}],"menu":"医学知识管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"科室信息","menuJump":"列表","tableName":"keshixinxi"}],"menu":"科室信息管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"医生信息","menuJump":"列表","tableName":"yishengxinxi"}],"menu":"医生信息管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"预约挂号","menuJump":"列表","tableName":"yuyueguahao"}],"menu":"预约挂号管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"医嘱信息","menuJump":"列表","tableName":"yizhuxinxi"}],"menu":"医嘱信息管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"药品信息","menuJump":"列表","tableName":"yaopinxinxi"}],"menu":"药品信息管理"},{"child":[{"buttons":["查看","修改","删除","报表"],"menu":"订单信息","menuJump":"列表","tableName":"dingdanxinxi"}],"menu":"订单信息管理"},{"child":[{"buttons":["查看","修改","回复","删除"],"menu":"留言板管理","tableName":"messages"}],"menu":"留言板管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"新闻资讯","tableName":"news"},{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"医学知识列表","menuJump":"列表","tableName":"yixuezhishi"}],"menu":"医学知识模块"},{"child":[{"buttons":["查看","预约挂号"],"menu":"医生信息列表","menuJump":"列表","tableName":"yishengxinxi"}],"menu":"医生信息模块"},{"child":[{"buttons":["查看","购买"],"menu":"药品信息列表","menuJump":"列表","tableName":"yaopinxinxi"}],"menu":"药品信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["查看"],"menu":"预约挂号","menuJump":"列表","tableName":"yuyueguahao"}],"menu":"预约挂号管理"},{"child":[{"buttons":["查看"],"menu":"医嘱信息","menuJump":"列表","tableName":"yizhuxinxi"}],"menu":"医嘱信息管理"},{"child":[{"buttons":["查看","支付"],"menu":"订单信息","menuJump":"列表","tableName":"dingdanxinxi"}],"menu":"订单信息管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"医学知识列表","menuJump":"列表","tableName":"yixuezhishi"}],"menu":"医学知识模块"},{"child":[{"buttons":["查看","预约挂号"],"menu":"医生信息列表","menuJump":"列表","tableName":"yishengxinxi"}],"menu":"医生信息模块"},{"child":[{"buttons":["查看","购买"],"menu":"药品信息列表","menuJump":"列表","tableName":"yaopinxinxi"}],"menu":"药品信息模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"},{"backMenu":[{"child":[{"buttons":["查看","审核","医嘱"],"menu":"预约挂号","menuJump":"列表","tableName":"yuyueguahao"}],"menu":"预约挂号管理"},{"child":[{"buttons":["查看"],"menu":"医嘱信息","menuJump":"列表","tableName":"yizhuxinxi"}],"menu":"医嘱信息管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"医学知识列表","menuJump":"列表","tableName":"yixuezhishi"}],"menu":"医学知识模块"},{"child":[{"buttons":["查看","预约挂号"],"menu":"医生信息列表","menuJump":"列表","tableName":"yishengxinxi"}],"menu":"医生信息模块"},{"child":[{"buttons":["查看","购买"],"menu":"药品信息列表","menuJump":"列表","tableName":"yaopinxinxi"}],"menu":"药品信息模块"}],"hasBackLogin":"是","hasBackRegister":"是","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"医生","tableName":"yisheng"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
