.ui-slider-tabs-list-wrapper {
    position: relative;
    width: 100%;
    font-family: Arial;
    margin: 0;
    z-index: 50;
}

.ui-slider-tabs-list-wrapper.bottom {
  margin: -1px 0 0 0;
}

.ui-slider-tabs-list-container {
  overflow: hidden;
}

.ui-slider-tabs-list {
    padding: 0;
    margin: 0;
    list-style: none;
    min-width: 100%;
    display: block;
    float: left;
    width: 20000px !important;
}

.ui-slider-tabs-list li {
    display: block;
    margin: 0;
    font-weight: normal;
    background: #fff;
    text-transform: uppercase;
    font-size: 12px;
    font-size: .75rem;
    float: left;
    clear: none;
    padding: 0 10px;
    border: 1px solid #0F2134;
    border-left: 0;
}

.ui-slider-tabs-list li a {
    display: block;
    padding: 0;
    text-decoration: none;
    color: #0F2134;
    margin: 0;
    line-height: 32px;
}

.ui-slider-tabs-list li.selected {
    background: #0F2134;
}

.ui-slider-tabs-list li:hover {
    background: #0F2134;
}

.ui-slider-tabs-list li:hover a {
    color: #fff;    
}

.ui-slider-tabs-list-wrapper.bottom .ui-slider-tabs-list li.selected {
  border-top-color: #fff;
  border-bottom-color: #cfcfcf;
}

.ui-slider-tabs-list li.selected a {
    cursor: default;
    color: #fff;
}

.ui-slider-tabs-list li:first-of-type {
  border-left: 1px solid #0F2134;
}

.ui-slider-tabs-content-container {
    position: relative;
    border: 1px solid #0F2134;
    z-index: 1;
    overflow: hidden;
    background-color: #fff;
    margin-top: -1px;
}

.ui-slider-tab-content {
    display: none;
    top: 0;
    padding: 10px;
    width: 100% !important;
}

.ui-slider-left-arrow, .ui-slider-right-arrow, .ui-slider-left-arrow.edge:hover, .ui-slider-right-arrow.edge:hover {
    display: block;
    position: absolute;
    border: 1px solid #0F2134;
    background: #fff;
}

.ui-slider-left-arrow:hover,.ui-slider-right-arrow:hover {
  background: #ffffff; 
}

.ui-slider-left-arrow {
  left: 0;
  top: 0;
}

.ui-slider-left-arrow.edge div {
  opacity: .25;
}

.ui-slider-left-arrow.edge {
  box-shadow: none;
  cursor: default;
}

.ui-slider-tabs-list-wrapper.bottom .ui-slider-left-arrow {
  border-top-left-radius: 0;
  border-bottom-left-radius: 4px;
}

.ui-slider-right-arrow {
  top: 0;
  right: 0; 
}

.ui-slider-left-arrow div, .ui-slider-right-arrow div {
    position: absolute;
    width: 100%;
    height: 100%;
    text-align: center;
    line-height: 32px;
}

.ui-slider-right-arrow.edge div {
  opacity: .25;
}

.ui-slider-left-arrow div:before, .ui-slider-right-arrow div:before {
    content: "\eb36";
    font-family: 'icofont';
    text-rendering: auto;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    color: #0F2134;
    font-size: 20px;
}

.ui-slider-right-arrow div:before {
    content: "\eb37"; 
}

.ui-slider-right-arrow.edge {
  box-shadow: none;
  cursor: default;
}

.ui-slider-tabs-list-wrapper.bottom .ui-slider-right-arrow {
  border-top-right-radius: 0;
  border-bottom-right-radius: 4px;
}

.ui-slider-tabs-indicator-container {
  position: absolute;
  bottom: 0;
  left: 0;
  width: 100%;
  text-align: center;
}

.ui-slider-tabs-indicator {
  width: 10px;
  height: 10px;  
  display: inline-block;
  margin-right: 3px;
  cursor: pointer;
}

.ui-slider-tabs-leftPanelArrow {
  position: absolute;
  left: 0px;
  width: 30px;
  height: 35px; 
  cursor: pointer;
  opacity: 0.5;
  -moz-opacity: 0.5;
  filter: alpha(opacity=5);
}

.ui-slider-tabs-rightPanelArrow {
  position: absolute;
  right: 0px;
  width: 30px;
  height: 35px; 
  cursor: pointer;
  opacity: 0.5;
  -moz-opacity: 0.5;
  filter: alpha(opacity=5);
}

.ui-slider-tabs-rightPanelArrow.showOnHover,.ui-slider-tabs-leftPanelArrow.showOnHover {
  opacity: 0;
  display: none;
}

.ui-slider-tabs-content-container:hover .ui-slider-tabs-rightPanelArrow.showOnHover,.ui-slider-tabs-content-container:hover .ui-slider-tabs-leftPanelArrow.showOnHover {
  opacity: .5;
  display: inline-block;
}

.ui-slider-tabs-content-container .ui-slider-tabs-rightPanelArrow:hover,.ui-slider-tabs-content-container .ui-slider-tabs-leftPanelArrow:hover,.ui-slider-tabs-content-container .ui-slider-tabs-rightPanelArrow.showOnHover:hover,.ui-slider-tabs-content-container .ui-slider-tabs-leftPanelArrow.showOnHover:hover {
  opacity: 1;
}
