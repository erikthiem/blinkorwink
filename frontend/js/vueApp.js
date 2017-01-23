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
                dataType: "json",
                method: "POST",
                success: function(data) {
                    self.game_code = data.code;
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
