new Vue({
    el:"#app",
    data:{
        userlist:[],
        userinfo:{}
    },
    created:function () {
        //调用方法
        this.findAll();
    },
    methods:{
        //到后台获取列表数据
        findAll:function () {
            var _this = this;
            axios.get('/user/findAll')
                .then(function(result){
                    console.log(result);
                    _this.userlist = result.data;
                })
                .catch(function(err){
                    console.log(err);
                });

        },
        findOne:function (id) {
            var _this = this;
            axios.get('/user/findOne/'+id)
                .then(function(result){
                    console.log(result);
                    _this.userinfo = result.data;
                    $("#myModal").modal("show");
                })
                .catch(function(err){
                    console.log(err);
                });
        }
    }
});