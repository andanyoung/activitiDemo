var app = new Vue({
    el:"#app",
    data:{
        evectionlist:[],
        evection:{}
    },
    created:function () {
        //调用方法
        this.findAll();
    },
    methods:{
        //到后台获取列表数据
        findAll:function () {
            axios.get('/evection/findAll')
                .then(function(result){
                    console.log(result);
                    app.evectionlist = result.data;
                })
                .catch(function(err){
                    console.log(err);
                });

        },
        findOne:function (id) {
            axios.get('/evection/findOne/'+id)
                .then(function(result){
                    console.log(result);
                    app.evection = result.data;
                    $("#myModal").modal("show");
                })
                .catch(function(err){
                    console.log(err);
                });
        },
        add:function () {
            axios.post('/evection/add/',this.evection)
                .then(function(result){
                    console.log(result);
                    $("#myModal").modal("hide");
                    app.findAll();
                });
        },
        showFlow:function(id){
            axios.get('/flow/findFlowTask/'+id)
                .then(function(result){
                    console.log(result);
                });
        }
    }
});