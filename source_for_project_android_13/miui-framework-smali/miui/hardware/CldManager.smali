.class public Lmiui/hardware/CldManager;
.super Ljava/lang/Object;
.source "CldManager.java"


# static fields
.field public static final blacklist CLD_OPER_ABORTED:I = 0x3

.field public static final blacklist CLD_OPER_DONE:I = 0x2

.field public static final blacklist CLD_OPER_FATAL_ERR:I = 0x4

.field public static final blacklist CLD_OPER_NOT_SUPPORTED:I = 0x0

.field public static final blacklist CLD_OPER_PROCESSING:I = 0x1

.field private static final blacklist CLD_SERVICE_NAME:Ljava/lang/String; = "miui.cld.service"

.field public static final blacklist FRAG_ANALYSIS:I = 0x0

.field public static final blacklist FRAG_LEVEL_LOW:I = 0x1

.field public static final blacklist FRAG_LEVEL_MEDIUM:I = 0x2

.field public static final blacklist FRAG_LEVEL_SEVERE:I = 0x3

.field public static final blacklist FRAG_UNKNOWN:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String;

.field private static volatile blacklist sInstance:Lmiui/hardware/CldManager;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Lmiui/hardware/ICldManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 16
    const-class v0, Lmiui/hardware/CldManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/hardware/CldManager;->TAG:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lmiui/hardware/CldManager;->sInstance:Lmiui/hardware/CldManager;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lmiui/hardware/CldManager;->mContext:Landroid/content/Context;

    .line 51
    const-string v0, "miui.cld.service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/hardware/ICldManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/hardware/ICldManager;

    move-result-object v0

    iput-object v0, p0, Lmiui/hardware/CldManager;->mService:Lmiui/hardware/ICldManager;

    .line 52
    return-void
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Lmiui/hardware/CldManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 38
    sget-object v0, Lmiui/hardware/CldManager;->sInstance:Lmiui/hardware/CldManager;

    if-nez v0, :cond_17

    .line 39
    const-class v0, Lmiui/hardware/CldManager;

    monitor-enter v0

    .line 40
    :try_start_7
    sget-object v1, Lmiui/hardware/CldManager;->sInstance:Lmiui/hardware/CldManager;

    if-nez v1, :cond_12

    .line 41
    new-instance v1, Lmiui/hardware/CldManager;

    invoke-direct {v1, p0}, Lmiui/hardware/CldManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lmiui/hardware/CldManager;->sInstance:Lmiui/hardware/CldManager;

    .line 43
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 46
    :cond_17
    :goto_17
    sget-object v0, Lmiui/hardware/CldManager;->sInstance:Lmiui/hardware/CldManager;

    return-object v0
.end method


# virtual methods
.method public blacklist getCldOperationStatus()I
    .registers 4

    .line 100
    :try_start_0
    iget-object v0, p0, Lmiui/hardware/CldManager;->mService:Lmiui/hardware/ICldManager;

    invoke-interface {v0}, Lmiui/hardware/ICldManager;->getCldOperationStatus()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 101
    :catch_7
    move-exception v0

    .line 102
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lmiui/hardware/CldManager;->TAG:Ljava/lang/String;

    const-string v2, "RemoteException: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getFragmentLevel()I
    .registers 4

    .line 74
    :try_start_0
    iget-object v0, p0, Lmiui/hardware/CldManager;->mService:Lmiui/hardware/ICldManager;

    invoke-interface {v0}, Lmiui/hardware/ICldManager;->getFragmentLevel()I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 75
    :catch_7
    move-exception v0

    .line 76
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lmiui/hardware/CldManager;->TAG:Ljava/lang/String;

    const-string v2, "RemoteException: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist isCldSupported()Z
    .registers 4

    .line 60
    :try_start_0
    iget-object v0, p0, Lmiui/hardware/CldManager;->mService:Lmiui/hardware/ICldManager;

    invoke-interface {v0}, Lmiui/hardware/ICldManager;->isCldSupported()Z

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 61
    :catch_7
    move-exception v0

    .line 62
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lmiui/hardware/CldManager;->TAG:Ljava/lang/String;

    const-string v2, "RemoteException: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist triggerCld(I)V
    .registers 5
    .param p1, "val"    # I

    .line 88
    :try_start_0
    iget-object v0, p0, Lmiui/hardware/CldManager;->mService:Lmiui/hardware/ICldManager;

    invoke-interface {v0, p1}, Lmiui/hardware/ICldManager;->triggerCld(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 91
    goto :goto_e

    .line 89
    :catch_6
    move-exception v0

    .line 90
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lmiui/hardware/CldManager;->TAG:Ljava/lang/String;

    const-string v2, "RemoteException: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method
