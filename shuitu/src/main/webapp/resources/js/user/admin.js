$(function(){
	$(".search input[type=text]").attr('placeholder','请输入关键字');
	$(".search input[type=text]").attr("style", "border-radius: 3px;");
	$('.search').after(
			'<div class="pull-right" style="margin-top:10px">'
            +'<a class="btn btn-success" href="">新建管理员</a></div>'
	);
});

function queryParams(params)
{
	params.search=encodeURIComponent($(".search input[type=text]").val());
	return params;
}

function adminListFormatter(){
	return "<font color=\"blue\" style=\"margin-right: 10px;\"><a class=\"updateAdmin\" style= \"cursor:pointer;\" >修改</a></font>"
			+ "<font color=\"blue\" style=\"margin-left: 10px;\"><a class=\"deleteAdmin\" style= \"cursor:pointer;\" >删除</a></font>";
}

window.operateEvents = {
		'click .updateAdmin': function (e, value, row, index) {
			//初始化工作
//			window.location.href=""
		},
		'click .deleteAdmin': function (e, value, row, index) {
			//初始化工作
//			$("#deleteName_span").text(row.name);
//			$('#cid').val(row.id);
//			$('#myModal_deletecompet').modal("show");
		}
	}