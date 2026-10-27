.class public Lcom/miui/whetstone/IWhetstoneSysInfoService$Default;
.super Ljava/lang/Object;
.source "IWhetstoneSysInfoService.java"

# interfaces
.implements Lcom/miui/whetstone/IWhetstoneSysInfoService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/IWhetstoneSysInfoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSysInfo(Ljava/lang/String;)J
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public blacklist getSysInfos([Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "type"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method
