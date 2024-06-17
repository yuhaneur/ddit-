/**
 * 
 */
var docReady = function docReady(fn) {
	  // see if DOM is already available
	  if (document.readyState === 'loading') {
	    document.addEventListener('DOMContentLoaded', fn);
	  } else {
	    setTimeout(fn, 1);
	  }
	};
	
	var echartsGaugeRingChartInit = function echartsGaugeRingChartInit() {
		  var $gaugeRingChartEl = document.querySelector('.echart-gauge-ring-chart-example');
		  if ($gaugeRingChartEl) {
		    // Get options from data attribute
		    var userOptions = utils.getData($gaugeRingChartEl, 'options');
		    var chart = window.echarts.init($gaugeRingChartEl);
		    var _tooltipFormatter5 = function _tooltipFormatter5(params) {
		      return "\n      <div>\n          <h6 class=\"fs-10 text-700 mb-0\">\n            <span class=\"fas fa-circle me-1\" style='color:".concat(params[0].color, "'></span>\n            ").concat(params[0].name, " : ").concat(params[0].value, "\n          </h6>\n      </div>\n      ");
		    };
		    var getDefaultOptions = function getDefaultOptions() {
		      return {
		        tooltip: {
		          trigger: 'axis',
		          padding: [7, 10],
		          backgroundColor: utils.getGrays()['100'],
		          borderColor: utils.getGrays()['300'],
		          textStyle: {
		            color: utils.getGrays()['1100']
		          },
		          borderWidth: 1,
		          formatter: _tooltipFormatter5,
		          transitionDuration: 0,
		          axisPointer: {
		            type: 'none'
		          }
		        },
		        series: [{
		          type: 'gauge',
		          radius: '100%',
		          startAngle: 90,
		          endAngle: -270,
		          pointer: {
		            show: false
		          },
		          progress: {
		            show: true,
		            overlap: false,
		            roundCap: true,
		            clip: false,
		            itemStyle: {
		              borderWidth: 1,
		              borderColor: utils.getGrays()['500']
		            }
		          },
		          axisLine: {
		            lineStyle: {
		              width: 18
		            }
		          },
		          splitLine: {
		            show: false,
		            distance: 0,
		            length: 10
		          },
		          axisTick: {
		            show: false
		          },
		          axisLabel: {
		            show: false,
		            distance: 50
		          },
		          data: [{
		            value: 20,
		            title: {
		              offsetCenter: ['0%', '0%']
		            },
		            detail: {
		              offsetCenter: ['0%', '0%']
		            },
		            itemStyle: {
		              color: utils.getColor('primary')
		            }
		          }],
		          title: {
		            fontSize: 14
		          },
		          detail: {
		            width: 50,
		            height: 14,
		            fontSize: 20,
		            color: 'auto',
		            formatter: '{value}%'
		          }
		        }]
		      };
		    };
		    echartSetOption(chart, userOptions, getDefaultOptions);
		  }
		};
		
		docReady(echartsGaugeRingChartInit);
