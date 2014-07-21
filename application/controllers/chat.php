<?php

/**
 * Description of chat
 *
 * @author nick
 */
class Chat extends MY_Controller
{

    private $user_id = 1;

    public function __construct()
    {
        parent::__construct();
        if (!$this->ion_auth->logged_in())
        {
            redirect('auth/login');
        }
        $this->load->model('chat_model');
        $user = $this->ion_auth->user()->row();
        if ($user)
        {
            $this->user_id = $user->id;
        }
    }

    public function index()
    {
        $data['user'] = $this->ion_auth->user()->row();
        $this->load->view('chat-view', $data);
    }

    public function get_chat()
    {
        $from_user = $this->user_id;
        $to_user = $this->input->post('to_user');
        $last_chat_id = $this->input->post('last_chat_id');
        $data['chat_history'] = $this->chat_model->get_all($from_user, $to_user, $last_chat_id);
        //echo $this->db->last_query(); die;
        $last_chat = end($data['chat_history']);
        $data['last_chat_id'] = isset($last_chat['id']) ? $last_chat['id'] : FALSE;
        $this->json_output($data);
    }

    public function add_chat()
    {
        $from_user = $this->user_id;
        $to_user = $this->input->post('to_user');
        $message = $this->input->post('message');
        $chat_id = '';
        if ($to_user != "" && $message != "")
        {
            $save_data = array(
                'fk_from_user_id' => $this->user_id,
                'fk_to_user_id' => $to_user,
                'message' => $message,
                'time' => time(),
            );
            $chat_id = $this->chat_model->save($save_data);
        }
        $data['last_chat_id'] = $chat_id;
        $data['status'] = true;
        $this->json_output($data);
    }

    public function test()
    {
        $chat_history = $this->chat_model->get_all(1, 2);
        echo '<pre>';
        print_r($chat_history);
        echo '</pre>'; //die;
        //$this->load->view('chat-view');
    }

    private function json_output($data = array())
    {
        $this->output->enable_profiler(FALSE);
        $this->load->view('json_view', array('data' => $data));
    }

    public function get_online_users()
    {
        $data['online_users'] = $this->chat_model->online_users($this->user_id);
        $data['count'] = count($data['online_users']);
        $this->json_output($data);
    }

}
