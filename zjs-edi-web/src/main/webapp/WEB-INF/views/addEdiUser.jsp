<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>新增一个EdiUser</title>
<link rel="stylesheet"
	href="http://cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css" />
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="http://cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="http://cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="/js/toastr.js"></script>
<link href="/css/toastr.min.css" rel="stylesheet" />
<script src="/js/bootstrapValidator.min.js"></script>
<link href="/css/bootstrapValidator.min.css" rel="stylesheet" />
<style type="text/css">
.navbar-default {
	border-color: #CC1A1A;
}

.pText {
	font-weight: 900;
	color: #247159;
}

.navbar-default .navbar-nav>.active>a, .navbar-default .navbar-nav>.open>a
	{
	background-image: linear-gradient(to bottom, rgb(177, 104, 102) 0,
		rgb(210, 208, 208) 100%);
}

body {
	padding-top: 70px;
}

.focus {
	background-image: linear-gradient(to bottom, rgb(177, 104, 102) 0,
		rgb(210, 208, 208) 100%);
}

#bs-example-navbar-collapse-1 ul li {
	padding: 0px 0px;
	border: 0px;
	outline: 0px auto -webkit-focus-ring-color;
}
</style>
</head>



<body>
	<!-- 导航头 开始 -->
	<div>
		<nav class="navbar navbar-default navbar-fixed-top"> <a
			class="navbar-brand" href="#">
			<p class="pText">&nbsp;&nbsp;Edi</p>

		</a>

		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span><span class="icon-bar"></span><span
						class="icon-bar"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse" data-toggle="buttons"
				id="bs-example-navbar-collapse-1">
				<p class="navbar-text">自测平台&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
				<ul class="nav navbar-nav navbar-right btn-group">

					<!-- 首页 开始-->
					<li role="presentation" class="btn"><a id="homeid"
						role="button" data-toggle="collapse" data-parent="#accordion"
						href="#collapseOne" aria-expanded="true"
						aria-controls="collapseOne" name="options">&nbsp;&nbsp;首页&nbsp;&nbsp;&nbsp;&nbsp;</a>
					</li>
					<!-- 首页 结束-->

					<!--  开始-->
					<li role="presentation" class="btn"><a class="collapsed"
						role="button" data-toggle="collapse" data-parent="#accordion"
						href="#collapseTwo" aria-expanded="false"
						aria-controls="collapseTwo" name="options">待定</a></li>
					<!-- 开启消费者 结束-->

					<!--  开始-->
					<li role="presentation" class="btn"><a class="collapsed"
						role="button" data-toggle="collapse" data-parent="#accordion"
						href="#collapseThree" aria-expanded="false"
						aria-controls="collapseThree" name="options">待定</a></li>
					<!--  结束-->

					<!--  开始 -->
					<li role="presentation" class="btn"><a class="collapsed"
						role="button" data-toggle="collapse" data-parent="#accordion"
						href="#sendid" aria-expanded="false" aria-controls="sendid"
						name="options">待定</a></li>
					<!--  结束 -->
				</ul>
			</div>
		</div>
		</nav>
	</div>
	<!-- 导航头 结束 -->
	<!-- 新建一个新用户开始 -->
	<div class="panel-body">

		<div class="row">
			<div class="col-xs-2 col-md-2"></div>
			<div class="col-xs-4 col-md-4">
				<h3>
					<span class="label label-primary">New&nbsp;&nbsp;<span
						class="label label-info">新用户</span></span>
				</h3>
			</div>
			<div class="col-xs-6 col-md-6"></div>
		</div>

		<div class="row">
			<div class="col-xs-3 col-md-3"></div>
			<div class="col-xs-6 col-md-6">
				<form class="form-horizontal" role="form" id="defaultForm"
					method="post">
					<fieldset>
						<legend>EdiUser</legend>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="name">用户名称</label>
							<div class="col-sm-9">
								<input class="form-control" id="name" type="text" name="name"
									placeholder="用户名称" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="ip">ip</label>
							<div class="col-sm-9">
								<input class="form-control" id="ip" type="text" name="ip"
									placeholder="ip" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="datatype">数据类型
								json/xml</label>
							<div class="col-sm-9">
								<select id="datatype" class="form-control" name="datatype">
									<option value="json">json</option>
									<option value="xml">xml</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="clientflag">EID
								客户标识</label>
							<div class="col-sm-9">
								<input class="form-control" id="clientflag" type="text"
									name="clientflag" placeholder="EID 客户标识" />
							</div>

						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label" for="verifyseed">EID
								客户秘钥</label>
							<div class="col-sm-9">
								<input class="form-control" id="verifyseed" name="verifyseed"
									type="text" placeholder="EID 客户秘钥" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label" for="dataFlag">EID
								分仓标识</label>
							<div class="col-sm-9">
								<input class="form-control" id="dataFlag" name="dataFlag"
									type="text" placeholder="EID 分仓标识" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="ordertype">用户类型
								0标准 1定制</label>
							<div class="col-sm-9">
								<select id="ordertype" name="ordertype" class="form-control">
									<option value="0">标准</option>
									<option value="1">定制</option>
								</select>
							</div>
						</div>
					</fieldset>


					<fieldset>
						<legend>requestorders</legend>
						<div class="form-group">
							<label class="col-sm-2 control-label"
								for="requestorders[0].codAmount">代收金额</label>
							<div class="col-sm-9">
								<input class="form-control" id="requestorders[0].codAmount"
									type="text" name="requestorders[0].codAmount"
									placeholder="代收金额" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label"
								for="requestorders[0].dataFlag">数据标识(用于分仓发货,C2C 类客户省略)</label>
							<div class="col-sm-9">
								<input class="form-control" id="requestorders[0].dataFlag"
									type="text" name="requestorders[0].dataFlag" placeholder="数据标识" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="requestorders[0].flag">订单标识</label>
							<div class="col-sm-9">
								<input class="form-control" id="requestorders[0].flag"
									type="text" name="requestorders[0].flag" placeholder="订单标识" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label"
								for="requestorders[0].itemsName">商品总品名：品名</label>
							<div class="col-sm-9">
								<input class="form-control" id="requestorders[0].itemsName"
									type="text" name="requestorders[0].itemsName"
									placeholder="商品总品名：品名" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label"
								for="requestorders[0].itemsNumber">商品总数量</label>
							<div class="col-sm-9">
								<input class="form-control" id="requestorders[0].itemsNumber"
									type="text" name="requestorders[0].itemsNumber"
									placeholder="商品总数量" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label"
								for="requestorders[0].itemsVolume">商品尺寸：长*宽*高</label>
							<div class="col-sm-9">
								<input class="form-control" id="requestorders[0].itemsVolume"
									type="text" name="requestorders[0].itemsVolume"
									placeholder="商品尺寸" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label"
								for="requestorders[0].itemsWeight">总重量（KG 精度.00）</label>
							<div class="col-sm-9">
								<input class="form-control" id="requestorders[0].itemsWeight"
									type="text" name="requestorders[0].itemsWeight"
									placeholder="总重量" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label"
								for="requestorders[0].logisticProviderID">客户标识(宅急送提供)</label>
							<div class="col-sm-9">
								<input class="form-control"
									id="requestorders[0].logisticProviderID" type="text"
									name="requestorders[0].logisticProviderID" placeholder="客户标识" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label"
								for="requestorders[0].mailNo">快递单号(宅急送物流单号) </label>
							<div class="col-sm-9">
								<input class="form-control" id="requestorders[0].mailNo"
									type="text" name="requestorders[0].mailNo"
									placeholder="快递单号(宅急送物流单号) ）" />
							</div>
						</div>


						<div class="form-group">
							<label class="col-sm-2 control-label"
								for="requestorders[0].orderNo">客户单号（物流订单号）</label>
							<div class="col-sm-9">
								<input class="form-control" id="requestorders[0].orderNo"
									type="text" name="requestorders[0].orderNo" placeholder="客户单号" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label"
								for="requestorders[0].remark">重要提示</label>
							<div class="col-sm-9">
								<input class="form-control" id="requestorders[0].remark"
									type="text" name="requestorders[0].remark" placeholder="重要提示" />
							</div>
						</div>

					</fieldset>

					<fieldset>
						<legend>发件人信息</legend>
						<div class="form-group">
							<label class="col-sm-2 control-label"
								for="requestorders[0].sender.prov">寄件省（北京市、湖北省）</label>
							<div class="col-sm-9">
								<input class="form-control" id="requestorders[0].sender.prov"
									type="text" name="requestorders[0].sender.prov"
									placeholder="寄件省（北京市、湖北省）" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label"
								for="requestorders[0].sender.city">寄件市（北京市、宜昌市）</label>
							<div class="col-sm-9">
								<input class="form-control" id="requestorders[0].sender.city"
									type="text" name="requestorders[0].sender.city"
									placeholder="寄件省（北京市、湖北省）" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label"
								for="requestorders[0].sender.district">寄件区县(如东城区、延庆县)</label>
							<div class="col-sm-9">
								<input class="form-control"
									id="requestorders[0].sender.district" type="text"
									name="requestorders[0].sender.district"
									placeholder="寄件区县(如东城区、延庆县)" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label"
								for="requestorders[0].sender.address">详细地址(丌要包含省市区县) </label>
							<div class="col-sm-9">
								<input class="form-control" id="requestorders[0].sender.address"
									type="text" name="requestorders[0].sender.address"
									placeholder="详细地址(丌要包含省市区县) " />
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label"
								for="requestorders[0].sender.mobile">移劢电话 </label>
							<div class="col-sm-9">
								<input class="form-control" id="requestorders[0].sender.mobile"
									type="text" name="requestorders[0].sender.mobile"
									placeholder="移劢电话" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label"
								for="requestorders[0].sender.name">寄件人姓名 </label>
							<div class="col-sm-9">
								<input class="form-control" id="requestorders[0].sender.name"
									type="text" name="requestorders[0].sender.name"
									placeholder="移劢电话" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label"
								for="requestorders[0].sender.phone">固定电话，包括区号、电话号码及分机号</label>
							<div class="col-sm-9">
								<input class="form-control" id="requestorders[0].sender.phone"
									type="text" name="requestorders[0].sender.phone"
									placeholder="固定电话，包括区号、电话号码及分机号" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label"
								for="requestorders[0].sender.postCode">寄件人邮编</label>
							<div class="col-sm-9">
								<input class="form-control"
									id="requestorders[0].sender.postCode" type="text"
									name="requestorders[0].sender.postCode" placeholder="寄件人人邮编" />
							</div>
						</div>

					</fieldset>

					<fieldset>
						<legend>收件人信息</legend>
						<div class="form-group">
							<label class="col-sm-2 control-label"
								for="requestorders[0].receiver.prov">收件省（北京市、湖北省）</label>
							<div class="col-sm-9">
								<input class="form-control" id="requestorders[0].receiver.prov"
									type="text" name="requestorders[0].receiver.prov"
									placeholder="收件省（北京市、湖北省）" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label"
								for="requestorders[0].receiver.city">收件市（北京市、宜昌市）</label>
							<div class="col-sm-9">
								<input class="form-control" id="requestorders[0].receiver.city"
									type="text" name="requestorders[0].receiver.city"
									placeholder="收件省（北京市、湖北省）" />
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label"
								for="requestorders[0].receiver.district">收件区县(如东城区、延庆县)</label>
							<div class="col-sm-9">
								<input class="form-control"
									id="requestorders[0].receiver.district" type="text"
									name="requestorders[0].receiver.district"
									placeholder="收件区县(如东城区、延庆县)" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label"
								for="requestorders[0].receiver.address">详细地址(丌要包含省市区县) </label>
							<div class="col-sm-9">
								<input class="form-control"
									id="requestorders[0].receiver.address" type="text"
									name="requestorders[0].receiver.address"
									placeholder="详细地址(丌要包含省市区县) " />
							</div>
						</div>

						<div class="form-group">
							<label class="col-sm-2 control-label"
								for="requestorders[0].receiver.mobile">移劢电话 </label>
							<div class="col-sm-9">
								<input class="form-control"
									id="requestorders[0].receiver.mobile" type="text"
									name="requestorders[0].receiver.mobile" placeholder="移劢电话" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label"
								for="requestorders[0].receiver.name">收件人姓名 </label>
							<div class="col-sm-9">
								<input class="form-control" id="requestorders[0].receiver.name"
									type="text" name="requestorders[0].receiver.name"
									placeholder="移劢电话" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label"
								for="requestorders[0].receiver.phone">固定电话，包括区号、电话号码及分机号</label>
							<div class="col-sm-9">
								<input class="form-control" id="requestorders[0].receiver.phone"
									type="text" name="requestorders[0].receiver.phone"
									placeholder="固定电话，包括区号、电话号码及分机号" />
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label"
								for="requestorders[0].receiver.postCode">收件人邮编</label>
							<div class="col-sm-9">
								<input class="form-control"
									id="requestorders[0].receiver.postCode" type="text"
									name="requestorders[0].receiver.postCode" placeholder="收件人人邮编" />
							</div>
						</div>

					</fieldset>



					<div class="form-group">
						<button type="submit" class="btn btn-primary">Sign up</button>
					</div>
				</form>

			</div>
			<div class="col-xs-3 col-md-3"></div>
		</div>

		<div class="row alert alert-warning">

			<div class="col-xs-2 col-md-2"></div>
			<div class="col-xs-8 col-md-8">
				<h4>
					<b>注意事项：</b>
				</h4>
				<dl>
					<dt>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请先了解 xpath
						语法 ， 该语法应该是最简单的了 。</dt>
				</dl>

			</div>
			<div class="col-xs-2 col-md-2"></div>

		</div>

		<!-- 提示栏  ID = promptid-->
		<div class="row">
			<div class="col-xs-4 col-md-4"></div>
			<div class="col-xs-4 col-md-4">
				<div id="promptid" class="alert alert-danger collapse" role="alert"></div>
			</div>
		</div>
		<!-- 提示栏  ID = promptid-->
	</div>
	<!-- 尾部 结束 -->
	<div class="row">
		<div class="page-header ">
			<h3 style="text-align: center">
				用户配置&nbsp;&nbsp;&nbsp;&nbsp;<small>自己使用</small>
			</h3>
		</div>
	</div>
	<!-- 尾部 结束 -->
</body>



<script type="text/javascript">
	$(function() {

		var bootstrapValidator = function(id, fields, submitHandler) {
			$(id).bootstrapValidator({
				message : "This value is not valid",
				feedbackIcons : {
					valid : "glyphicon glyphicon-ok",
					invalid : "glyphicon glyphicon-remove",
					validating : "glyphicon glyphicon-refresh"
				},
				fields : fields,
				submitHandler : submitHandler
			});
		};

		var fields = {
			name : {
				validators : {
					notEmpty : {
						message : '不能为空'
					}
				}
			},
			ip : {
				validators : {
					notEmpty : {
						message : '不能为空'
					}
				}
			},
			datatype : {
				validators : {
					notEmpty : {
						message : '不能为空'
					}
				}
			},
			clientflag : {
				validators : {
					notEmpty : {
						message : '不能为空'
					}
				}
			},
			verifyseed : {
				validators : {
					notEmpty : {
						message : '不能为空'
					}
				}
			},
			dataFlag : {
				validators : {
					notEmpty : {
						message : '不能为空'
					}
				}
			},
			ordertype : {
				validators : {
					notEmpty : {
						message : '不能为空'
					}
				}
			}
		};

		var submitHandler = function(validator, form, submitButton) {
			$.ajax({
				type : "POST",
				url : 'http://10.10.12.27:8082/rest/table/request',
				data : form.serialize(),
				success : function(date) {
					if (date.code == 200) {
						alert("成功!");
					} else {
						alert("失败：" + date.body);
					}
				},
				error : function(date) {
					alert("失败：" + date.body);
				}
			});
		};
		bootstrapValidator("#defaultForm", fields, submitHandler);
	})
</script>


</html>