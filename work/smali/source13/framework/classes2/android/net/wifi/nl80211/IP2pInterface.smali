.class public interface abstract Landroid/net/wifi/nl80211/IP2pInterface;
.super Ljava/lang/Object;
.source "IP2pInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nl80211/IP2pInterface$Stub;,
        Landroid/net/wifi/nl80211/IP2pInterface$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.nl80211.IP2pInterface"


# virtual methods
.method public abstract blacklist signalPoll()[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
