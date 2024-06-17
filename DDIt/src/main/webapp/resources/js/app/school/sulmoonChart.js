/**
 * 
 */


// 문제 번호 에이작스로 넘기고
// 통계데이터 가져와서 석세스펑션 현재 반복문에 해당하는 캔버스 가져온다.
// 데이터 준비
//for(var i=0;i<=5;i++){
        const data = {
            labels: ["사과", "바나나", "포도","딸기","메론"],
            datasets: [{
                label: "과일 판매량",
                data: [60, 30, 10,50,100],
                backgroundColor: ["#FF6384", "#36A2EB", "#FFCE56","green","black"],
                borderWidth: 1
            }]
        };

        // 차트 생성
        const ctx = document.querySelector(".myChart").getContext('2d');
        const chart = new Chart(ctx, {
            type: 'pie',
            data: data,
            options: {
                responsive: false, // 차트 크기 자동 조정
                title: {
                    display: true,
                    text: '과일 판매량'
                }
            }
        });
//}



// ----------------------------------------------------------------------------------------------
var docReady = function docReady(fn) {
  // see if DOM is already available
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', fn);
  } else {
    setTimeout(fn, 1);
  }
};

var echartsPieChartInit = function echartsPieChartInit() {
  var $pieChartEl = document.querySelector('.echart-pie-chart-example');
  if ($pieChartEl) {
    // Get options from data attribute
    var userOptions = utils.getData($pieChartEl, 'options');
    var chart = window.echarts.init($pieChartEl);
    var getDefaultOptions = function getDefaultOptions() {
      return {
        legend: {
          left: 'left',
          textStyle: {
            color: utils.getGrays()['600']
          }
        },
        series: [{
          type: 'pie',
          radius: window.innerWidth < 530 ? '45%' : '60%',
          label: {
            color: utils.getGrays()['700']
          },
          center: ['50%', '55%'],
          data: [{
            value: 1048,
            name: '매우그렇다',
            itemStyle: {
              color: utils.getColor('primary')
            }
          }, {
            value: 735,
            name: '그렇다',
            itemStyle: {
              color: utils.getColor('danger')
            }
          }, {
            value: 580,
            name: '보통',
            itemStyle: {
              color: utils.getColor('info')
            }
          }, {
            value: 484,
            name: '아니다',
            itemStyle: {
              color: utils.getColor('success')
            }
          }, {
            value: 300,
            name: '매우아니다',
            itemStyle: {
              color: utils.getColor('warning')
            }
          }],
          emphasis: {
            itemStyle: {
              shadowBlur: 10,
              shadowOffsetX: 0,
              shadowColor: utils.rgbaColor(utils.getGrays()['600'], 0.5)
            }
          }
        }],
        tooltip: {
          trigger: 'item',
          padding: [7, 10],
          backgroundColor: utils.getGrays()['100'],
          borderColor: utils.getGrays()['300'],
          textStyle: {
            color: utils.getGrays()['1100']
          },
          borderWidth: 1,
          transitionDuration: 0,
          axisPointer: {
            type: 'none'
          }
        }
      };
    };
    echartSetOption(chart, userOptions, getDefaultOptions);
	
    //- set chart radius on window resize
    utils.resize(function () {
      if (window.innerWidth < 530) {
        chart.setOption({
          series: [{
            radius: '45%'
          }]
        });
      } else {
        chart.setOption({
          series: [{
            radius: '60%'
          }]
        });
      }
    });
  }
};

docReady(echartsPieChartInit);