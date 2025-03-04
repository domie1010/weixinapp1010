const base = {
    get() {
                return {
            url : "http://localhost:8080/springboot80q0m/",
            name: "springboot80q0m",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springboot80q0m/front/index.html'
        };
            },
    getProjectName(){
        return {
            projectName: "二手交易平台"
        } 
    }
}
export default base
