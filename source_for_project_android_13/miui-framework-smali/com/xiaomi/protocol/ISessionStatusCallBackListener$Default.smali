.class public Lcom/xiaomi/protocol/ISessionStatusCallBackListener$Default;
.super Ljava/lang/Object;
.source "ISessionStatusCallBackListener.java"

# interfaces
.implements Lcom/xiaomi/protocol/ISessionStatusCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/protocol/ISessionStatusCallBackListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onSessionStatusFlawResultData(II)V
    .registers 3
    .param p1, "resultId"    # I
    .param p2, "flawResult"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    return-void
.end method
