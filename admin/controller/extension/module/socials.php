<?php

class ControllerExtensionModuleSocials extends Controller {
    private $error = array();

    public function index() {
        $this->language->load('extension/module/socials');

        $this->document->setTitle($this->language->get('heading_title'));
        $this->load->model('extension/module');
        $this->load->model('setting/setting');

        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
//            if (!isset($this->request->get['module_id'])) {
//                $this->model_extension_module->addModule('socials', $this->request->post);
//            } else {
//                $this->model_extension_module->editModule($this->request->get['module_id'], $this->request->post);
//            }
            $this->model_setting_setting->editSetting('socials', $this->request->post);

            $this->session->data['success'] = $this->language->get('text_success');

            $this->response->redirect($this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true));
        }

        $data['heading_title'] = $this->language->get('heading_title');

        $data['text_edit'] = $this->language->get('text_edit');

        $data['entry_facebook'] = $this->language->get('entry_facebook');
        $data['entry_twitter'] = $this->language->get('entry_twitter');
        $data['entry_youtube'] = $this->language->get('entry_youtube');
        $data['entry_instagram'] = $this->language->get('entry_instagram');
        $data['entry_gplus'] = $this->language->get('entry_gplus');

        $data['button_save'] = $this->language->get('button_save');
        $data['button_cancel'] = $this->language->get('button_cancel');

        if (isset($this->error['warning'])) {
            $data['error_warning'] = $this->error['warning'];
        } else {
            $data['error_warning'] = '';
        }

        $data['breadcrumbs'] = array();

        $data['breadcrumbs'][] = array(
            'text'      => $this->language->get('text_home'),
            'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL')
        );
     
        $data['breadcrumbs'][] = array(
            'text'      => $this->language->get('text_extension'),
            'href'      => $this->url->link('extension/module', 'token=' . $this->session->data['token'], 'SSL')
        );

        $data['breadcrumbs'][] = array(
            'text'      => $this->language->get('heading_title'),
            'href'      => $this->url->link('module/socials', 'token=' . $this->session->data['token'], 'SSL')
        );

        if (!isset($this->request->get['module_id'])) {
            $data['action'] = $this->url->link('extension/module/socials', 'token=' . $this->session->data['token'], true);
        } else {
            $data['action'] = $this->url->link('extension/module/socials', 'token=' . $this->session->data['token'] . '&module_id=' . $this->request->get['module_id'], true);
        }

        $data['cancel'] = $this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true);

//        if (isset($this->request->get['module_id']) && ($this->request->server['REQUEST_METHOD'] != 'POST')) {
//            $module_info = $this->model_extension_module->getModule($this->request->get['module_id']);
//        }

        if (isset($this->request->post['facebook'])) {
            $data['facebook'] = $this->request->post['facebook'];
        } elseif($this->config->get('socials_facebook')) {
            $data['facebook'] = $this->config->get('socials_facebook');
        } elseif (!empty($module_info['facebook'])) {
            $data['facebook'] = $module_info['facebook'];
        } else {
            $data['facebook'] = '';
        }
        if (isset($this->request->post['twitter'])) {
            $data['twitter'] = $this->request->post['twitter'];
        } elseif($this->config->get('socials_twitter')) {
            $data['twitter'] = $this->config->get('socials_twitter');
        } elseif (!empty($module_info['twitter'])) {
            $data['twitter'] = $module_info['twitter'];
        } else {
            $data['twitter'] = '';
        }
        if (isset($this->request->post['youtube'])) {
            $data['youtube'] = $this->request->post['youtube'];
        } elseif($this->config->get('socials_youtube')) {
            $data['youtube'] = $this->config->get('socials_youtube');
        } elseif (!empty($module_info['youtube'])) {
            $data['youtube'] = $module_info['youtube'];
        } else {
            $data['youtube'] = '';
        }
        if (isset($this->request->post['instagram'])) {
            $data['instagram'] = $this->request->post['instagram'];
        } elseif($this->config->get('socials_instagram')) {
            $data['instagram'] = $this->config->get('socials_instagram');
        } elseif (!empty($module_info['instagram'])) {
            $data['instagram'] = $module_info['instagram'];
        } else {
            $data['instagram'] = '';
        }
        if (isset($this->request->post['gplus'])) {
            $data['gplus'] = $this->request->post['gplus'];
        } elseif($this->config->get('socials_gplus')) {
            $data['gplus'] = $this->config->get('socials_gplus');
        } elseif (!empty($module_info['gplus'])) {
            $data['gplus'] = $module_info['gplus'];
        } else {
            $data['gplus'] = '';
        }

        if (isset($this->request->post['status'])) {
            $data['status'] = $this->request->post['status'];
        } elseif (!empty($module_info)) {
            $data['status'] = $module_info['status'];
        } else {
            $data['status'] = '';
        }

        $data['header'] = $this->load->controller('common/header');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['footer'] = $this->load->controller('common/footer');


        $this->response->setOutput($this->load->view('extension/module/socials', $data));
    }

    protected function validate() {
        if (!$this->user->hasPermission('modify', 'extension/module/socials')) {
            $this->error['warning'] = $this->language->get('error_permission');
        }

        if (!$this->error) {
            return true;
        } else {
            return false;
        }   
    }
}