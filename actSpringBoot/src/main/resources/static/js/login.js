var app=new Vue({
    el:'#app',
    data:{
        message:'',          //提示信息
        username:'',        //登录用户名
        password:''         //登录密码
    },
    methods:{
        //登录方法
        login:function () {
            //提示信息
            this.message='正在登录....';
            //发送请求
            axios.post('/login?username='+this.username+'&password='+this.password)
                .then(resp => {
                    console.info(resp.data.message);
                    //登录响应提示
                    this.message=resp.data.message;
                    //登录成功,跳转到后台界面
                    location.href='/admin/index.html';

            }).catch(resp => {
                this.message=response.data.message;
            });
        }
    }
});