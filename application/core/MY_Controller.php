<?php

/**
 * Description of MY_Controller
 *
 * @author nick
 */
class MY_Controller extends CI_Controller
{
    public $data = array();

    public function __construct()
    {
        parent::__construct();
        $this->output->enable_profiler(true);
    }

}
