<?php

/**
 * Description of DisplayHook
 *
 * @author nick
 */
class DisplayHook
{

    public function captureOutput()
    {
        $this->CI = & get_instance();
        $output = $this->CI->output->get_output();
        $this->CI->output->enable_profiler(true);
        if (ENVIRONMENT != 'testing')
        {
            echo $output;
        }
    }

}
