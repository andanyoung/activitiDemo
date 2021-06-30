var app = new Vue({
    el:"#app",
    data:{
        flowList:[]
    },
    created:function () {
        //调用方法
        this.findAll();
    },
    methods:{
        //到后台获取列表数据
        findAll:function () {
            axios.get('/flow/findAll')
                .then(function(result){
                    app.flowList = result.data;
                });
        },
        deploy:function (id) {
            axios.put('/flow/deployment/'+id)
                .then(function(result){
                    if(result ==1 ){
                        alert('部署成功！');
                    }else if(result ==2){
                        alert('已经部署过！');
                    }else{
                        alert('部署失败！！')
                    }
                    this.findAll();
                });
        }
    }
});