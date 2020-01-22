package com.icodingedu.mall.product.service.impl;

import com.icodingedu.mall.product.service.AbstractZookeeperLock;
import org.I0Itec.zkclient.IZkDataListener;

import java.util.concurrent.CountDownLatch;

public class ZookeeperDistributeLock extends AbstractZookeeperLock {

    //初始化的时候就传递lock路径
    public ZookeeperDistributeLock(String lock_path){
        lock = lock_path;
    }

    @Override
    protected boolean tryLock() {
        try {
            //创建一个临时节点
            zkClient.createEphemeral(lock);
            System.out.println("创建节点成功.........");
            return true;
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("创建节点失败.........");
            return false;
        }
    }

    @Override
    protected boolean waitLock() {
        IZkDataListener iZkDataListener = new IZkDataListener() {
            @Override
            public void handleDataChange(String s, Object o) throws Exception {

            }

            @Override
            public void handleDataDeleted(String s) throws Exception {
                if(countDownLatch!=null){
                    //倒计数器
                    countDownLatch.countDown();
                }
            }
        };
        //订阅一个数据改变的通知
        zkClient.subscribeDataChanges(lock,iZkDataListener);
        if(zkClient.exists(lock)){
            countDownLatch = new CountDownLatch(1);
            try {
                countDownLatch.await();
            }catch (Exception e){
                e.printStackTrace();
            }
        }
        //取消订阅
        zkClient.unsubscribeDataChanges(lock,iZkDataListener);
        return false;
    }
}
