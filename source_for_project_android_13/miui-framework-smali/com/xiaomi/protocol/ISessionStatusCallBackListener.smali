.class public interface abstract Lcom/xiaomi/protocol/ISessionStatusCallBackListener;
.super Ljava/lang/Object;
.source "ISessionStatusCallBackListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/protocol/ISessionStatusCallBackListener$Stub;,
        Lcom/xiaomi/protocol/ISessionStatusCallBackListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.protocol.ISessionStatusCallBackListener"


# virtual methods
.method public abstract blacklist onSessionStatusFlawResultData(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
