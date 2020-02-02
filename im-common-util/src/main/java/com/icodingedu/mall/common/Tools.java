package com.icodingedu.mall.common;


import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.util.*;

public class Tools {

    public static String getPropertiesValue(String fileName,String key){
        InputStream is = null;
        String value = "";
        try {
            is = Tools.class.getClassLoader().getResourceAsStream(fileName);
            Properties properties = new Properties();
            properties.load(is);
            value = properties.getProperty(key);
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if(is!=null){
                try {
                    is.close();
                } catch (final IOException e) {
                    e.printStackTrace();
                }
            }
            return value;
        }
    }

    public static String getPropertiesKeys(String fileName,String value){
        InputStream is = null;
        String keys = "";
        try {
            is = Tools.class.getClassLoader().getResourceAsStream(fileName);
            Properties properties = new Properties();
            properties.load(is);
            Set<String> keyset= properties.stringPropertyNames();
            for (String s : keyset) {
                String val = properties.getProperty(s);
                if(value.equals(val)){
                    if(!"".equals(keys)){
                        keys += ",";
                    }
                    keys += s;
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if(is!=null){
                try {
                    is.close();
                } catch (final IOException e) {
                    e.printStackTrace();
                }
            }
            return keys;
        }
    }
    public static String getUUID(){
        return UUID.randomUUID().toString();
    }

    public static String getTimestamp() {
        return (System.currentTimeMillis()/1000)+"";
    }

    public static String getCurrentMonthFirstDay(){
        Date date = new Date();
        date.setDate(1);
        date.setHours(0);
        date.setMinutes(0);
        date.setSeconds(0);
        return (date.getTime()/1000)+"";
    }

    public static String getCurrentDayTimestamp(){
        Date date = new Date();
        date.setHours(0);
        date.setMinutes(0);
        date.setSeconds(0);
        return (date.getTime()/1000)+"";
    }

    public static String getTimestamp(int time) {
        return (System.currentTimeMillis()/1000L+time)+"";
    }

    public static String dateToStamp(String simpledate) {
        String res = "";
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            Date date = simpleDateFormat.parse(simpledate);
            long ts = date.getTime()/1000;
            res = String.valueOf(ts);
        } catch (Exception e) {
            e.printStackTrace();
        } finally{
            return res;
        }
    }

    public static String pageDateToStamp(String simpledate) {
        String res = "";
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM/dd/yyyy");//04/13/2017
            Date date = simpleDateFormat.parse(simpledate);
            long ts = date.getTime()/1000;
            res = String.valueOf(ts);
        } catch (Exception e) {
            e.printStackTrace();
        } finally{
            return res;
        }
    }

    public static String pageDateTimeToStamp(String simpledate) {
        String res = "";
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd HH.mm.ss");
            Date date = simpleDateFormat.parse(simpledate);
            long ts = date.getTime()/1000;
            res = String.valueOf(ts);
        } catch (Exception e) {
            e.printStackTrace();
        } finally{
            return res;
        }
    }

    public static String pageDateToCurrentMonthFirstDayStamp(String simpledate) {
        String res = "";
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM/dd/yyyy");//04/13/2017
            Date date = simpleDateFormat.parse(simpledate);
            date.setDate(1);
            date.setHours(0);
            date.setMinutes(0);
            date.setSeconds(0);
            long ts = date.getTime()/1000;
            res = String.valueOf(ts);
        } catch (Exception e) {
            e.printStackTrace();
        } finally{
            return res;
        }
    }

    @SuppressWarnings("finally")
    public static String pageDateToStamp(String simpledate,int seconds) {
        String res = "";
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM/dd/yyyy");//04/13/2017
            Date date = simpleDateFormat.parse(simpledate);
            long ts = date.getTime()/1000+seconds;
            res = String.valueOf(ts);
        } catch (Exception e) {
            e.printStackTrace();
        } finally{
            return res;
        }
    }

    public static String stampToDate(String timestamp){
        if("0".equals(timestamp)||timestamp==null||"null".equalsIgnoreCase(timestamp)||"".equals(timestamp)){
            return "";
        }else{
            String res;
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            long lt = new Long(timestamp+"000");
            Date date = new Date(lt);
            res = simpleDateFormat.format(date);
            return res;
        }
    }

    public static String stampToDate(Integer timestamp){
        String res;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        long lt = new Long(timestamp+"000");
        Date date = new Date(lt);
        res = simpleDateFormat.format(date);
        return res;
    }

    public static String stampToDateYMD(String timestamp){
        if("0".equals(timestamp)){
            return "";
        }else{
            String res;
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
            long lt = new Long(timestamp+"000");
            Date date = new Date(lt);
            res = simpleDateFormat.format(date);
            return res;
        }
    }

    public static String stampToMarketDateFormat(String timestamp){
        if("0".equals(timestamp)){
            return "";
        }else{
            String res;
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM/dd/yyyy");
            long lt = new Long(timestamp+"000");
            Date date = new Date(lt);
            res = simpleDateFormat.format(date);
            return res;
        }
    }

    public static String stampToMarketDateTimeFormat(String timestamp,int second){
        if("0".equals(timestamp)){
            return "";
        }else{
            String res;
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy/MM/dd HH.mm.ss");
            long lt = new Long(timestamp+"000");
            Date date = new Date(lt+second*1000);
            res = simpleDateFormat.format(date);
            return res;
        }
    }

    public static String stampToMarketDateFormatWeekly(String timestamp){
        if("0".equals(timestamp)){
            return "";
        }else{
            String res;
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yy/M/d EEEE",Locale.CHINA);
            long lt = new Long(timestamp+"000");
            Date date = new Date(lt);
            res = simpleDateFormat.format(date);
            return res;
        }
    }

    public static String stampToMarketDateFormatWeeklyChina(String timestamp){
        if("0".equals(timestamp)){
            return "";
        }else{
            String res;
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd EEEE",Locale.CHINA);
            long lt = new Long(timestamp+"000");
            Date date = new Date(lt);
            res = simpleDateFormat.format(date);
            return res;
        }
    }

    public static String stampToCurrentDayStamp(String timestamp,int seconds){
        if("0".equals(timestamp)){
            return "";
        }else{
            String res;
            long lt = new Long(timestamp+"000");
            Date date = new Date(lt);
            date.setHours(0);
            date.setMinutes(0);
            date.setSeconds(0);
            long ts = date.getTime()/1000+seconds;
            res = String.valueOf(ts);
            return res;
        }
    }

    public static double toFixed(double num, int count){
        if(num<=0){
            return 0.0;
        }else if(Double.isNaN(num)){
            return 0.0;
        }else{
            BigDecimal retVal = new BigDecimal(num);
            return retVal.setScale(count, BigDecimal.ROUND_HALF_UP).doubleValue();
        }
    }

    public static double toFixed(double num){
        return toFixed(num, 2);
    }

    public static String trDyh(String str){
        if(str==null){
            return "";
        }else{
            return str.replace("'", "''").replace("\\", "");
        }
    }


    public static String validateString(String tags){
        if(tags==null||"".equals(tags)||"null".equalsIgnoreCase(tags)){
            return "0";
        }else{
            return tags;
        }
    }

    public static double zhanbaifenbi(String s1,String s2){
        double d1 = Double.parseDouble(s1);
        double d2 = Double.parseDouble(s2);
        if(d2==0){
            d2=1;
        }
        double r = d1*1.0/d2*100;
        return toFixed(r);
    }

    public static double zhanbaifenbi(String s1,String s2,double usdRate){
        double d1 = Double.parseDouble(s1);
        double d2 = Double.parseDouble(s2);
        if(d2==0){
            d2=1;
        }
        double r = d1*1.0/(d2*usdRate)*100;
        return toFixed(r);
    }

    public static String getRandomString(int Len) {
        String[] baseString={"0","1","2","3",
                "4","5","6","7","8","9",
                "a","b","c","d","e",
                "f","g","h","i","j",
                "k","l","m","n","o",
                "p","q","r","s","t",
                "u","v","w","x","y",
                "z","A","B","C","D",
                "E","F","G","H","I",
                "J","K","L","M","N",
                "O","P","Q","R","S",
                "T","U","V","W","X","Y","Z"};
        Random random = new Random();
        int length=baseString.length;
        String randomString="";
        for(int i=0;i<length;i++){
            randomString+=baseString[random.nextInt(length)];
        }
        random = new Random(System.currentTimeMillis());
        String resultStr="";
        for (int i = 0; i < Len; i++) {
            resultStr += randomString.charAt(random.nextInt(randomString.length()-1));
        }
        return resultStr;
    }

    public static String removeFourChar(String content) {
        if(content==null||"".equals(content)||"null".equals(content)){
            return "";
        }
        byte[] conbyte = content.getBytes();
        for (int i = 0; i < conbyte.length; i++) {
            if ((conbyte[i] & 0xF8) == 0xF0) {
                for (int j = 0; j < 4; j++) {
                    conbyte[i+j]=0x30;
                }
                i += 3;
            }
        }
        content = new String(conbyte);
        return content.replaceAll("0000", "");
    }

    public static String getBaiFenBi(String src){
        double dsrc = 0.0;
        if(src!=null&&!"null".equalsIgnoreCase(src)){
            dsrc = Double.parseDouble(src);
        }
        double dsrch = Tools.toFixed(dsrc*100,3);
        return dsrch+"%";
    }

    public static String stampToPageDate(String stamp){
        long lt = new Long(stamp+"000");
        Date date = new Date(lt);
        SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd");
        SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
        String sd = sdfDate.format(date);
        String st = sdfTime.format(date);
        return sd+"T"+st+"+08:00";
    }

    public static String stampToFormat(String timestamp,String format){
        if("0".equals(timestamp)){
            return "";
        }else{
            String res;
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(format);
            long lt = new Long(timestamp+"000");
            Date date = new Date(lt);
            res = simpleDateFormat.format(date);
            return res;
        }
    }
    public static String getLastMonths(String benchmark) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Calendar c = Calendar.getInstance();
        c.setTime(new Date());
        c.add(Calendar.MONTH, - Integer.parseInt(benchmark));
        int hour = c.get(Calendar.HOUR_OF_DAY);
        int minute = c.get(Calendar.MINUTE);
        int second = c.get(Calendar.SECOND);
        // 时分秒（毫秒数）
        long millisecond = hour * 60 * 60 * 1000 + minute * 60 * 1000 + second * 1000;
        // 凌晨00:00:00
        c.setTimeInMillis(c.getTimeInMillis() - millisecond);
        Date m = c.getTime();
        return dateToStamp(sdf.format(m));
    }

}