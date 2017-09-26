<?php

namespace app\admin\controller\general;

use app\common\controller\Backend;
use think\Db;

/**
 * 医院配置
 */
class Hospital extends Backend
{
    public function _initialize()
    {
        parent::_initialize();
        $this->model = model('hospital');
    }

    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {
        $this->request->filter(['strip_tags']);
        $hospitals = Db::name('hospital')->where('status',1)->where('is_deleted',0)->field('id,title,group_id,is_set,create_at')->order('id desc')->select();
        $this->assign('hospitals',$hospitals);
        $heading = build_heading('general/hospital');
        $action = request()->action();
        $controller = str_replace('.', '/', request()->controller());
        $path = strtolower($controller . ($action && $action != 'index' ? '/' . $action : ''));
        // dump($heading);

        return $this->view->fetch();
        // dump($hospitals);
    }

    /**
     * 保存修改的资源
     *
     * @param  \think\Request  $request
     * @return \think\Response
     */
    public function update(Request $request)
    {
        //
    }

    /**
     * 显示指定的资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function read($id)
    {
        //
    }

   
}
