.class public Landroid/app/pinner/PinnerServiceClient;
.super Ljava/lang/Object;
.source "PinnerServiceClient.java"


# static fields
.field private static blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 41
    const-string v0, "PinnerServiceClient"

    sput-object v0, Landroid/app/pinner/PinnerServiceClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getPinnerStats()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/pinner/PinnedFileStat;",
            ">;"
        }
    .end annotation

    .line 58
    const-string/jumbo v0, "pinner"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 59
    if-nez v0, :cond_16

    .line 60
    sget-object v0, Landroid/app/pinner/PinnerServiceClient;->TAG:Ljava/lang/String;

    const-string v1, "Failed to retrieve PinnerService. A common failure reason is due to a lack of selinux permissions."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 64
    :cond_16
    invoke-static {v0}, Landroid/app/pinner/IPinnerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/pinner/IPinnerService;

    move-result-object v0

    .line 65
    if-nez v0, :cond_29

    .line 66
    sget-object v0, Landroid/app/pinner/PinnerServiceClient;->TAG:Ljava/lang/String;

    const-string v1, "Failed to cast PinnerService."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 71
    :cond_29
    :try_start_29
    invoke-interface {v0}, Landroid/app/pinner/IPinnerService;->getPinnerStats()Ljava/util/List;

    move-result-object v0
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2d} :catch_2f

    .line 74
    nop

    .line 75
    return-object v0

    .line 72
    :catch_2f
    move-exception v0

    .line 73
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to retrieve stats from PinnerService"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
