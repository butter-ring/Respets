var options={chart:{height:380,type:"line",zoom:{enabled:!1}},dataLabels:{enabled:!1},colors:["#ffbc00"],stroke:{width:[4],curve:"straight"},series:[{name:"Desktops",data:[30,41,35,51,49,62,69,91,126]}],title:{text:"Product Trends by Month",align:"center"},grid:{row:{colors:["transparent","transparent"],opacity:.2},borderColor:"#f1f3fa"},labels:series.monthDataSeries1.dates,xaxis:{categories:["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep"]},responsive:[{breakpoint:600,options:{chart:{toolbar:{show:!1}},legend:{show:!1}}}]};(chart=new ApexCharts(document.querySelector("#line-chart"),options)).render();var chart;options={chart:{height:396,type:"bar",toolbar:{show:!1}},plotOptions:{bar:{horizontal:!1,endingShape:"rounded",columnWidth:"55%"}},dataLabels:{enabled:!1},stroke:{show:!0,width:2,colors:["transparent"]},colors:["#727cf5","#0acf97","#fa5c7c"],series:[{name:"Net Profit",data:[44,55,57,56,61,58,63,60,66]},{name:"Revenue",data:[76,85,101,98,87,105,91,114,94]},{name:"Free Cash Flow",data:[35,41,36,26,45,48,52,53,41]}],xaxis:{categories:["Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct"]},yaxis:{title:{text:"$ (thousands)"}},fill:{opacity:1},grid:{row:{colors:["transparent","transparent"],opacity:.2},borderColor:"#f1f3fa"},tooltip:{y:{formatter:function(e){return"$ "+e+" thousands"}}}};(chart=new ApexCharts(document.querySelector("#basic-bar"),options)).render();