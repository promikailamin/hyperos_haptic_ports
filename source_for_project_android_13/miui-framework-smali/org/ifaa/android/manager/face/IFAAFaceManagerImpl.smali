.class public Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;
.super Lorg/ifaa/android/manager/face/IFAAFaceManagerV2;
.source "IFAAFaceManagerImpl.java"

# interfaces
.implements Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;
.implements Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$SeccamStopTask;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field public static final blacklist DESTINATION_MLVM:Ljava/lang/Integer;

.field public static final blacklist DESTINATION_QTEE:Ljava/lang/Integer;

.field private static volatile blacklist INSTANCE:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl; = null

.field private static final blacklist IS_SUPPORT_2DFA:Z

.field private static final blacklist PREVIEW_CAMERAID:Ljava/lang/Integer;

.field private static final blacklist PREVIEW_FORMAT:Ljava/lang/Integer;

.field private static final blacklist PREVIEW_HEIGHT:Ljava/lang/Integer;

.field private static final blacklist PREVIEW_NUMOFBUFFERS:Ljava/lang/Integer;

.field private static final blacklist PREVIEW_SURFACE_NUMOFBUFFERS:Ljava/lang/Integer;

.field private static final blacklist PREVIEW_WIDTH:Ljava/lang/Integer;

.field private static final blacklist SECCAM_STOP_TIMEOUT:Ljava/lang/Integer;

.field private static final blacklist TAG:Ljava/lang/String; = "IFAAFaceManagerImplV2"

.field private static final blacklist TZ_APP_BUFFER_SIZE:I = 0x2000

.field private static final blacklist TZ_APP_NAME:Ljava/lang/String; = "seccam2d"

.field public static final blacklist UPGRADE_ACTION_RESET:I = 0x0

.field public static final blacklist UPGRADE_ACTION_UPDATE:I = 0x2

.field public static final blacklist UPGRADE_ACTION_WRITE:I = 0x1

.field private static final blacklist mClassName:Ljava/lang/String; = "org.ifaa.android.manager.IFAAService"

.field private static blacklist mConn:Landroid/content/ServiceConnection; = null

.field private static blacklist mContext:Landroid/content/Context; = null

.field private static blacklist mDeathRecipient:Landroid/os/IBinder$DeathRecipient; = null

.field private static final blacklist mPackageName:Ljava/lang/String; = "org.ifaa.aidl.manager"

.field private static blacklist mService:Lorg/ifaa/android/manager/IIFAAService;


# instance fields
.field protected blacklist frameCallbackReturnParamsSize_:I

.field protected blacklist frameCallbackReturnParams_:[B

.field private blacklist mCameraOperationLock:Ljava/util/concurrent/Semaphore;

.field private final blacklist mSeccamStopping:Landroid/os/ConditionVariable;

.field private blacklist previewCamera_:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCameraOperationLock(Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;)Ljava/util/concurrent/Semaphore;
    .registers 1

    iget-object p0, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mCameraOperationLock:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSeccamStopping(Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;)Landroid/os/ConditionVariable;
    .registers 1

    iget-object p0, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mSeccamStopping:Landroid/os/ConditionVariable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetpreviewCamera_(Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;)Lorg/ifaa/android/manager/face/IFAASecureCamera2API;
    .registers 1

    iget-object p0, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->previewCamera_:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputpreviewCamera_(Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;Lorg/ifaa/android/manager/face/IFAASecureCamera2API;)V
    .registers 2

    iput-object p1, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->previewCamera_:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmConn()Landroid/content/ServiceConnection;
    .registers 1

    sget-object v0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mConn:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmDeathRecipient()Landroid/os/IBinder$DeathRecipient;
    .registers 1

    sget-object v0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmService()Lorg/ifaa/android/manager/IIFAAService;
    .registers 1

    sget-object v0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mService:Lorg/ifaa/android/manager/IIFAAService;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputmService(Lorg/ifaa/android/manager/IIFAAService;)V
    .registers 1

    sput-object p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mService:Lorg/ifaa/android/manager/IIFAAService;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sminitService()V
    .registers 0

    invoke-static {}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->initService()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 35
    invoke-static {}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->isSupport2dfa()Z

    move-result v0

    sput-boolean v0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->IS_SUPPORT_2DFA:Z

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->INSTANCE:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    .line 46
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->DESTINATION_QTEE:Ljava/lang/Integer;

    .line 47
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->DESTINATION_MLVM:Ljava/lang/Integer;

    .line 49
    const/16 v2, 0x258

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sput-object v2, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->SECCAM_STOP_TIMEOUT:Ljava/lang/Integer;

    .line 53
    sput-object v1, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->PREVIEW_CAMERAID:Ljava/lang/Integer;

    .line 54
    const/16 v1, 0x280

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->PREVIEW_WIDTH:Ljava/lang/Integer;

    .line 55
    const/16 v1, 0x1e0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->PREVIEW_HEIGHT:Ljava/lang/Integer;

    .line 56
    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->PREVIEW_FORMAT:Ljava/lang/Integer;

    .line 57
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->PREVIEW_NUMOFBUFFERS:Ljava/lang/Integer;

    .line 58
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->PREVIEW_SURFACE_NUMOFBUFFERS:Ljava/lang/Integer;

    .line 60
    sput-object v0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mContext:Landroid/content/Context;

    .line 61
    sput-object v0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mService:Lorg/ifaa/android/manager/IIFAAService;

    .line 102
    new-instance v0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$1;

    invoke-direct {v0}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$1;-><init>()V

    sput-object v0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 113
    new-instance v0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$2;

    invoke-direct {v0}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$2;-><init>()V

    sput-object v0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mConn:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 31
    invoke-direct {p0}, Lorg/ifaa/android/manager/face/IFAAFaceManagerV2;-><init>()V

    .line 43
    const/16 v0, 0x10

    iput v0, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->frameCallbackReturnParamsSize_:I

    .line 44
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->frameCallbackReturnParams_:[B

    .line 50
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mSeccamStopping:Landroid/os/ConditionVariable;

    .line 51
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mCameraOperationLock:Ljava/util/concurrent/Semaphore;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->previewCamera_:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    return-void
.end method

.method private blacklist byte4ToInt([BI)I
    .registers 9
    .param p1, "bytes"    # [B
    .param p2, "off"    # I

    .line 197
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    .line 198
    .local v0, "b0":I
    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 199
    .local v1, "b1":I
    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    .line 200
    .local v2, "b2":I
    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 201
    .local v3, "b3":I
    shl-int/lit8 v4, v3, 0x18

    shl-int/lit8 v5, v2, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v0

    return v4
.end method

.method private blacklist closeCamera()Z
    .registers 3

    .line 174
    iget-object v0, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mSeccamStopping:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 175
    new-instance v0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$SeccamStopTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$SeccamStopTask;-><init>(Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$SeccamStopTask-IA;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl$SeccamStopTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 176
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist getInstance(Landroid/content/Context;)Lorg/ifaa/android/manager/face/IFAAFaceManagerV2;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 66
    .local v0, "appContext":Landroid/content/Context;
    const-string v1, "IFAAFaceManagerImplV2"

    const-string v2, "getInstance+++"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget-object v1, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->INSTANCE:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    if-eqz v1, :cond_13

    sget-object v1, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mContext:Landroid/content/Context;

    if-eq v0, v1, :cond_5b

    :cond_13
    sget-boolean v1, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->IS_SUPPORT_2DFA:Z

    if-eqz v1, :cond_5b

    .line 68
    const-class v1, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    monitor-enter v1

    .line 69
    :try_start_1a
    const-string v2, "IFAAFaceManagerImplV2"

    const-string v3, "A new instance is required"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    sget-object v2, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_35

    .line 71
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 72
    invoke-static {}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->getInstance()Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->release()V

    .line 75
    :cond_35
    new-instance v2, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    invoke-direct {v2}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;-><init>()V

    sput-object v2, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->INSTANCE:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    .line 77
    sput-object v0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mContext:Landroid/content/Context;

    .line 78
    invoke-static {}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->initService()V

    .line 79
    invoke-static {}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->getInstance()Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    move-result-object v3

    sget-object v4, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mContext:Landroid/content/Context;

    sget-object v5, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->INSTANCE:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    const-string v6, "seccam2d"

    const/16 v7, 0x2000

    sget-object v2, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->DESTINATION_MLVM:Ljava/lang/Integer;

    .line 80
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 79
    invoke-virtual/range {v3 .. v8}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->start(Landroid/content/Context;Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;Ljava/lang/String;II)Z

    .line 81
    monitor-exit v1

    goto :goto_5b

    :catchall_58
    move-exception v2

    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_1a .. :try_end_5a} :catchall_58

    throw v2

    .line 83
    :cond_5b
    :goto_5b
    const-string v1, "IFAAFaceManagerImplV2"

    const-string v2, "getInstance---"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sget-object v1, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->INSTANCE:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    return-object v1
.end method

.method private static blacklist initService()V
    .registers 4

    .line 88
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 89
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "org.ifaa.aidl.manager"

    const-string v2, "org.ifaa.android.manager.IFAAService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    sget-object v1, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_22

    .line 91
    const-string v1, "IFAAFaceManagerImplV2"

    const-string v2, "cannot bind service: org.ifaa.android.manager.IFAAService"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_22
    return-void
.end method

.method private blacklist invokeCallback(Lorg/ifaa/android/manager/face/IFAAFaceManager$AuthenticatorCallback;I)V
    .registers 4
    .param p1, "callback"    # Lorg/ifaa/android/manager/face/IFAAFaceManager$AuthenticatorCallback;
    .param p2, "status"    # I

    .line 237
    const/4 v0, 0x1

    if-ne p2, v0, :cond_7

    .line 238
    invoke-virtual {p1}, Lorg/ifaa/android/manager/face/IFAAFaceManager$AuthenticatorCallback;->onAuthenticationSucceeded()V

    goto :goto_a

    .line 240
    :cond_7
    invoke-virtual {p1, p2}, Lorg/ifaa/android/manager/face/IFAAFaceManager$AuthenticatorCallback;->onAuthenticationFailed(I)V

    .line 242
    :goto_a
    return-void
.end method

.method private static blacklist isSupport2dfa()Z
    .registers 5

    .line 96
    const-string v0, "ifaa_2dfa_support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    .line 97
    .local v0, "is_feature_enabled":Z
    :goto_d
    const-string v3, "ro.boot.hypvm"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "enable"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 99
    .local v3, "is_hyp_enabled":Z
    if-eqz v0, :cond_20

    if-eqz v3, :cond_20

    move v1, v2

    :cond_20
    return v1
.end method

.method private blacklist openCamera()Z
    .registers 13

    .line 142
    const/4 v0, 0x0

    .line 144
    .local v0, "result":Z
    const-string v1, "IFAAFaceManagerImplV2"

    const-string v2, "seccam openCamera+++"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v2, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mSeccamStopping:Landroid/os/ConditionVariable;

    sget-object v3, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->SECCAM_STOP_TIMEOUT:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 146
    const-string v2, "SeccamStopping pass"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 148
    :cond_1d
    const-string v2, "Wait for seccam stop timeout"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_22
    :try_start_22
    iget-object v2, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mCameraOperationLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 153
    iget-object v2, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->previewCamera_:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_29} :catch_6d
    .catchall {:try_start_22 .. :try_end_29} :catchall_6b

    const-string v3, "seccam openCamera---"

    if-eqz v2, :cond_3c

    .line 154
    :try_start_2d
    const-string v2, "Secure camera already running.. ignoring StartTask"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_35} :catch_6d
    .catchall {:try_start_2d .. :try_end_35} :catchall_6b

    .line 156
    const/4 v1, 0x1

    .line 168
    iget-object v2, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mCameraOperationLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 156
    return v1

    .line 158
    :cond_3c
    :try_start_3c
    new-instance v4, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    sget-object v2, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v4, v2, p0}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;-><init>(Landroid/content/Context;Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;)V

    iput-object v4, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->previewCamera_:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    .line 159
    sget-object v2, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->PREVIEW_CAMERAID:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    sget-object v7, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->PREVIEW_WIDTH:Ljava/lang/Integer;

    sget-object v8, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->PREVIEW_HEIGHT:Ljava/lang/Integer;

    sget-object v9, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->PREVIEW_FORMAT:Ljava/lang/Integer;

    sget-object v10, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->PREVIEW_NUMOFBUFFERS:Ljava/lang/Integer;

    sget-object v11, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->PREVIEW_SURFACE_NUMOFBUFFERS:Ljava/lang/Integer;

    invoke-virtual/range {v4 .. v11}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->start(ILandroid/view/SurfaceView;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_61

    .line 162
    const/4 v0, 0x1

    .line 164
    :cond_61
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_64} :catch_6d
    .catchall {:try_start_3c .. :try_end_64} :catchall_6b

    .line 168
    iget-object v1, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mCameraOperationLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 169
    nop

    .line 170
    return v0

    .line 168
    :catchall_6b
    move-exception v1

    goto :goto_76

    .line 165
    :catch_6d
    move-exception v1

    .line 166
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_6e
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Interrupted while trying to lock openCamera."

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "result":Z
    .end local p0    # "this":Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;
    throw v2
    :try_end_76
    .catchall {:try_start_6e .. :try_end_76} :catchall_6b

    .line 168
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "result":Z
    .restart local p0    # "this":Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;
    :goto_76
    iget-object v2, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mCameraOperationLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 169
    throw v1
.end method


# virtual methods
.method public blacklist authenticate(IILorg/ifaa/android/manager/face/IFAAFaceManager$AuthenticatorCallback;)V
    .registers 5
    .param p1, "reqId"    # I
    .param p2, "flags"    # I
    .param p3, "callback"    # Lorg/ifaa/android/manager/face/IFAAFaceManager$AuthenticatorCallback;

    .line 270
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->authenticate(Ljava/lang/String;ILorg/ifaa/android/manager/face/IFAAFaceManager$AuthenticatorCallback;)V

    .line 271
    return-void
.end method

.method public blacklist authenticate(Ljava/lang/String;ILorg/ifaa/android/manager/face/IFAAFaceManager$AuthenticatorCallback;)V
    .registers 9
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "callback"    # Lorg/ifaa/android/manager/face/IFAAFaceManager$AuthenticatorCallback;

    .line 290
    const/4 v0, -0x1

    .line 292
    .local v0, "status":I
    :try_start_1
    invoke-direct {p0}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->openCamera()Z

    .line 293
    sget-object v1, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mService:Lorg/ifaa/android/manager/IIFAAService;

    invoke-interface {v1, p1, p2}, Lorg/ifaa/android/manager/IIFAAService;->faceAuthenticate_v2(Ljava/lang/String;I)I

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_15
    .catchall {:try_start_1 .. :try_end_a} :catchall_13

    move v0, v1

    .line 297
    nop

    :goto_c
    invoke-direct {p0, p3, v0}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->invokeCallback(Lorg/ifaa/android/manager/face/IFAAFaceManager$AuthenticatorCallback;I)V

    .line 298
    invoke-direct {p0}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->closeCamera()Z

    .line 299
    goto :goto_30

    .line 297
    :catchall_13
    move-exception v1

    goto :goto_31

    .line 294
    :catch_15
    move-exception v1

    .line 295
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_16
    const-string v2, "IFAAFaceManagerImplV2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "authenticat_v2 fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_16 .. :try_end_2e} :catchall_13

    .line 297
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_c

    .line 300
    :goto_30
    return-void

    .line 297
    :goto_31
    invoke-direct {p0, p3, v0}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->invokeCallback(Lorg/ifaa/android/manager/face/IFAAFaceManager$AuthenticatorCallback;I)V

    .line 298
    invoke-direct {p0}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->closeCamera()Z

    .line 299
    throw v1
.end method

.method public blacklist cancel(I)I
    .registers 3
    .param p1, "reqId"    # I

    .line 280
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->cancel(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist cancel(Ljava/lang/String;)I
    .registers 5
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 421
    :try_start_0
    invoke-direct {p0}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->closeCamera()Z

    .line 422
    sget-object v0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mService:Lorg/ifaa/android/manager/IIFAAService;

    invoke-interface {v0, p1}, Lorg/ifaa/android/manager/IIFAAService;->faceCancel_v2(Ljava/lang/String;)I

    move-result v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return v0

    .line 423
    :catch_a
    move-exception v0

    .line 424
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel_v2 fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IFAAFaceManagerImplV2"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist enroll(Ljava/lang/String;ILorg/ifaa/android/manager/face/IFAAFaceManager$AuthenticatorCallback;)V
    .registers 9
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "callback"    # Lorg/ifaa/android/manager/face/IFAAFaceManager$AuthenticatorCallback;

    .line 250
    const/4 v0, -0x1

    .line 252
    .local v0, "status":I
    :try_start_1
    invoke-direct {p0}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->openCamera()Z

    .line 253
    sget-object v1, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mService:Lorg/ifaa/android/manager/IIFAAService;

    invoke-interface {v1, p1, p2}, Lorg/ifaa/android/manager/IIFAAService;->faceEnroll(Ljava/lang/String;I)I

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_15
    .catchall {:try_start_1 .. :try_end_a} :catchall_13

    move v0, v1

    .line 257
    nop

    :goto_c
    invoke-direct {p0, p3, v0}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->invokeCallback(Lorg/ifaa/android/manager/face/IFAAFaceManager$AuthenticatorCallback;I)V

    .line 258
    invoke-direct {p0}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->closeCamera()Z

    .line 259
    goto :goto_30

    .line 257
    :catchall_13
    move-exception v1

    goto :goto_31

    .line 254
    :catch_15
    move-exception v1

    .line 255
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_16
    const-string v2, "IFAAFaceManagerImplV2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enroll fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_16 .. :try_end_2e} :catchall_13

    .line 257
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_c

    .line 260
    :goto_30
    return-void

    .line 257
    :goto_31
    invoke-direct {p0, p3, v0}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->invokeCallback(Lorg/ifaa/android/manager/face/IFAAFaceManager$AuthenticatorCallback;I)V

    .line 258
    invoke-direct {p0}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->closeCamera()Z

    .line 259
    throw v1
.end method

.method public blacklist invokeCommand(Landroid/content/Context;[B)[B
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "param"    # [B

    .line 437
    :try_start_0
    sget-object v0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mService:Lorg/ifaa/android/manager/IIFAAService;

    invoke-interface {v0, p2}, Lorg/ifaa/android/manager/IIFAAService;->faceInvokeCommand([B)[B

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 438
    :catch_7
    move-exception v0

    .line 439
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invokeCommand fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IFAAFaceManagerImplV2"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist onSecureFrameAvalable(Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameInfo;[B)V
    .registers 12
    .param p1, "frameInfo"    # Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameInfo;
    .param p2, "returnParams"    # [B

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraActivity::onSecureFrameAvalable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IFAAFaceManagerImplV2"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    array-length v0, p2

    const/16 v2, 0x10

    if-eq v0, v2, :cond_1f

    .line 207
    return-void

    .line 210
    :cond_1f
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v2, p2

    mul-int/lit8 v2, v2, 0x3

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 211
    .local v0, "sb":Ljava/lang/StringBuffer;
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_2a
    if-ge v4, v2, :cond_43

    aget-byte v5, p2, v4

    .line 212
    .local v5, "b":B
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v3

    const-string v7, "%02x "

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    .end local v5    # "b":B
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 214
    :cond_43
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :try_start_4a
    iget-object v2, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mCameraOperationLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v2

    if-eqz v2, :cond_86

    .line 218
    iget-object v2, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->previewCamera_:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    if-eqz v2, :cond_7b

    .line 219
    invoke-direct {p0, p2, v3}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->byte4ToInt([BI)I

    move-result v2

    .line 220
    .local v2, "x1":I
    const/4 v3, 0x4

    invoke-direct {p0, p2, v3}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->byte4ToInt([BI)I

    move-result v3

    .line 221
    .local v3, "y1":I
    const/16 v4, 0x8

    invoke-direct {p0, p2, v4}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->byte4ToInt([BI)I

    move-result v4

    .line 222
    .local v4, "x2":I
    const/16 v5, 0xc

    invoke-direct {p0, p2, v5}, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->byte4ToInt([BI)I

    move-result v5

    .line 223
    .local v5, "y2":I
    iget-object v6, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->previewCamera_:Lorg/ifaa/android/manager/face/IFAASecureCamera2API;

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v6, v7, v8}, Lorg/ifaa/android/manager/face/IFAASecureCamera2API;->rectFromTEECallback(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 224
    .end local v2    # "x1":I
    .end local v3    # "y1":I
    .end local v4    # "x2":I
    .end local v5    # "y2":I
    goto :goto_80

    .line 225
    :cond_7b
    const-string v2, "Secure camera already stopped.. ignoring rectFromTEECallback"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :goto_80
    iget-object v2, p0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mCameraOperationLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_8b

    .line 229
    :cond_86
    const-string v2, "onSecureFrameAvalable Semaphore not Acquired "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_8b} :catch_8c

    .line 233
    :goto_8b
    goto :goto_92

    .line 231
    :catch_8c
    move-exception v2

    .line 232
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "rectFromTEECallback Exception caught"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_92
    return-void
.end method

.method public blacklist serviceConnected()V
    .registers 3

    .line 183
    const-string v0, "IFAAFaceManagerImplV2"

    const-string v1, "seccamservice serviceConnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void
.end method

.method public blacklist serviceDisconnected()V
    .registers 8

    .line 190
    const-string v0, "IFAAFaceManagerImplV2"

    const-string v1, "seccamservice serviceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-static {}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->getInstance()Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->release()V

    .line 192
    invoke-static {}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->getInstance()Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    move-result-object v1

    sget-object v2, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mContext:Landroid/content/Context;

    sget-object v3, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->INSTANCE:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    sget-object v0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->DESTINATION_MLVM:Ljava/lang/Integer;

    .line 193
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 192
    const-string v4, "seccam2d"

    const/16 v5, 0x2000

    invoke-virtual/range {v1 .. v6}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->start(Landroid/content/Context;Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;Ljava/lang/String;II)Z

    .line 194
    return-void
.end method

.method public blacklist upgrade(Ljava/lang/String;)V
    .registers 26
    .param p1, "path"    # Ljava/lang/String;

    .line 310
    move-object/from16 v1, p1

    const-string v2, "close file fail"

    const-string v3, "close zipfile fail"

    const/4 v4, 0x3

    .line 311
    .local v4, "expectedFiles":I
    const/high16 v0, 0x10000

    new-array v11, v0, [B

    .line 312
    .local v11, "buf":[B
    const/4 v12, 0x0

    .line 313
    .local v12, "zis":Ljava/util/zip/ZipInputStream;
    const/4 v13, 0x0

    .line 316
    .local v13, "fis":Ljava/io/FileInputStream;
    const-string v14, "IFAAFaceManagerImplV2"

    if-eqz v1, :cond_24c

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_24c

    .line 321
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upgrade ha from path: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :try_start_2f
    sget-object v5, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mService:Lorg/ifaa/android/manager/IIFAAService;

    const/4 v6, 0x0

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v9, v11

    invoke-interface/range {v5 .. v10}, Lorg/ifaa/android/manager/IIFAAService;->faceUpgrade(ILjava/lang/String;I[BI)I

    move-result v0

    move v5, v0

    .line 325
    .local v5, "ret":I
    if-gez v5, :cond_5c

    .line 326
    const-string v0, "reset upgrade state fail"

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_43} :catch_1f5
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_43} :catch_1d5
    .catch Ljava/lang/SecurityException; {:try_start_2f .. :try_end_43} :catch_1b5
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_43} :catch_182
    .catchall {:try_start_2f .. :try_end_43} :catchall_17e

    .line 395
    if-eqz v12, :cond_4f

    .line 397
    :try_start_45
    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49

    .line 400
    goto :goto_4f

    .line 398
    :catch_49
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 399
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v14, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4f
    :goto_4f
    if-eqz v13, :cond_5b

    .line 404
    :try_start_51
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    .line 407
    goto :goto_5b

    .line 405
    :catch_55
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 406
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v14, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .end local v0    # "e":Ljava/io/IOException;
    :cond_5b
    :goto_5b
    return-void

    .line 330
    :cond_5c
    :try_start_5c
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v13, v0

    .line 331
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, v13}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v12, v0

    .line 332
    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0
    :try_end_6c
    .catch Ljava/io/FileNotFoundException; {:try_start_5c .. :try_end_6c} :catch_1f5
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_6c} :catch_1d5
    .catch Ljava/lang/SecurityException; {:try_start_5c .. :try_end_6c} :catch_1b5
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_6c} :catch_182
    .catchall {:try_start_5c .. :try_end_6c} :catchall_17e

    move v15, v4

    move/from16 v16, v5

    move-object v4, v0

    .line 333
    .end local v5    # "ret":I
    .local v4, "entry":Ljava/util/zip/ZipEntry;
    .local v15, "expectedFiles":I
    .local v16, "ret":I
    :goto_70
    if-eqz v4, :cond_104

    .line 334
    :try_start_72
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "filename":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v5

    move-wide/from16 v17, v5

    .line 336
    .local v17, "size":J
    const-wide/16 v5, 0x0

    .line 338
    .local v5, "offset":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "filename: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v7, 0x0

    .line 341
    .local v7, "readSize":I
    array-length v8, v11

    .line 342
    .local v8, "bufRemain":I
    const/16 v19, 0x0

    move-wide v9, v5

    .line 344
    .end local v5    # "offset":J
    .local v9, "offset":J
    .local v19, "shouldSend":Z
    :cond_99
    :goto_99
    cmp-long v5, v9, v17

    if-gez v5, :cond_f3

    .line 345
    array-length v5, v11

    sub-int/2addr v5, v8

    invoke-virtual {v12, v11, v5, v8}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v5

    move/from16 v16, v5

    .line 347
    if-gez v16, :cond_af

    .line 348
    const-string v5, "file read fail"

    invoke-static {v14, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    move-wide/from16 v22, v9

    goto :goto_f5

    .line 352
    :cond_af
    add-int v7, v7, v16

    .line 353
    sub-int v8, v8, v16

    .line 355
    if-eqz v16, :cond_c7

    int-to-long v5, v7

    add-long/2addr v5, v9

    cmp-long v5, v5, v17

    if-eqz v5, :cond_c7

    array-length v5, v11

    int-to-double v5, v5

    const-wide v20, 0x3f9eb851eb851eb8L    # 0.03

    mul-double v5, v5, v20

    double-to-int v5, v5

    if-ge v8, v5, :cond_99

    .line 357
    :cond_c7
    sget-object v5, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mService:Lorg/ifaa/android/manager/IIFAAService;

    const/4 v6, 0x1

    long-to-int v1, v9

    move/from16 v20, v7

    .end local v7    # "readSize":I
    .local v20, "readSize":I
    move-object v7, v0

    move/from16 v21, v8

    .end local v8    # "bufRemain":I
    .local v21, "bufRemain":I
    move v8, v1

    move-wide/from16 v22, v9

    .end local v9    # "offset":J
    .local v22, "offset":J
    move-object v9, v11

    move/from16 v10, v20

    invoke-interface/range {v5 .. v10}, Lorg/ifaa/android/manager/IIFAAService;->faceUpgrade(ILjava/lang/String;I[BI)I

    move-result v1

    move/from16 v16, v1

    .line 358
    if-gez v16, :cond_e8

    .line 359
    const-string v1, "file transfer error"

    invoke-static {v14, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    move/from16 v7, v20

    move/from16 v8, v21

    goto :goto_f5

    .line 362
    :cond_e8
    move/from16 v7, v20

    .end local v20    # "readSize":I
    .restart local v7    # "readSize":I
    int-to-long v5, v7

    add-long v9, v22, v5

    .line 363
    .end local v22    # "offset":J
    .restart local v9    # "offset":J
    const/4 v7, 0x0

    .line 364
    array-length v1, v11

    move v8, v1

    move-object/from16 v1, p1

    .end local v21    # "bufRemain":I
    .restart local v8    # "bufRemain":I
    goto :goto_99

    .line 344
    :cond_f3
    move-wide/from16 v22, v9

    .line 368
    .end local v9    # "offset":J
    .restart local v22    # "offset":J
    :goto_f5
    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 369
    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    move-object v4, v1

    .line 370
    nop

    .end local v0    # "filename":Ljava/lang/String;
    .end local v7    # "readSize":I
    .end local v8    # "bufRemain":I
    .end local v17    # "size":J
    .end local v19    # "shouldSend":Z
    .end local v22    # "offset":J
    add-int/lit8 v15, v15, -0x1

    .line 371
    move-object/from16 v1, p1

    goto/16 :goto_70

    .line 372
    :cond_104
    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->close()V

    .line 373
    const/4 v12, 0x0

    .line 374
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    .line 375
    const/4 v13, 0x0

    .line 377
    if-lez v15, :cond_13d

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not all files found, remain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_124
    .catch Ljava/io/FileNotFoundException; {:try_start_72 .. :try_end_124} :catch_17a
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_124} :catch_176
    .catch Ljava/lang/SecurityException; {:try_start_72 .. :try_end_124} :catch_173
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_124} :catch_170
    .catchall {:try_start_72 .. :try_end_124} :catchall_16b

    .line 395
    if-eqz v12, :cond_130

    .line 397
    :try_start_126
    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_129
    .catch Ljava/io/IOException; {:try_start_126 .. :try_end_129} :catch_12a

    .line 400
    goto :goto_130

    .line 398
    :catch_12a
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 399
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v14, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .end local v0    # "e":Ljava/io/IOException;
    :cond_130
    :goto_130
    if-eqz v13, :cond_13c

    .line 404
    :try_start_132
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_135
    .catch Ljava/io/IOException; {:try_start_132 .. :try_end_135} :catch_136

    .line 407
    goto :goto_13c

    .line 405
    :catch_136
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 406
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v14, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    .end local v0    # "e":Ljava/io/IOException;
    :cond_13c
    :goto_13c
    return-void

    .line 382
    :cond_13d
    :try_start_13d
    sget-object v5, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mService:Lorg/ifaa/android/manager/IIFAAService;

    const/4 v6, 0x2

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v9, v11

    invoke-interface/range {v5 .. v10}, Lorg/ifaa/android/manager/IIFAAService;->faceUpgrade(ILjava/lang/String;I[BI)I

    move-result v0

    move v1, v0

    .line 383
    .end local v16    # "ret":I
    .local v1, "ret":I
    if-gez v1, :cond_151

    .line 384
    const-string v0, "update fail"

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_151
    .catch Ljava/io/FileNotFoundException; {:try_start_13d .. :try_end_151} :catch_17a
    .catch Ljava/io/IOException; {:try_start_13d .. :try_end_151} :catch_176
    .catch Ljava/lang/SecurityException; {:try_start_13d .. :try_end_151} :catch_173
    .catch Landroid/os/RemoteException; {:try_start_13d .. :try_end_151} :catch_170
    .catchall {:try_start_13d .. :try_end_151} :catchall_16b

    .line 395
    .end local v4    # "entry":Ljava/util/zip/ZipEntry;
    :cond_151
    if-eqz v12, :cond_15d

    .line 397
    :try_start_153
    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_156
    .catch Ljava/io/IOException; {:try_start_153 .. :try_end_156} :catch_157

    .line 400
    goto :goto_15d

    .line 398
    :catch_157
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 399
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v14, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .end local v0    # "e":Ljava/io/IOException;
    :cond_15d
    :goto_15d
    if-eqz v13, :cond_216

    .line 404
    :try_start_15f
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_162
    .catch Ljava/io/IOException; {:try_start_15f .. :try_end_162} :catch_164

    .line 407
    :goto_162
    goto/16 :goto_216

    .line 405
    :catch_164
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 406
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v14, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_162

    .line 395
    .end local v1    # "ret":I
    :catchall_16b
    move-exception v0

    move-object v1, v0

    move v4, v15

    goto/16 :goto_233

    .line 392
    :catch_170
    move-exception v0

    move v4, v15

    goto :goto_183

    .line 390
    :catch_173
    move-exception v0

    move v4, v15

    goto :goto_1b6

    .line 388
    :catch_176
    move-exception v0

    move v4, v15

    goto/16 :goto_1d6

    .line 386
    :catch_17a
    move-exception v0

    move v4, v15

    goto/16 :goto_1f6

    .line 395
    .end local v15    # "expectedFiles":I
    .local v4, "expectedFiles":I
    :catchall_17e
    move-exception v0

    move-object v1, v0

    goto/16 :goto_233

    .line 392
    :catch_182
    move-exception v0

    .line 393
    .local v0, "e":Landroid/os/RemoteException;
    :goto_183
    :try_start_183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upgrade fail: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_199
    .catchall {:try_start_183 .. :try_end_199} :catchall_17e

    .line 395
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    if-eqz v12, :cond_1a6

    .line 397
    :try_start_19c
    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_19f
    .catch Ljava/io/IOException; {:try_start_19c .. :try_end_19f} :catch_1a0

    .line 400
    goto :goto_1a6

    .line 398
    :catch_1a0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 399
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v14, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1a6
    :goto_1a6
    if-eqz v13, :cond_215

    .line 404
    :try_start_1a8
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_1ab
    .catch Ljava/io/IOException; {:try_start_1a8 .. :try_end_1ab} :catch_1ad

    goto/16 :goto_20d

    .line 405
    :catch_1ad
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 406
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v14, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto/16 :goto_20d

    .line 390
    :catch_1b5
    move-exception v0

    .line 391
    .local v0, "e":Ljava/lang/SecurityException;
    :goto_1b6
    :try_start_1b6
    const-string v1, "open file fail, due to no permission"

    invoke-static {v14, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1bb
    .catchall {:try_start_1b6 .. :try_end_1bb} :catchall_17e

    .line 395
    nop

    .end local v0    # "e":Ljava/lang/SecurityException;
    if-eqz v12, :cond_1c8

    .line 397
    :try_start_1be
    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1c1
    .catch Ljava/io/IOException; {:try_start_1be .. :try_end_1c1} :catch_1c2

    .line 400
    goto :goto_1c8

    .line 398
    :catch_1c2
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 399
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v14, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1c8
    :goto_1c8
    if-eqz v13, :cond_215

    .line 404
    :try_start_1ca
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_1cd
    .catch Ljava/io/IOException; {:try_start_1ca .. :try_end_1cd} :catch_1ce

    goto :goto_20d

    .line 405
    :catch_1ce
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 406
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v14, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_20d

    .line 388
    :catch_1d5
    move-exception v0

    .line 389
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1d6
    :try_start_1d6
    const-string v1, "open file fail, due to io error"

    invoke-static {v14, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1db
    .catchall {:try_start_1d6 .. :try_end_1db} :catchall_17e

    .line 395
    nop

    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v12, :cond_1e8

    .line 397
    :try_start_1de
    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1e1
    .catch Ljava/io/IOException; {:try_start_1de .. :try_end_1e1} :catch_1e2

    .line 400
    goto :goto_1e8

    .line 398
    :catch_1e2
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 399
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v14, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1e8
    :goto_1e8
    if-eqz v13, :cond_215

    .line 404
    :try_start_1ea
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_1ed
    .catch Ljava/io/IOException; {:try_start_1ea .. :try_end_1ed} :catch_1ee

    goto :goto_20d

    .line 405
    :catch_1ee
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 406
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v14, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_20d

    .line 386
    :catch_1f5
    move-exception v0

    .line 387
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1f6
    :try_start_1f6
    const-string v1, "open file fail, due to no such file"

    invoke-static {v14, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1fb
    .catchall {:try_start_1f6 .. :try_end_1fb} :catchall_17e

    .line 395
    nop

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    if-eqz v12, :cond_208

    .line 397
    :try_start_1fe
    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_201
    .catch Ljava/io/IOException; {:try_start_1fe .. :try_end_201} :catch_202

    .line 400
    goto :goto_208

    .line 398
    :catch_202
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 399
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v14, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .end local v0    # "e":Ljava/io/IOException;
    :cond_208
    :goto_208
    if-eqz v13, :cond_215

    .line 404
    :try_start_20a
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_20d
    .catch Ljava/io/IOException; {:try_start_20a .. :try_end_20d} :catch_20e

    .line 407
    :goto_20d
    goto :goto_215

    .line 405
    :catch_20e
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 406
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v14, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_20d

    .line 410
    :cond_215
    :goto_215
    move v15, v4

    .end local v4    # "expectedFiles":I
    .restart local v15    # "expectedFiles":I
    :cond_216
    :goto_216
    invoke-static {}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->getInstance()Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->release()V

    .line 411
    invoke-static {}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->getInstance()Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    move-result-object v1

    sget-object v2, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->mContext:Landroid/content/Context;

    sget-object v3, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->INSTANCE:Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;

    const/16 v5, 0x2000

    sget-object v0, Lorg/ifaa/android/manager/face/IFAAFaceManagerImpl;->DESTINATION_MLVM:Ljava/lang/Integer;

    .line 412
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 411
    const-string v4, "seccam2d"

    invoke-virtual/range {v1 .. v6}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->start(Landroid/content/Context;Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient$ClientCallback;Ljava/lang/String;II)Z

    .line 413
    return-void

    .line 395
    .end local v15    # "expectedFiles":I
    .restart local v4    # "expectedFiles":I
    :goto_233
    if-eqz v12, :cond_23f

    .line 397
    :try_start_235
    invoke-virtual {v12}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_238
    .catch Ljava/io/IOException; {:try_start_235 .. :try_end_238} :catch_239

    .line 400
    goto :goto_23f

    .line 398
    :catch_239
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 399
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v14, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    .end local v0    # "e":Ljava/io/IOException;
    :cond_23f
    :goto_23f
    if-eqz v13, :cond_24b

    .line 404
    :try_start_241
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_244
    .catch Ljava/io/IOException; {:try_start_241 .. :try_end_244} :catch_245

    .line 407
    goto :goto_24b

    .line 405
    :catch_245
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 406
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {v14, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    .end local v0    # "e":Ljava/io/IOException;
    :cond_24b
    :goto_24b
    throw v1

    .line 317
    :cond_24c
    :goto_24c
    const-string v0, "upgrade path is null or empty"

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-void
.end method
