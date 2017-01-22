var apiBaseUrl = "http://localhost:9393"

var apiBaseUrl = "/api"

var vueApp = new Vue({
    
    el: '#vueApp',

    data: {
        game_code: ""
    },

    mounted: function() {

    },

    methods: {
        create: function(e) {
            var self = this;

			$.ajax({
                url: apiBaseUrl + "/games",
                contentType: "application/json",
                method: "POST",
                success: function(data) {
                    console.log(data);
                },
                error: function(error) {
                    console.log(error);
                }
            });

        },
        
        join: function(e) {
            alert('clicked join');
        }
    }
})
