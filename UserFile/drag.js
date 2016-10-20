function allow(event){
	event.preventDefault();
}
function drop(event){
	event.preventDefault();
	var controller_id = event.dataTransfer.getData("Text");
	console.log(controller_id);
	window.parent.add_controller(controller_id);
}
function dragover(event){
	event.preventDefault();
	var that = event.target;
	if(event.clientY + $('body')[0].scrollTop - that.offsetTop > that.offsetHeight / 2){
		$('.pro').insertAfter($(event.target));
	}else{
		$('.pro').insertBefore($(event.target));
	}
	
}
function dragenter(event){
	console.log("onDrop enter");
	$('.pro').show();
}
function dragLeave(event){
	$('.pro').hide(); 
}

$(function(){
	//鼠标移动到可编辑控件时显示operation
	$('.controller').each(function(){
		$(this).on("mouseover",function(){
			initController(this,$(this).attr('data-id'));
		});
	})

	$(document).on('click',".oparetion-item",function(){
		//console.log(this);
		window.parent.add_controller($(this).parent().attr('data-id'),1);
	})



	$(document).on('click', '.article_sort_list a',function () {
		var user_column = $(this).attr('href');
		var article_sort_id = $(this).parent().parent().attr('data');
		var href = "/microWeb/index.php/Home/Panel/article_sort_info"+user_column+"?article_sort_id="+article_sort_id;		
		window.location.href=href;
		return false;
	})
})


function initController(elem,id){

		var that = elem;
		//移除其他operation
		$('.operation').remove();
		//组装operation
		var operation = document.createElement("div");
		operation.className = 'operation';
		operation.setAttribute('data-target','0');
		operation.setAttribute('data-controller','0');
		operation.innerHTML =  "<div class='oparetion-nav-bar' data-id='"+id+"'>"
							+"<div class='oparetion-item edit-controller'>编辑控件</div>"
							+"<div class='oparetion-item style-controller'>编辑样式</div>"
							+"<div class='oparetion-item del-controller'>&#10006;</div>"
						+"</div>";
		$('.center').append(operation);
		
		$(operation).css({
			"top":that.offsetTop + "px",
			"left":that.offsetLeft + "px",
			"width":that.offsetWidth + "px",
			"height":that.offsetHeight + "px",
		}).data('elem',that);
		//通过offset判断oparetion-nav-bar的显示位置(在上 or 在下)
		if(that.offsetTop < 30){
			$(".oparetion-nav-bar").css({
				"margin-top": that.offsetHeight - 4 + "px"
			})
			$(operation).on("mouseout",function(event){
				var bar = $('.oparetion-nav-bar')[0];
				var top = event.clientY + $('body')[0].scrollTop;
				var left = event.clientX + $('body')[0].scrollLeft;
				if(top <= that.offsetTop || top >= bar.offsetTop + bar.offsetHeight || (top >= that.offsetTop && left <= bar.offsetLeft) 
					|| left <= this.offsetLeft || left >= this.offsetLeft + this.offsetWidth){
					$(this).remove();
				}
			})
		}else{
			$(operation).on("mouseout",function(event){
				var bar = $('.oparetion-nav-bar')[0];
				var top = event.clientY + $('body')[0].scrollTop;
				var left = event.clientX + $('body')[0].scrollLeft;
				if(top <= bar.offsetTop || (top <= bar.offsetTop && left <= bar.offsetLeft) || top >= this.offsetTop + this.offsetHeight 
					|| left <= this.offsetLeft || left >= this.offsetLeft + this.offsetWidth){
					$(this).remove();
				}
			})
		}
	
}
