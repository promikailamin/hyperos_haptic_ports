.class public Lcom/miui/mishare/app/model/MiShareDevice;
.super Ljava/lang/Object;
.source "MiShareDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/mishare/app/model/MiShareDevice$TokenGenerator;
    }
.end annotation


# instance fields
.field public blacklist deviceId:Ljava/lang/String;

.field public blacklist deviceModelName:Ljava/lang/String;

.field public blacklist deviceName:Ljava/lang/String;

.field public blacklist deviceStatus:I

.field public blacklist deviceType:I

.field public blacklist files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist isGlobalDevice:Z

.field public blacklist isUwbHit:Z

.field public blacklist isUwbSupport:Z

.field public blacklist progressPercent:F

.field public blacklist remoteDevice:Lcom/miui/mishare/RemoteDevice;

.field public blacklist showProgress:Z

.field public blacklist taskId:Ljava/lang/String;

.field public blacklist uwbRank:I

.field public blacklist vendorId:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "guidingNetworkType"    # I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/mishare/app/model/MiShareDevice;->deviceStatus:I

    .line 32
    const/4 v0, 0x2

    if-ne p1, v0, :cond_10

    .line 33
    invoke-static {}, Lcom/miui/mishare/app/model/MiShareDevice;->generatePCTaskId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/mishare/app/model/MiShareDevice;->taskId:Ljava/lang/String;

    goto :goto_1a

    .line 35
    :cond_10
    invoke-static {}, Lcom/miui/mishare/app/model/MiShareDevice$TokenGenerator;->-$$Nest$smget()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/mishare/app/model/MiShareDevice;->taskId:Ljava/lang/String;

    .line 37
    :goto_1a
    return-void
.end method

.method public static blacklist checkGlobalDeviceUpdate(ZZ)Z
    .registers 3
    .param p0, "oldIsGlobalDevice"    # Z
    .param p1, "newIsGlobalDevice"    # Z

    .line 73
    if-eq p0, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public static blacklist checkUwbHitUpdate(ZZ)Z
    .registers 3
    .param p0, "oldUwbHit"    # Z
    .param p1, "newUwbHit"    # Z

    .line 69
    if-eq p0, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public static blacklist generatePCTaskId()Ljava/lang/String;
    .registers 2

    .line 65
    invoke-static {}, Lcom/miui/mishare/app/model/MiShareDevice$TokenGenerator;->-$$Nest$sfgetRANDOM()Ljava/util/Random;

    move-result-object v0

    const v1, 0xfffc

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist isPC()Z
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/miui/mishare/app/model/MiShareDevice;->remoteDevice:Lcom/miui/mishare/RemoteDevice;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/miui/mishare/RemoteDevice;->isPC()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public blacklist isPad()Z
    .registers 4

    .line 45
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/miui/mishare/app/model/MiShareDevice;->remoteDevice:Lcom/miui/mishare/RemoteDevice;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/miui/mishare/RemoteDevice;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "isPad"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_13

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0

    .line 46
    :catchall_13
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/Throwable;
    return v0
.end method

.method public blacklist supportUwb()Z
    .registers 3

    .line 52
    iget-object v0, p0, Lcom/miui/mishare/app/model/MiShareDevice;->remoteDevice:Lcom/miui/mishare/RemoteDevice;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/miui/mishare/RemoteDevice;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/miui/mishare/app/model/MiShareDevice;->remoteDevice:Lcom/miui/mishare/RemoteDevice;

    .line 53
    invoke-virtual {v0}, Lcom/miui/mishare/RemoteDevice;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mc"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v0

    const/16 v1, 0x21

    if-ne v0, v1, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 52
    :goto_1d
    return v0
.end method
