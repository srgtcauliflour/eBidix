<?php

/*******************************************************************************
 *      Author:     BWeb Media
 *      Email:      contact@bwebmedia.com
 *      Website:    https://www.bwebmedia.com
 *
 *      File:       index.php
 *      Version:    1.2
 *      Copyright:  (c) 2009+ - BWeb Media
 *      
 ******************************************************************************/

/*$start = microtime();*/
 
define('_DIR_', dirname(__FILE__));
require _DIR_ . '/config/config.inc.php';
Dispatcher::getInstance()->run();

/*$end = microtime() - $start;
echo round($end * 1000) . 'ms';*/