.class public interface abstract Lcom/miui/whetstone/IVideoFpsCallBack;
.super Ljava/lang/Object;
.source "IVideoFpsCallBack.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/IVideoFpsCallBack$Stub;,
        Lcom/miui/whetstone/IVideoFpsCallBack$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.miui.whetstone.IVideoFpsCallBack"


# virtual methods
.method public abstract blacklist onVideoFpsChange(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
