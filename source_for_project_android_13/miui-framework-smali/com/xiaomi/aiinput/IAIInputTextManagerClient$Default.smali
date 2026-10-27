.class public Lcom/xiaomi/aiinput/IAIInputTextManagerClient$Default;
.super Ljava/lang/Object;
.source "IAIInputTextManagerClient.java"

# interfaces
.implements Lcom/xiaomi/aiinput/IAIInputTextManagerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/aiinput/IAIInputTextManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFocusedAITextInfo(Lcom/xiaomi/aiinput/AIInputResultListener;)V
    .registers 2
    .param p1, "aiInputResultListener"    # Lcom/xiaomi/aiinput/AIInputResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public blacklist insertFocusedAIText(Ljava/lang/String;Lcom/xiaomi/aiinput/AIInputResultListener;)V
    .registers 3
    .param p1, "txt"    # Ljava/lang/String;
    .param p2, "aiInputResultListener"    # Lcom/xiaomi/aiinput/AIInputResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public blacklist setFocusedAIText(Ljava/lang/String;Lcom/xiaomi/aiinput/AIInputResultListener;)V
    .registers 3
    .param p1, "txt"    # Ljava/lang/String;
    .param p2, "aiInputResultListener"    # Lcom/xiaomi/aiinput/AIInputResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method
