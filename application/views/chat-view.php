<html>
    <head>
        <title> Chat Exmaples! </title>
        <script src="<?php echo base_url('/assets/jquery.min.js') ?>"></script>
        <script type="text/javascript">
            var SITE_URL = '<?php echo site_url() ?>';
            //var TO_USER = 2;
        </script>
        <script type="text/javascript" src="<?php echo base_url('/assets/chat.js') ?>"></script>
        <style type="text/css">
            #chat-box{
                border: 1px solid  #CCC;
                width: 400px;
                height: 200px;
                margin: 0 0 10px 0;
                overflow-y: scroll;
            }
            .from-msg{
                float: right;
                text-align: right;
            }
            .to-msg{
                float: left;
                text-align: left;
            }
            .clear {
                clear: both;
            }
            .chat-msg{
                max-width: 50%;
                border: 1px solid #eee;
                padding:2px;
                margin-top: 1px;
            }
            .text-box{
                font-size: larger;
                font-weight: bold;
                height: 40px;
                padding-left: 10px;
                width: 330px;
            }
            #right{
                width: 40%;
                float: left;
            }
            .datas{
                width: 40%;
                float: left;
                border: 1px solid #EEE;
                padding: 5px;
                margin-left: 20px;
            }
            .user-list{
                
            }
        </style>
    </head>
    <body>
        <h1> Chat Example on Codeigniter </h1>
        <h3>Welcome <?php echo $user->first_name . ' ' .$user->last_name ?></h3>
        <div class="datas">
            <div id="chat-box"></div>
            <div>
                <form onsubmit="return false;">
                    <input id="to_user" type="hidden" value=""/>
                    <input id="message" type="text" name="message" class="text-box">
                    <input type="submit" value="Send" id="messagebtn" onclick="send_chat('message')">
                </form>
            </div>
        </div>
        <div class="datas user-list">
            <div id="users-box"></div>
        </div>
    </body>
</html>