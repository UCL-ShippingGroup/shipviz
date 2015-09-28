    /* Connect to CartoDB's user shipviz and execute SQL query that returns
       data in a way it can be manipulated into labels and values for the X/Y
       chart created with ChartJS.
       NOTE the sql_api_template and maps_api_template properties needed to 
       connect to the local CartoDB server. This must change if we get a DNS
       server name. */
    var sql = cartodb.SQL({ user: 'shipviz' });
    sql.execute(
            "SELECT identifier, count(*) as ct FROM cartodb_minihourly " +
            "GROUP BY identifier ORDER BY identifier", 
            {
                maps_api_template: 'http://{user}.localhost.lan:3000', 
                sql_api_template: 'http://{user}.localhost.lan:8080'
            })
        .done(function(data) {

            var total = [];
            var labels = [];
    
            /* Go through SQL query result and compute labels and values for 
               chart */
            for (i in data.rows) {
                total.push(data.rows[i].ct);
                labels.push(data.rows[i].identifier);
            }

            /* Store labels and values to variable in JSON that ChartJS can 
            understand. See http://www.chartjs.org/docs/#line-chart */
            var lineChartData = {
                labels : labels,
                datasets : [
                {
                    data : total
                }
                ]
            }

            /* Create chart. See http://www.chartjs.org/docs/#line-chart. In 
               this case it's a Line-Chart, but others can be created in 
               same manner. See http://www.chartjs.org */
            var myLine = new Chart(document.getElementById("canvas").
                    getContext("2d")).Bar(lineChartData);
    });
