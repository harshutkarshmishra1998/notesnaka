<script>
window.onload = function col() {

    var chart_1 = new CanvasJS.Chart("chartContainer_1", {
        animationEnabled: true,
        // title: {
        //     text: "Email Categories",
        //     horizontalAlign: "center"
        // },
        theme: "light2", // "light1", "light2", "dark1", "dark2"
        data: [{
            type: "column",
            showInLegend: true,
            legendMarkerColor: "grey",
            dataPoints: [{
                    y: <?php echo $file; ?>,
                    label: "Files"
                },
                {
                    y: <?php echo $qp; ?>,
                    label: "Question Papers"
                },
                {
                    y: <?php echo $video; ?>,
                    label: "Videos"
                },
                {
                    y: <?php echo $blog; ?>,
                    label: "Blogs"
                }
            ]
        }]
    });
    chart_1.render();

    // var chart_2 = new CanvasJS.Chart("chartContainer_2", {
    //     animationEnabled: true,
    //     // title: {
    //     //     text: "Views",
    //     //     horizontalAlign: "center"
    //     // },
    //     data: [{
    //         type: "doughnut",
    //         startAngle: 60,
    //         //innerRadius: 60,
    //         indexLabelFontSize: 17,
    //         indexLabel: "{label} - #percent%",
    //         toolTipContent: "<b>{label}:</b> {y} (#percent%)",
    //         dataPoints: [{
    //                 y: <?php echo ($guest_views); ?>,
    //                 label: "Guest Views"
    //             },
    //             {
    //                 y: <?php echo $user_views; ?>,
    //                 label: "User Views"
    //             }
    //         ]
    //     }]
    // });
    // chart_2.render();

}
</script>