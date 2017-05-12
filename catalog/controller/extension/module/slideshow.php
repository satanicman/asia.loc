<?php
class ControllerExtensionModuleSlideshow extends Controller {
	public function index($setting) {
		static $module = 0;		

		$this->load->model('design/banner');
		$this->load->model('tool/image');

		$this->document->addStyle('catalog/view/javascript/jquery/slick/slick.css');
		$this->document->addStyle('catalog/view/javascript/jquery/slick/slick-theme.css');
		$this->document->addScript('catalog/view/javascript/jquery/slick/slick.min.js');
//		$this->document->addStyle('catalog/view/javascript/jquery/owl-carousel/owl.carousel.css');
//		$this->document->addScript('catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js');

		$data['banners'] = array();

		$results = $this->model_design_banner->getBanner($setting['banner_id']);


		if ($this->request->server['HTTPS']) {
			$path = $this->config->get('config_ssl') . 'image/';
		} else {
			$path = $this->config->get('config_url') . 'image/';
		}

		foreach ($results as $result) {
			if (is_file(DIR_IMAGE . $result['image'])) {
				$data['banners'][] = array(
					'title' => $result['title'],
					'link'  => $result['link'],
//					'image' => $this->model_tool_image->resize($result['image'], $setting['width'], $setting['height'])
					'image' => $path . $result['image']
				);
			}
		}

		$data['module'] = $module++;

		return $this->load->view('extension/module/slideshow', $data);
	}
}
