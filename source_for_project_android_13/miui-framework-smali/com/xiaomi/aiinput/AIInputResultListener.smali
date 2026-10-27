.class public interface abstract Lcom/xiaomi/aiinput/AIInputResultListener;
.super Ljava/lang/Object;
.source "AIInputResultListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/aiinput/AIInputResultListener$Stub;,
        Lcom/xiaomi/aiinput/AIInputResultListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.aiinput.AIInputResultListener"


# virtual methods
.method public abstract onGetFocusedAITextInfo(Lcom/xiaomi/aiinput/AiTextInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onHandleTextView(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
