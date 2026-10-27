.class public Landroid/cameracovered/MiuiCameraCoveredManagerImpl;
.super Ljava/lang/Object;
.source "MiuiCameraCoveredManagerImpl.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MiuiCameraCoveredManagerImpl"

.field private static blacklist mInstance:Landroid/cameracovered/MiuiCameraCoveredManagerImpl;


# instance fields
.field private blacklist mService:Landroid/cameracovered/IMiuiCameraCoveredManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 10
    const/4 v0, 0x0

    sput-object v0, Landroid/cameracovered/MiuiCameraCoveredManagerImpl;->mInstance:Landroid/cameracovered/MiuiCameraCoveredManagerImpl;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/cameracovered/MiuiCameraCoveredManagerImpl;->mService:Landroid/cameracovered/IMiuiCameraCoveredManager;

    return-void
.end method

.method private blacklist checkService()Z
    .registers 3

    .line 14
    iget-object v0, p0, Landroid/cameracovered/MiuiCameraCoveredManagerImpl;->mService:Landroid/cameracovered/IMiuiCameraCoveredManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 15
    return v1

    .line 17
    :cond_6
    const-string v0, "camera_covered_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/cameracovered/IMiuiCameraCoveredManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/cameracovered/IMiuiCameraCoveredManager;

    move-result-object v0

    iput-object v0, p0, Landroid/cameracovered/MiuiCameraCoveredManagerImpl;->mService:Landroid/cameracovered/IMiuiCameraCoveredManager;

    .line 18
    if-nez v0, :cond_1d

    .line 19
    const-string v0, "MiuiCameraCoveredManagerImpl"

    const-string v1, "check service failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    const/4 v0, 0x0

    return v0

    .line 22
    :cond_1d
    return v1
.end method

.method public static blacklist getDefault()Landroid/cameracovered/MiuiCameraCoveredManagerImpl;
    .registers 2

    .line 26
    const-class v0, Landroid/cameracovered/MiuiCameraCoveredManagerImpl;

    monitor-enter v0

    .line 27
    :try_start_3
    sget-object v1, Landroid/cameracovered/MiuiCameraCoveredManagerImpl;->mInstance:Landroid/cameracovered/MiuiCameraCoveredManagerImpl;

    if-nez v1, :cond_e

    .line 28
    new-instance v1, Landroid/cameracovered/MiuiCameraCoveredManagerImpl;

    invoke-direct {v1}, Landroid/cameracovered/MiuiCameraCoveredManagerImpl;-><init>()V

    sput-object v1, Landroid/cameracovered/MiuiCameraCoveredManagerImpl;->mInstance:Landroid/cameracovered/MiuiCameraCoveredManagerImpl;

    .line 30
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 31
    sget-object v0, Landroid/cameracovered/MiuiCameraCoveredManagerImpl;->mInstance:Landroid/cameracovered/MiuiCameraCoveredManagerImpl;

    return-object v0

    .line 30
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method


# virtual methods
.method public blacklist getService()Landroid/cameracovered/IMiuiCameraCoveredManager;
    .registers 2

    .line 36
    invoke-direct {p0}, Landroid/cameracovered/MiuiCameraCoveredManagerImpl;->checkService()Z

    .line 37
    iget-object v0, p0, Landroid/cameracovered/MiuiCameraCoveredManagerImpl;->mService:Landroid/cameracovered/IMiuiCameraCoveredManager;

    return-object v0
.end method
