.class public interface abstract Lcom/xiaomi/aiinput/IAIInputTextManagerClient;
.super Ljava/lang/Object;
.source "IAIInputTextManagerClient.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/aiinput/IAIInputTextManagerClient$Stub;,
        Lcom/xiaomi/aiinput/IAIInputTextManagerClient$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.aiinput.IAIInputTextManagerClient"


# virtual methods
.method public abstract blacklist getFocusedAITextInfo(Lcom/xiaomi/aiinput/AIInputResultListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist insertFocusedAIText(Ljava/lang/String;Lcom/xiaomi/aiinput/AIInputResultListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setFocusedAIText(Ljava/lang/String;Lcom/xiaomi/aiinput/AIInputResultListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
