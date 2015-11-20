<?php

$con = mysql_connect('localhost','root','123');
mysql_select_db('qxy_istrone');
$sql = 'select ID, post_title, post_content from wp_posts where post_status= "publish" and post_title != "" order by post_date desc limit 30';
$query = mysql_query($sql);
mysql_close($con);

$redis = new redis();
$redis->pconnect('127.0.0.1');

$real_data = array();
$i = 0;

while($data = mysql_fetch_assoc($query)){
    $real_data['{{link_' . $i . '}}'] = 'http://7magic.istrone.com/f/' . $data['ID'] ;
    $real_data['{{text_' . $i . '}}'] = $data['post_title'];
    $redis->set($data['ID'],json_encode(array(
		'{{title}}' => $data['post_title'],
		'{{content}}'=> $data['post_content'],
		'{{src_url}}'=>'http://istrone.com/?p=' . $data['ID']
    )));
    $i++;
}

$redis->set('home',json_encode($real_data));

$redis_get_binary = $redis->get('home');
echo $redis_get_binary . "\n";

$redis->close();
