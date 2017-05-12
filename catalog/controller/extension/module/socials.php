<?php
class ControllerExtensionModuleSocials extends Controller {
    public function index() {
        if ($this->request->server['HTTPS']) {
            $server = $this->config->get('config_ssl');
        } else {
            $server = $this->config->get('config_url');
        }

        $this->load->model('setting/setting');

        $socials = $this->model_setting_setting->getSetting('socials');

        $data['socials'] = array();

        foreach ($socials as $key => $social) {
            $name = str_replace('socials_', '', $key);
            $data['socials'][] = array(
                'link' => $social,
                'name' => $name,
                'image' => $server . 'image/extension/module/socials/' . $name . '.png'
            );
        }
        
        return $this->load->view('extension/module/socials', $data);
    }
}
