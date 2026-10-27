.class public Lcom/xiaomi/aiinput/AIInputResultListener$Default;
.super Ljava/lang/Object;
.source "AIInputResultListener.java"

# interfaces
.implements Lcom/xiaomi/aiinput/AIInputResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/aiinput/AIInputResultListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onGetFocusedAITextInfo(Lcom/xiaomi/aiinput/AiTextInfo;)V
    .registers 2
    .param p1, "aiTextInfo"    # Lcom/xiaomi/aiinput/AiTextInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method

.method public whitelist onHandleTextView(IZ)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "status"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    return-void
.end method
