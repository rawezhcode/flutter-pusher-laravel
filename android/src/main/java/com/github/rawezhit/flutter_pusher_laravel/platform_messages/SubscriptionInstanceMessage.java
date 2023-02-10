package com.github.rawezhit.flutter_pusher_laravel.platform_messages;

public class SubscriptionInstanceMessage extends InstanceMessage {

    private String channelName;

    public String getChannelName() {
        return channelName;
    }

    public void setChannelName(String channelName) {
        this.channelName = channelName;
    }
}
