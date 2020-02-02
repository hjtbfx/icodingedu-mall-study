package com.icodingedu.mall.product.service;

import org.I0Itec.zkclient.ZkClient;

import java.util.concurrent.CountDownLatch;

public abstract class AbstractZookeeperLock implements ZookeeperLock {

    protected String lock = "/";
    protected String zk_address = "127.0.0.1:2181";
    protected ZkClient zkClient = new ZkClient(zk_address);
    protected CountDownLatch countDownLatch;

    @Override
    public void lock() {
        //尝试获取锁
        if(tryLock()){
            //拿到锁
            System.out.println("获得锁成功........");
        }else{
            //获得锁失败，等待获取锁，阻塞
            waitLock();
            //等待结束获取锁
            lock();
        }
    }

    @Override
    public void unlock() {
        //创建的是临时节点
        //关闭连接来解锁
        if(zkClient!=null){
            //关闭连接就可以删除节点
            zkClient.close();
            System.out.println("关闭连接释放锁......");
        }
    }

    protected abstract boolean tryLock();
    protected abstract boolean waitLock();
}
