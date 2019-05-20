<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>逐浪网_连尚文学旗下网站</title>
	<meta name="keywords" content="小说,小说网,玄幻小说,武侠小说,都市小说,历史小说,网络小说,言情小说,青春小说,原创网络文学"><meta name="description" content="小说阅读,精彩小说尽在逐浪网. 逐浪网提供玄幻小说,武侠小说,原创小说,网游小说,都市小说,言情小说,青春小说,历史小说,军事小说,网游小说,科幻小说,恐怖小说,首发小说,最新章节免费">
	<meta name="robots" content="all">
	<meta name="googlebot" content="all">
	<meta name="baiduspider" content="all">
	<meta http-equiv="mobile-agent" content="format=wml; url=https://m.zhulang.com/">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
	<meta name="renderer" content="webkit">

	<link rel="stylesheet" href="css/50b14134.css" >

	<script src="js/jquery-1-4dc834d16a.11.1.js" ></script>
	</head>

	<body>
		<div class="wrap">
			
						<link rel="stylesheet" href="css/ba4a1388.css" >
<div class="main topbar" id="topbar">
	<div class="main">
				<h1><a href="index.htm" >逐浪小说</a></h1>
				
				<ul class="topnav">
					<li><a href="shuku/index.html" >书库</a></li>
					
					<li><a href="comic.html" >动漫</a></li>
					<li><a href="javascript:if(confirm('http://www.xxs8.com/'))window.location='http://www.xxs8.com/'" >新小说吧</a></li>
					<li><a href="fl/fltx.html-v=201903.htm" >作者福利</a></li>
					<li><a href="login/index.html" >作家专区</a></li>
					<li class="app"><a href="app/index.htm" ><span>App下载</span></a>
						<ul class="drop-menu">
							<li>
								<a href="app/index.htm" ><span>逐浪小说</span></a>
							</li>
							<li>
								<a href="javascript:if(confirm('https://writer.zhulang.com/invite/app.html?invite=111'))window.location='https://writer.zhulang.com/invite/app.html?invite=111'" ><span>写作助手</span></a>
							</li>
						</ul>
					</li>
					<li ><a href="javascript:if(confirm('http://pay.zhulang.com/pay/index.html'))window.location='http://pay.zhulang.com/pay/index.html'" >充值</a></li>
				</ul>

				<div class="topsch" id="topsch">
					<form action="http://www.zhulang.com/search/index.html" method="post">
						<input type="text" name="k" value="" maxlength="50" placeholder="搜索书名/笔名">
						<button class="sch" type="submit"><i class="iconfont icon-search"></i></button>
						<button class="cls" type="reset"><i class="iconfont icon-delete"></i></button>
					</form>
				</div>
				    <script>
            var zluser = {
              nick: "",
              uid : "",
              type : "",
              avatar : "image/200.gif.png"
              }
          </script>
				<!-- 未登录状态 -->
					<div class="user">
						<a href="login/index.html" >
							<img src="image/200.gif.png" >
						</a>
						<ul class="drop-menu">
							
							<li>
								<a href="login/index.html" >
									<i class="iconfont icon-user"></i>
									<span>立即登录</span>
								</a>
							</li>
							
						</ul>
					</div>
					<!-- 未登录状态结束 -->
								</div>
			</div><!-- end of topbar -->
			
				<script>
					$(function(){function e(){window.zluser&&zluser.uid&&($.ajax({type:"get",url:"ajax/Msg/getUnreadNum.html"/*tpa=http://www.zhulang.com/ajax/Msg/getUnreadNum.html*/,dataType:"jsonp",success:function(e){if(e){var s=1*e.total,o=$("#topbar .user .msgnum");s?(s=s>99?"99+":s,o.text(s).show()):o.text("").hide()}}}),setTimeout(function(){e()},18e4))}var s=(document,$("body"),$("#topsch")),o=0;s.find("input").on("focus",function(){s.addClass("focused"),$("#topbar").find("menu-on").removeClass("menu-on")}).on("blur",function(){clearTimeout(o),o=setTimeout(function(){s.removeClass("focused")},100)});var t=$("#topbar"),n=0,u="menu-on";t.find("404.html"/*tpa=http://www.zhulang.com/.app,.user*/).on("mouseenter",function(e){var s=$(this),o=s.attr("class");clearTimeout(n),/app/.test(o)&&t.find(".user").removeClass(u),/user/.test(o)&&t.find(".app").removeClass(u),t.addClass("overvis"),$(this).addClass(u)}).on("mouseleave",function(){var e=$(this);clearTimeout(n),n=setTimeout(function(){e.removeClass(u),t.removeClass("overvis")},500)}),e()});
				</script>
						<div class="sec sec1">
				<style>
				.topbar .topsch.focused input {
					    width: 176px;
					}
				</style>

				<div class="topbnr" id="topbnr">
					<!-- 如果没有广告 -->
					<!-- <h2 class="site main"><span>逐浪 连尚文学旗下原创平台</span></h2> -->
					
					<!-- 广告内容开始 -->
					<div class="mbg"></div>
					<div class="main">

						<div>
						<a href="javascript:if(confirm('https://m.zhulang.com/zt/humiao.html'))window.location='https://m.zhulang.com/zt/humiao.html'" >
						<img src="image/8de661cd.png" >
					    </a>
						</div>

						<div>
						<a href="javascript:if(confirm('https://m.zhulang.com/zt/gechang.html'))window.location='https://m.zhulang.com/zt/gechang.html'" >
						<img src="image/657725bc.jpg" >
					    </a>
						</div>

						<div>
						<a href="javascript:if(confirm('https://m.zhulang.com/zt/zhounian.html?from=zhulang'))window.location='https://m.zhulang.com/zt/zhounian.html?from=zhulang'" >
						<img src="image/7806aaf4.jpg" >
					    </a>
						</div>
						<div>
						<a href="javascript:if(confirm('https://i.zhulang.com/resource/da4e3dc9/rwd/index.html'))window.location='https://i.zhulang.com/resource/da4e3dc9/rwd/index.html'" >
						<img src="image/3d8d3bdb.jpg" >
					    </a>
						</div>

						<div>
						<a href="571724/index.htm" >
							<img src="image/87ea803d.jpg" >
						</a>
						</div>
					</div>
					<!-- 广告内容结束 -->

				</div>
				
				<div class="main">
					<ul class="clearfix">
												<li>
							<a href="bookmain.jsp?bid=1" >
								<dl>
									<dt><img src="image/586262.jpg" ></dt>
									<dd>
										<div>
											<h3 title="仙尊破魔">仙尊破魔</h3>
											<em>童子佬</em>
										</div>
										
									</dd>
								</dl>
							</a>
						</li>
												<li>
							<a href="bookmain.jsp?bid=2" >
								<dl>
									<dt><img src="image/382194.jpg" ></dt>
									<dd>
										<div>
											<h3 title="直播之狂暴升级">直播之狂暴升级</h3>
											<em>看电视吃瓜子</em>
										</div>
										
									</dd>
								</dl>
							</a>
						</li>
												<li>
							<a href="bookmain.jsp?bid=3" >
								<dl>
									<dt><img src="image/661593.jpg" ></dt>
									<dd>
										<div>
											<h3 title="争霸仙途">争霸仙途</h3>
											<em>品茗闲人</em>
										</div>
										
									</dd>
								</dl>
							</a>
						</li>
												<li>
							<a href="bookmain.jsp?bid=4" >
								<dl>
									<dt><img src="image/415816.jpg" ></dt>
									<dd>
										<div>
											<h3 title="万古狂尊">万古狂尊</h3>
											<em>一壶酒</em>
										</div>
										
									</dd>
								</dl>
							</a>
						</li>
												<li>
							<a href="bookmain.jsp?bid=5" >
								<dl>
									<dt><img src="image/473870.jpg" ></dt>
									<dd>
										<div>
											<h3 title="太古雷龙诀">太古雷龙诀</h3>
											<em>细浪</em>
										</div>
										
									</dd>
								</dl>
							</a>
						</li>
												<li>
							<a href="bookmain.jsp?bid=6" >
								<dl>
									<dt><img src="image/643960.jpg" ></dt>
									<dd>
										<div>
											<h3 title="万界情绪收集商">万界情绪收集商</h3>
											<em>红烧块鱼</em>
										</div>
										
									</dd>
								</dl>
							</a>
						</li>
												
					</ul>
				</div>	
			</div><!-- end of sec1 -->

			<div class="midnav" id="midnav">
				<div class="main">
					<ul>
						<li data-dest="sec2" class="cur"><a href="javascript:">重磅推荐</a></li>
						<li data-dest="sec3"><a href="javascript:">排行榜</a></li>
						<li data-dest="sec4"><a href="javascript:">男频精选</a></li>
						<li data-dest="sec5"><a href="javascript:">女频精选</a></li>
						<li data-dest="sec6"><a href="javascript:">优秀获奖作品</a></li>
					</ul>
				</div>
			</div><!-- end of midnav -->
			<div class="sec sec2">
				<div class="main">
				<h2 class="ch2">
					重磅推荐
				</h2>
				<ul class="bklist clearfix">
										<li>
						<a href="bookmain.jsp?bid=7" >
							<dl>
								<dt><img src="image/635357.jpg" ></dt>
								<dd>
									<h3 title="鬼媳妇">鬼媳妇</h3>
									<em class="author">雨天清河</em>
									<p>
										我十岁那一年，村里闹了饥荒，爷爷为某活路，无意间收下了狐仙的...									</p>
									<span class="tag">
										灵异									</span>
								</dd>
							</dl>
						</a>
					</li>
										<li>
						<a href="bookmain.jsp?bid=8" >
							<dl>
								<dt><img src="image/640747.jpg" ></dt>
								<dd>
									<h3 title="凡道至尊">凡道至尊</h3>
									<em class="author">人匕十杰</em>
									<p>
										逆天的口号从不宣之于口，但凭实力将这天踩在脚下！
一个机缘...									</p>
									<span class="tag">
										仙侠									</span>
								</dd>
							</dl>
						</a>
					</li>
										<li>
						<a href="bookmain.jsp?bid=9" >
							<dl>
								<dt><img src="image/588643.jpg" ></dt>
								<dd>
									<h3 title="武炼丹尊">武炼丹尊</h3>
									<em class="author">免费的午餐</em>
									<p>
										一世丹尊、苏凌，偶获上古至宝天魔珠，却惨遭奸人围攻陨落。
...									</p>
									<span class="tag">
										玄幻									</span>
								</dd>
							</dl>
						</a>
					</li>
										<li>
						<a href="bookmain.jsp?bid=10" >
							<dl>
								<dt><img src="image/417818.jpg" ></dt>
								<dd>
									<h3 title="荒天神帝">荒天神帝</h3>
									<em class="author">枇杷</em>
									<p>
										持神器、御灵兽、战苍天、斗神魔，且看废土之中走出的少年如何创...									</p>
									<span class="tag">
										玄幻									</span>
								</dd>
							</dl>
						</a>
					</li>
										<li>
						<a href="bookmain.jsp?bid=11" >
							<dl>
								<dt><img src="image/645180.jpg" ></dt>
								<dd>
									<h3 title="修真三国">修真三国</h3>
									<em class="author">郭李配</em>
									<p>
										这是来自异界的三国，同样的热血同样的激情。在这里，不再有郭嘉...									</p>
									<span class="tag">
										玄幻									</span>
								</dd>
							</dl>
						</a>
					</li>
										<li>
						<a href="bookmain.jsp?bid=12" >
							<dl>
								<dt><img src="image/633946.jpg" ></dt>
								<dd>
									<h3 title="妖妻">妖妻</h3>
									<em class="author">我会开拖拉机</em>
									<p>
										一次偶然，我结识狐仙，从此，立堂口，破红尘，收山神当弟子，奴...									</p>
									<span class="tag">
										灵异									</span>
								</dd>
							</dl>
						</a>
					</li>
									</ul>
				</div>
			</div><!-- end of sec2 -->
			<div class="sec sec3" id="sec3">
				<div class="main ranks clearfix">
					<div class="rankl">
						<h3>男频榜单</h3>
						<ol>
																					<li>
								<a href="bookmain.jsp?bid=13" >
								<em class="num">1.</em>
								<dl>
									<dt><img src="image/640793.jpg" ></dt>
									<dd>
										<h4 title="万魔龙帝">万魔龙帝</h4>
										<span>玄幻/关月</span>
									</dd>
								</dl>
								</a>
							</li>
																					<li>
								<a href="bookmain.jsp?bid=14" >
								<em class="num">2.</em>
								<dl>
									<dt><img src="image/602365.jpg" ></dt>
									<dd>
										<h4 title="清末小侯爷">清末小侯爷</h4>
										<span>历史/炎萌萌主</span>
									</dd>
								</dl>
								</a>
							</li>
																					<li>
								<a href="bookmain.jsp?bid=15" >
								<em class="num">3.</em>
								<dl>
									<dt><img src="image/634314.jpg" ></dt>
									<dd>
										<h4 title="剑翱九霄">剑翱九霄</h4>
										<span>玄幻/云傲天</span>
									</dd>
								</dl>
								</a>
							</li>
																					<li>
								<a href="bookmain.jsp?bid=16" >
								<em class="num">4.</em>
								<dl>
									<dt><img src="image/643960.jpg" ></dt>
									<dd>
										<h4 title="万界情绪收集商">万界情绪收集商</h4>
										<span>都市/红烧块鱼</span>
									</dd>
								</dl>
								</a>
							</li>
																					<li>
								<a href="bookmain.jsp?bid=17" >
								<em class="num">5.</em>
								<dl>
									<dt><img src="image/619264.jpg" ></dt>
									<dd>
										<h4 title="重生之逆流人生">重生之逆流人生</h4>
										<span>都市/揪揪糖</span>
									</dd>
								</dl>
								</a>
							</li>
																				</ol>
					</div>
					<div class="rankl girl">
						<h3>女频榜单</h3>
						<ol>
																					<li>
								<a href="bookmain.jsp?bid=18" >
								<em class="num">1.</em>
								<dl>
									<dt><img src="image/647997.jpg" ></dt>
									<dd>
										<h4 title="医触即发">医触即发</h4>
										<span>现代言情/紫菲子</span>
									</dd>
								</dl>
								</a>
							</li>
																					<li>
								<a href="bookmain.jsp?bid=19" >
								<em class="num">2.</em>
								<dl>
									<dt><img src="image/662555.jpg" ></dt>
									<dd>
										<h4 title="心理治愈师">心理治愈师</h4>
										<span>悬疑灵异/艾镜</span>
									</dd>
								</dl>
								</a>
							</li>
																					<li>
								<a href="bookmain.jsp?bid=20" >
								<em class="num">3.</em>
								<dl>
									<dt><img src="image/620164.jpg" ></dt>
									<dd>
										<h4 title="医念永恒">医念永恒</h4>
										<span>现代言情/江月初年</span>
									</dd>
								</dl>
								</a>
							</li>
																					<li>
								<a href="bookmain.jsp?bid=21" >
								<em class="num">4.</em>
								<dl>
									<dt><img src="image/659105.jpg" ></dt>
									<dd>
										<h4 title="农村少女奋斗记">农村少女奋斗记</h4>
										<span>短篇/一生追求卓越</span>
									</dd>
								</dl>
								</a>
							</li>
																					<li>
								<a href="bookmain.jsp?bid=22" >
								<em class="num">5.</em>
								<dl>
									<dt><img src="image/647730.jpg" ></dt>
									<dd>
										<h4 title="山河昭彰">山河昭彰</h4>
										<span>现代言情/月望兔</span>
									</dd>
								</dl>
								</a>
							</li>
																				</ol>
					</div>
					<div class="rankl">
						<h3>热销榜</h3>
						<ol>
																					<li>
								<a href="bookmain.jsp?bid=23" >
								<em class="num">1.</em>
								<dl>
									<dt><img src="image/393057.jpg" ></dt>
									<dd>
										<h4 title="凌天战神">凌天战神</h4>
										<span>玄幻/万木峥嵘</span>
									</dd>
								</dl>
								</a>
							</li>
																					<li>
								<a href="bookmain.jsp?bid=24" >
								<em class="num">2.</em>
								<dl>
									<dt><img src="image/434683.jpg" ></dt>
									<dd>
										<h4 title="武神圣帝">武神圣帝</h4>
										<span>玄幻/翎晨</span>
									</dd>
								</dl>
								</a>
							</li>
																					<li>
								<a href="bookmain.jsp?bid=25" >
								<em class="num">3.</em>
								<dl>
									<dt><img src="image/437074.jpg" ></dt>
									<dd>
										<h4 title="龙魂战尊">龙魂战尊</h4>
										<span>玄幻/独孤求醉</span>
									</dd>
								</dl>
								</a>
							</li>
																					<li>
								<a href="bookmain.jsp?bid=26" >
								<em class="num">4.</em>
								<dl>
									<dt><img src="image/525900.jpg" ></dt>
									<dd>
										<h4 title="人屠归来">人屠归来</h4>
										<span>都市/银眸沙皇</span>
									</dd>
								</dl>
								</a>
							</li>
																					<li>
								<a href="bookmain.jsp?bid=27" >
								<em class="num">5.</em>
								<dl>
									<dt><img src="image/393633.jpg" ></dt>
									<dd>
										<h4 title="绝世符神">绝世符神</h4>
										<span>玄幻/东方行云</span>
									</dd>
								</dl>
								</a>
							</li>
																				</ol>
					</div>

					<div class="rankr" id="ranktab">
						<h3>
							<span class="cur">收藏榜</span>
							<span>打赏榜</span>
							<span>鲜花榜</span>
						</h3>
						<div class="rcon">
							<div class="rinner">
								<ol>
																																								<li>
												<a href="347472/index.htm" >
												<em>1.</em>
												<b title="合租医仙">合租医仙</b>
												<span>白纸一箱</span>
												</a>
											</li>
																															<li>
												<a href="382118/index.htm" >
												<em>2.</em>
												<b title="巅峰强少">巅峰强少</b>
												<span>梦岂</span>
												</a>
											</li>
																															<li>
												<a href="574639/index.htm" >
												<em>3.</em>
												<b title="女总裁的神级狂兵">女总裁的神级狂兵</b>
												<span>权轻天下</span>
												</a>
											</li>
																															<li>
												<a href="450296/index.htm" >
												<em>4.</em>
												<b title="元尊">元尊</b>
												<span>天蚕土豆</span>
												</a>
											</li>
																															<li>
												<a href="659657/index.htm" >
												<em>5.</em>
												<b title="采花神医在乡村">采花神医在乡村</b>
												<span>四季灯火明</span>
												</a>
											</li>
																															<li>
												<a href="515694/index.htm" >
												<em>6.</em>
												<b title="最强医仙">最强医仙</b>
												<span>奇犽</span>
												</a>
											</li>
																															<li>
												<a href="557234/index.htm" >
												<em>7.</em>
												<b title="无敌神王">无敌神王</b>
												<span>月亮之上</span>
												</a>
											</li>
																															<li>
												<a href="659544/index.htm" >
												<em>8.</em>
												<b title="都市之佣兵战神">都市之佣兵战神</b>
												<span>梦岂</span>
												</a>
											</li>
																															<li>
												<a href="659659/index.htm" >
												<em>9.</em>
												<b title="全职狂医">全职狂医</b>
												<span>位面史官</span>
												</a>
											</li>
																															<li>
												<a href="292926/index.htm" >
												<em>10.</em>
												<b title="武神天下">武神天下</b>
												<span>禹枫</span>
												</a>
											</li>
																																					</ol>
								<ol>
																																								<li>
												<a href="555300/index.htm" >
												<em>1.</em>
												<b title="三国大人物">三国大人物</b>
												<span>随风皓月</span>
												</a>
											</li>
																															<li>
												<a href="661561/index.htm" >
												<em>2.</em>
												<b title="覆宇">覆宇</b>
												<span>维系</span>
												</a>
											</li>
																															<li>
												<a href="513820/index.htm" >
												<em>3.</em>
												<b title="仙魔实录">仙魔实录</b>
												<span>易鹰</span>
												</a>
											</li>
																															<li>
												<a href="635718/index.htm" >
												<em>4.</em>
												<b title="极道仙王">极道仙王</b>
												<span>高墙卫士</span>
												</a>
											</li>
																															<li>
												<a href="671802/index.htm" >
												<em>5.</em>
												<b title="玄天道境">玄天道境</b>
												<span>凉玖啊</span>
												</a>
											</li>
																															<li>
												<a href="587813/index.htm" >
												<em>6.</em>
												<b title="焚天龙祖">焚天龙祖</b>
												<span>金陵四公子</span>
												</a>
											</li>
																															<li>
												<a href="540041/index.htm" >
												<em>7.</em>
												<b title="天道启灵师">天道启灵师</b>
												<span>竹间小兔</span>
												</a>
											</li>
																															<li>
												<a href="609001/index.htm" >
												<em>8.</em>
												<b title="龙云武帝">龙云武帝</b>
												<span>北一</span>
												</a>
											</li>
																															<li>
												<a href="526483/index.htm" >
												<em>9.</em>
												<b title="弑神天路">弑神天路</b>
												<span>罪恶之城</span>
												</a>
											</li>
																															<li>
												<a href="585973/index.htm" >
												<em>10.</em>
												<b title="异界无敌奶爸">异界无敌奶爸</b>
												<span>令多情</span>
												</a>
											</li>
																																					</ol>
								<ol>
																																								<li>
												<a href="654381/index.htm" >
												<em>1.</em>
												<b title="帝范">帝范</b>
												<span>我爱吃排骨</span>
												</a>
											</li>
																															<li>
												<a href="629543/index.htm" >
												<em>2.</em>
												<b title="女总裁的逍遥兵王">女总裁的逍遥兵王</b>
												<span>红薯乔二爷</span>
												</a>
											</li>
																															<li>
												<a href="622933/index.htm" >
												<em>3.</em>
												<b title="最牛透视">最牛透视</b>
												<span>蜂蜜面包</span>
												</a>
											</li>
																															<li>
												<a href="633946/index.htm" >
												<em>4.</em>
												<b title="妖妻">妖妻</b>
												<span>我会开拖拉机</span>
												</a>
											</li>
																															<li>
												<a href="628884/index.htm" >
												<em>5.</em>
												<b title="神枪惊世">神枪惊世</b>
												<span>黑瞎子</span>
												</a>
											</li>
																															<li>
												<a href="635357/index.htm" >
												<em>6.</em>
												<b title="鬼媳妇">鬼媳妇</b>
												<span>雨天清河</span>
												</a>
											</li>
																															<li>
												<a href="642537/index.htm" >
												<em>7.</em>
												<b title="剑之使徒">剑之使徒</b>
												<span>老萌新</span>
												</a>
											</li>
																															<li>
												<a href="648148/index.htm" >
												<em>8.</em>
												<b title="最强天帝">最强天帝</b>
												<span>年华本尊</span>
												</a>
											</li>
																															<li>
												<a href="635718/index.htm" >
												<em>9.</em>
												<b title="极道仙王">极道仙王</b>
												<span>高墙卫士</span>
												</a>
											</li>
																															<li>
												<a href="522198/index.htm" >
												<em>10.</em>
												<b title="在荒岛求生的日子">在荒岛求生的日子</b>
												<span>秋寒叶</span>
												</a>
											</li>
																																					</ol>
							</div>
						</div><!-- end of rcon -->
					</div>
				</div>
			</div><!-- end of sec3 -->

			<div class="sec sec4" id="sec4">
				<div class="main boy-rcm">
					<h2 class="ch2">男频精选</h2>
					<ul class="bklist clearfix">
												<li>
							<a href="bookmain.jsp?bid=28" >
								<dl>
									<dt><img src="image/653674.jpg" ></dt>
									<dd>
										<h3 title="布衣神卦">布衣神卦</h3>
										<em class="author">火了大宝剑</em>
									</dd>
								</dl>
							</a>
						</li>
												<li>
							<a href="bookmain.jsp?bid=29" >
								<dl>
									<dt><img src="image/665440.jpg" ></dt>
									<dd>
										<h3 title="窃朝">窃朝</h3>
										<em class="author">向右看</em>
									</dd>
								</dl>
							</a>
						</li>
												<li>
							<a href="bookmain.jsp?bid=30" >
								<dl>
									<dt><img src="image/666729.jpg" ></dt>
									<dd>
										<h3 title="典当聊天群">典当聊天群</h3>
										<em class="author">呓木风雨</em>
									</dd>
								</dl>
							</a>
						</li>
												<li>
							<a href="bookmain.jsp?bid=31" >
								<dl>
									<dt><img src="image/665600.jpg" ></dt>
									<dd>
										<h3 title="八界幼儿园">八界幼儿园</h3>
										<em class="author">大胖罗兜</em>
									</dd>
								</dl>
							</a>
						</li>
												<li>
							<a href="bookmain.jsp?bid=32" >
								<dl>
									<dt><img src="image/662232.jpg" ></dt>
									<dd>
										<h3 title="符道至尊">符道至尊</h3>
										<em class="author">一页沧海</em>
									</dd>
								</dl>
							</a>
						</li>
												<li>
							<a href="bookmain.jsp?bid=33" >
								<dl>
									<dt><img src="image/669383.jpg" ></dt>
									<dd>
										<h3 title="厨神">厨神</h3>
										<em class="author">桃源公子</em>
									</dd>
								</dl>
							</a>
						</li>
											</ul>
					<div class="rcmbtm clearfix">
						<div class="rcmlist">
							<h3>
							<span>仙侠</span>
							</h3>
							<ul>
																<li>
									<a href="663484/index.htm" >
										<b title="最强直男系统">最强直男系统</b>
										<span>吃焙子</span>
									</a>
								</li>
																<li>
									<a href="664773/index.htm" >
										<b title="九鼎风云录">九鼎风云录</b>
										<span>作君</span>
									</a>
								</li>
																<li>
									<a href="650105/index.htm" >
										<b title="练气修仙">练气修仙</b>
										<span>沉途</span>
									</a>
								</li>
															</ul>
						</div>
	
						<div class="rcmlist">
							<h3>
							<span>悬疑</span>
							</h3>
							<ul>
																<li>
									<a href="657249/index.htm" >
										<b title="茅山废柴道士">茅山废柴道士</b>
										<span>鬼奇谈</span>
									</a>
								</li>
																<li>
									<a href="669534/index.htm" >
										<b title="命犯女鬼">命犯女鬼</b>
										<span>安静国度</span>
									</a>
								</li>
																<li>
									<a href="665063/index.htm" >
										<b title="示灵录">示灵录</b>
										<span>清风轻抚</span>
									</a>
								</li>
															</ul>
						</div>
	
						<div class="rcmlist">
							<h3>
							<span>都市</span>
							</h3>
							<ul>
																<li>
									<a href="665602/index.htm" >
										<b title="都市之笑面勇者">都市之笑面勇者</b>
										<span>笑脸面具</span>
									</a>
								</li>
																<li>
									<a href="666875/index.htm" >
										<b title="打工吧天师！">打工吧天师！</b>
										<span>黄半仙家的橘猫</span>
									</a>
								</li>
																<li>
									<a href="659441/index.htm" >
										<b title="绝世医仙">绝世医仙</b>
										<span>渡鸟</span>
									</a>
								</li>
															</ul>
						</div>
	
						<div class="rcmlist">
							<h3>
							<span>玄幻</span>
							</h3>
							<ul>
																<li>
									<a href="662917/index.htm" >
										<b title="家师想杀我">家师想杀我</b>
										<span>笔仙作画</span>
									</a>
								</li>
																<li>
									<a href="632814/index.htm" >
										<b title="天虎修仙传">天虎修仙传</b>
										<span>梦中的咖啡</span>
									</a>
								</li>
																<li>
									<a href="662765/index.htm" >
										<b title="我的记忆是外挂">我的记忆是外挂</b>
										<span>青春遗忘</span>
									</a>
								</li>
															</ul>
						</div>
					</div>
				</div>
			</div><!-- end of sec4 -->

			<div class="sec sec5" id="sec5">
				<div class="main girl-rcm">
					<h2 class="ch2">女频精选</h2>
					<ul class="bklist clearfix">
												<li>
							<a href="bookmain.jsp?bid=34" >
								<dl>
									<dt><img src="image/672376.jpg" ></dt>
									<dd>
										<h3 title="龙王胎">龙王胎</h3>
										<em class="author">银花火树</em>
									</dd>
								</dl>
							</a>
						</li>
												<li>
							<a href="bookmain.jsp?bid=35" >
								<dl>
									<dt><img src="image/628149.jpg" ></dt>
									<dd>
										<h3 title="重生之阴阳女术师">重生之阴阳女术师</h3>
										<em class="author">木亦同</em>
									</dd>
								</dl>
							</a>
						</li>
												<li>
							<a href="bookmain.jsp?bid=36" >
								<dl>
									<dt><img src="image/577019.jpg" ></dt>
									<dd>
										<h3 title="萌宝归来：首席大人宠上瘾">萌宝归来：首席大人宠上瘾</h3>
										<em class="author">淼淼测一下</em>
									</dd>
								</dl>
							</a>
						</li>
												<li>
							<a href="bookmain.jsp?bid=37" >
								<dl>
									<dt><img src="image/655062.jpg" ></dt>
									<dd>
										<h3 title="暖婚似火：傅少深深宠">暖婚似火：傅少深深宠</h3>
										<em class="author">寥寥四月天</em>
									</dd>
								</dl>
							</a>
						</li>
												<li>
							<a href="bookmain.jsp?bid=38" >
								<dl>
									<dt><img src="image/647194.jpg" ></dt>
									<dd>
										<h3 title="爱妃别想逃，乖乖束手就擒">爱妃别想逃，乖乖束手就擒</h3>
										<em class="author">吾乃红妆</em>
									</dd>
								</dl>
							</a>
						</li>
												<li>
							<a href="bookmain.jsp?bid=39" >
								<dl>
									<dt><img src="image/647369.jpg" ></dt>
									<dd>
										<h3 title="总裁归来：钟少请自重">总裁归来：钟少请自重</h3>
										<em class="author">林蒙水</em>
									</dd>
								</dl>
							</a>
						</li>
											</ul>

					<div class="rcmbtm clearfix">
						<div class="rcmlist">
							<h3>
								<span>武侠</span>仙侠
							</h3>
							<ul>
																<li>
									<a href="javascript:if(confirm('http://www.xxs8.com/577297/'))window.location='http://www.xxs8.com/577297/'" >
										<b title="妖孽小姐太嚣张">妖孽小姐太嚣张</b>
										<span>木子李雅涵</span>
									</a>
								</li>
																<li>
									<a href="javascript:if(confirm('http://www.xxs8.com/652855/'))window.location='http://www.xxs8.com/652855/'" >
										<b title="江湖之和成天下">江湖之和成天下</b>
										<span>lu王</span>
									</a>
								</li>
																<li>
									<a href="javascript:if(confirm('http://www.xxs8.com/644106/'))window.location='http://www.xxs8.com/644106/'" >
										<b title="浴火重生：毒医倾城">浴火重生：毒医倾城</b>
										<span>司徒曜月</span>
									</a>
								</li>
															</ul>
						</div>
	
						<div class="rcmlist">
							<h3>
							<span>玄幻</span>异能
							</h3>
							<ul>
																<li>
									<a href="javascript:if(confirm('http://www.xxs8.com/568987/'))window.location='http://www.xxs8.com/568987/'" >
										<b title="废物三小姐：帝尊，请自重">废物三小姐：帝尊，请自重</b>
										<span>落水三千</span>
									</a>
								</li>
																<li>
									<a href="javascript:if(confirm('http://www.xxs8.com/672373/'))window.location='http://www.xxs8.com/672373/'" >
										<b title="女帝本色之魔道之母">女帝本色之魔道之母</b>
										<span>冰滴子</span>
									</a>
								</li>
																<li>
									<a href="javascript:if(confirm('http://www.xxs8.com/646581/'))window.location='http://www.xxs8.com/646581/'" >
										<b title="烤羊肉的少女修仙了">烤羊肉的少女修仙了</b>
										<span>菓子</span>
									</a>
								</li>
															</ul>
						</div>
	
						<div class="rcmlist">
							<h3>
							<span>古代</span>言情
							</h3>
							<ul>
																<li>
									<a href="javascript:if(confirm('http://www.xxs8.com/575514/'))window.location='http://www.xxs8.com/575514/'" >
										<b title="逃婚王妃：王爷，请留步">逃婚王妃：王爷，请留步</b>
										<span>驼铃</span>
									</a>
								</li>
																<li>
									<a href="javascript:if(confirm('http://www.xxs8.com/667504/'))window.location='http://www.xxs8.com/667504/'" >
										<b title="重生之独宠太子妃">重生之独宠太子妃</b>
										<span>云梦潇潇</span>
									</a>
								</li>
																<li>
									<a href="javascript:if(confirm('http://www.xxs8.com/633013/'))window.location='http://www.xxs8.com/633013/'" >
										<b title="纨绔狂妃:天才炼丹师">纨绔狂妃:天才炼丹师</b>
										<span>娇花闲迟</span>
									</a>
								</li>
															</ul>
						</div>
	
						<div class="rcmlist">
							<h3>
							<span>现代</span>言情
							</h3>
							<ul>
																<li>
									<a href="javascript:if(confirm('http://www.xxs8.com/671680/'))window.location='http://www.xxs8.com/671680/'" >
										<b title="遇见，何boss">遇见，何boss</b>
										<span>毛麻</span>
									</a>
								</li>
																<li>
									<a href="javascript:if(confirm('http://www.xxs8.com/669049/'))window.location='http://www.xxs8.com/669049/'" >
										<b title="豪门枭宠：爹地，亲一个">豪门枭宠：爹地，亲一个</b>
										<span>花满碧落</span>
									</a>
								</li>
																<li>
									<a href="659240/index.htm" >
										<b title="亿万娇妻：历少深深宠">亿万娇妻：历少深深宠</b>
										<span>一只甜芒</span>
									</a>
								</li>
															</ul>
						</div>
					</div>
				</div>
			</div><!-- end of sec5 -->

			<div class="sec sec6" id="sec6">
				<div class="main">
					<h2 class="ch2">会员作品</h2>
					<ul class="bklist clearfix">
												<li>
							<a href="bookmain.jsp?bid=40" >
								<dl>
									<dt><img src="image/653788.jpg" ></dt>
									<dd>
										<h3 title="大道致远">大道致远</h3>
										<em class="author">梦竟然</em>
									</dd>
								</dl>
							</a>
						</li>
												<li>
							<a href="bookmain.jsp?bid=41" >
								<dl>
									<dt><img src="image/591207.jpg" ></dt>
									<dd>
										<h3 title="维和先锋">维和先锋</h3>
										<em class="author">蓝盔战歌</em>
									</dd>
								</dl>
							</a>
						</li>
												<li>
							<a href="bookmain.jsp?bid=42" >
								<dl>
									<dt><img src="image/607056.jpg" ></dt>
									<dd>
										<h3 title="清莲">清莲</h3>
										<em class="author">布衣法曹</em>
									</dd>
								</dl>
							</a>
						</li>
												<li>
							<a href="bookmain.jsp?bid=43" >
								<dl>
									<dt><img src="image/557329.jpg" ></dt>
									<dd>
										<h3 title="河庄雄起">河庄雄起</h3>
										<em class="author">笑波客</em>
									</dd>
								</dl>
							</a>
						</li>
												<li>
							<a href="bookmain.jsp?bid=44" >
								<dl>
									<dt><img src="image/595891.jpg" ></dt>
									<dd>
										<h3 title="红旗飘扬">红旗飘扬</h3>
										<em class="author">火树</em>
									</dd>
								</dl>
							</a>
						</li>
												<li>
							<a href="bookmain.jsp?bid=45" >
								<dl>
									<dt><img src="image/557329.jpg" ></dt>
									<dd>
										<h3 title="河庄雄起">河庄雄起</h3>
										<em class="author">笑波客</em>
									</dd>
								</dl>
							</a>
						</li>
											</ul>
				</div>
			</div>
			<!-- end of sec6 -->
              <!-- 
			<div class="appbar">
				<a href="app/index.htm" >
				<div class="appintro">
					<div class="txt">
						<p>下载逐浪APP，随时随地看/写小说</p>
						<span>超过50w原创作品，每周持续上新</span>
						<em class="btn android-btn"><i class="iconfont icon-android"></i> Android</em>
						<em class="btn apple-btn"><i class="iconfont icon-apple"></i> iPhone</em>
					</div>
				</div>
				</a>
			</div>
			 -->
			<!-- end of appbar -->
         <!-- 
			<div class="main footer">
				<div  class="inner-link">  <a href="help/clear.html" >联系我们</a> 
				</div>
				<div class="copyrights">Copyright &copy; <script>document.write((new Date).getFullYear())</script> zhulang.com, All Rights Reserved. <a target="_blank" href="index.htm" >南京大众书网图书文化有限公司</a>版权所有 未经书面许可不得复制转载。</div>
				<div class="add_service">
					<div> 增值电信业务经营许可证苏B2-20130019 <a target="_blank" href="javascript:if(confirm('http://www.miibeian.gov.cn/'))window.location='http://www.miibeian.gov.cn/'" >苏网文[2016]5224-123号</a> 新出网证（苏）字0027号　</div>
					<form action="http://js.cyberpolice.cn/servlet/PoliceServlet" name="bjgt">
						<a href="javascript:if(confirm('http://sq.ccm.gov.cn/ccnt/sczr/service/business/emark/toDetail/82EE5D7E12564ABB935A02DE3D2E259B'))window.location='http://sq.ccm.gov.cn/ccnt/sczr/service/business/emark/toDetail/82EE5D7E12564ABB935A02DE3D2E259B'" ></a> 
						<input type="image" src="../images.zhulang.com/GT60_68.gif" >
						<input type="hidden" name="ip" value="202.102.83.237">
						<input type="hidden" name="typeNum" value="01">
						<a href="javascript:if(confirm('http://auth.jsia.org.cn/auth.aspx?domain_id=51'))window.location='http://auth.jsia.org.cn/auth.aspx?domain_id=51'" ></a>
						<span style="margin-left: 18px">
							<script id="jsgovicon" src="js/govicon.js-siteId=226cbd96aa434f6da9834e05c58d04bf&width=36&height=50&type=1" ></script>
						</span>
					</form>
				</div>
			</div>
			 -->
			<!-- end of footer -->






			
		</div><!-- end of wrap -->
		
		<script src="js/79de814e.js-name=lazyload" ></script>
		<script src="js/1e75ff61.js" ></script>
		
		<script type="text/javascript">
			setTimeout(function() {
				PicLazyUtil.init(300);
			}, 1e2);

			$(function() {
				

				$('#midnav').on('click', 'li', function() {
					var li = $(this),
						dest = li.data('dest'),
						div = $('#' + dest);
					$("html,body").animate({
						scrollTop: div.offset().top
					}, 400);

				})

				$('#ranktab').on('click', 'h3 span', function(e) {
					var tab = $(this),
						idx = tab.index();
					if (tab.hasClass('cur')) return;
					tab.addClass('cur').siblings('span').removeClass('cur');
					$('#ranktab').find('.rcon').attr('class', 'rcon c' + idx);
				});

				function initTopBnr(){
						var topBnr = $('#topbnr');
						var bnrs = topBnr.find('.main div');
						var firstEle = bnrs.eq(0);
						firstEle.length && transBgViaImage(firstEle);

						if(bnrs.length > 1){
							initSlider()
						}
					}

					

					function initSlider(){
						var slider = $('#topbnr .main').bxSlider({
			            mode: 'horizontal',
			            captions: 0,
			            auto: true,
			            pause: 6e3,
			            speed : 700,
			            //autoHover : true,
			            autoDelay: 2e3,
			            onSlideBefore : function(ele,oldIndex,newIndex){
			            	transBgViaImage(ele);
			            },
			            onSliderLoad : function(currentIndex){
			            	
			            }
			        });
					}
					

			        function transBgViaImage(ele){
			        	var bnr = $('#topbnr');
			        	var mbg = bnr.find('.mbg');
			        	var imgBgc = ele.find('img').data('bgc');
			        	imgBgc && mbg.css({'background-color' : imgBgc});
			        }

			        initTopBnr();

			});



			var _hmt = _hmt || [];
			(function() {
			  var hm = document.createElement("script");
			  hm.src = "js/hm.js-c4d45d45e1a473a3e43c8699766169ee"/*tpa=http://hm.baidu.com/hm.js?c4d45d45e1a473a3e43c8699766169ee*/;
			  var s = document.getElementsByTagName("script")[0]; 
			  s.parentNode.insertBefore(hm, s);
			})();


		</script>
		
		
	</body>

	</html>