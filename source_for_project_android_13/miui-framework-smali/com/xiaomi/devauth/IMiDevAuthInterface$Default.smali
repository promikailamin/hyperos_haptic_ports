.class public Lcom/xiaomi/devauth/IMiDevAuthInterface$Default;
.super Ljava/lang/Object;
.source "IMiDevAuthInterface.java"

# interfaces
.implements Lcom/xiaomi/devauth/IMiDevAuthInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/devauth/IMiDevAuthInterface;
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
.method public whitelist GetUidList()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist UCarVerifyStart(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p1, "model"    # Ljava/lang/String;
    .param p2, "certificate"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist UcarCleanAllPublicKeyAndSalt()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist chooseKey([B[B[B)[B
    .registers 5
    .param p1, "uid"    # [B
    .param p2, "keyMetaData1"    # [B
    .param p3, "keyMetaData2"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist cleanAllOnlineKeyAndUidData()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getChallenge(I)[B
    .registers 3
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist newKeyBlobGet(I[B[B[B)[B
    .registers 6
    .param p1, "algorithmType"    # I
    .param p2, "uid"    # [B
    .param p3, "oldKeyMeta"    # [B
    .param p4, "newKeyMeta"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist tokenGet(I[B[B[B)[B
    .registers 6
    .param p1, "algorithmType"    # I
    .param p2, "uid"    # [B
    .param p3, "keyMetaData"    # [B
    .param p4, "challenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist tokenVerify(I[B[B[B[B)I
    .registers 7
    .param p1, "algorithmType"    # I
    .param p2, "uid"    # [B
    .param p3, "keyMetaData"    # [B
    .param p4, "challenge"    # [B
    .param p5, "token"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    return v0
.end method
