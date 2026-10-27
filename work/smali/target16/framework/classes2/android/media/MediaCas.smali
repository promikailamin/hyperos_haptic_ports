.class public final Landroid/media/MediaCas;
.super Ljava/lang/Object;
.source "MediaCas.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCas$Session;,
        Landroid/media/MediaCas$PluginDescriptor;,
        Landroid/media/MediaCas$EventListener;,
        Landroid/media/MediaCas$EventHandler;,
        Landroid/media/MediaCas$OpenSessionCallback;,
        Landroid/media/MediaCas$OpenSession_1_2_Callback;,
        Landroid/media/MediaCas$PluginStatus;,
        Landroid/media/MediaCas$SessionUsage;,
        Landroid/media/MediaCas$ScramblingMode;
    }
.end annotation


# static fields
.field private static final blacklist MEDIA_CAS_HIDL_COOKIE:J = 0x18aL

.field public static final whitelist PLUGIN_STATUS_PHYSICAL_MODULE_CHANGED:I = 0x0

.field public static final whitelist PLUGIN_STATUS_SESSION_NUMBER_CHANGED:I = 0x1

.field public static final whitelist SCRAMBLING_MODE_AES128:I = 0x9

.field public static final whitelist SCRAMBLING_MODE_AES_CBC:I = 0xe

.field public static final whitelist SCRAMBLING_MODE_AES_ECB:I = 0xa

.field public static final whitelist SCRAMBLING_MODE_AES_SCTE52:I = 0xb

.field public static final whitelist SCRAMBLING_MODE_DVB_CISSA_V1:I = 0x6

.field public static final whitelist SCRAMBLING_MODE_DVB_CSA1:I = 0x1

.field public static final whitelist SCRAMBLING_MODE_DVB_CSA2:I = 0x2

.field public static final whitelist SCRAMBLING_MODE_DVB_CSA3_ENHANCE:I = 0x5

.field public static final whitelist SCRAMBLING_MODE_DVB_CSA3_MINIMAL:I = 0x4

.field public static final whitelist SCRAMBLING_MODE_DVB_CSA3_STANDARD:I = 0x3

.field public static final whitelist SCRAMBLING_MODE_DVB_IDSA:I = 0x7

.field public static final whitelist SCRAMBLING_MODE_MULTI2:I = 0x8

.field public static final whitelist SCRAMBLING_MODE_RESERVED:I = 0x0

.field public static final whitelist SCRAMBLING_MODE_TDES_ECB:I = 0xc

.field public static final whitelist SCRAMBLING_MODE_TDES_SCTE52:I = 0xd

.field public static final whitelist SESSION_USAGE_LIVE:I = 0x0

.field public static final whitelist SESSION_USAGE_PLAYBACK:I = 0x1

.field public static final whitelist SESSION_USAGE_RECORD:I = 0x2

.field public static final whitelist SESSION_USAGE_TIMESHIFT:I = 0x3

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MediaCas"

.field private static blacklist sAidlLock:Ljava/lang/Object;

.field private static blacklist sDeathListener:Landroid/os/IBinder$DeathRecipient;

.field private static blacklist sDeathListenerHidl:Landroid/os/IHwBinder$DeathRecipient;

.field private static blacklist sHidlLock:Ljava/lang/Object;

.field private static blacklist sService:Landroid/hardware/cas/IMediaCasService;

.field private static blacklist sServiceHidl:Landroid/hardware/cas/V1_0/IMediaCasService;


# instance fields
.field private final blacklist mBinder:Landroid/hardware/cas/ICasListener$Stub;

.field private final blacklist mBinderHidl:Landroid/hardware/cas/V1_2/ICasListener$Stub;

.field private blacklist mCasSystemId:I

.field private blacklist mClientId:I

.field private greylist-max-o mEventHandler:Landroid/media/MediaCas$EventHandler;

.field private greylist-max-o mHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mICas:Landroid/hardware/cas/ICas;

.field private blacklist mICasHidl:Landroid/hardware/cas/V1_0/ICas;

.field private blacklist mICasHidl11:Landroid/hardware/cas/V1_1/ICas;

.field private blacklist mICasHidl12:Landroid/hardware/cas/V1_2/ICas;

.field private greylist-max-o mListener:Landroid/media/MediaCas$EventListener;

.field private blacklist mPriorityHint:I

.field private final blacklist mResourceListener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

.field private final blacklist mSessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/media/MediaCas$Session;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

.field private blacklist mTvInputServiceSessionId:Ljava/lang/String;

.field private blacklist mUserId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCasSystemId(Landroid/media/MediaCas;)I
    .registers 1

    iget p0, p0, Landroid/media/MediaCas;->mCasSystemId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEventHandler(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventHandler;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaCas;->mEventHandler:Landroid/media/MediaCas$EventHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmICas(Landroid/media/MediaCas;)Landroid/hardware/cas/ICas;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmICasHidl(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_0/ICas;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmICasHidl11(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_1/ICas;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaCas;->mICasHidl11:Landroid/hardware/cas/V1_1/ICas;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/media/MediaCas;)Landroid/media/MediaCas$EventListener;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaCas;->mListener:Landroid/media/MediaCas$EventListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionMap(Landroid/media/MediaCas;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTunerResourceManager(Landroid/media/MediaCas;)Landroid/media/tv/tunerresourcemanager/TunerResourceManager;
    .registers 1

    iget-object p0, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcleanupAndRethrowIllegalState(Landroid/media/MediaCas;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveSessionFromResourceMap(Landroid/media/MediaCas;Landroid/media/MediaCas$Session;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaCas;->removeSessionFromResourceMap(Landroid/media/MediaCas$Session;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mtoByteArray(Landroid/media/MediaCas;[B)Ljava/util/ArrayList;
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaCas;->toByteArray([B)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mtoByteArray(Landroid/media/MediaCas;[BII)Ljava/util/ArrayList;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaCas;->toByteArray([BII)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mtoBytes(Landroid/media/MediaCas;Ljava/util/ArrayList;)[B
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/MediaCas;->toBytes(Ljava/util/ArrayList;)[B

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsAidlLock()Ljava/lang/Object;
    .registers 1

    sget-object v0, Landroid/media/MediaCas;->sAidlLock:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsDeathListener()Landroid/os/IBinder$DeathRecipient;
    .registers 1

    sget-object v0, Landroid/media/MediaCas;->sDeathListener:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsHidlLock()Ljava/lang/Object;
    .registers 1

    sget-object v0, Landroid/media/MediaCas;->sHidlLock:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsService()Landroid/hardware/cas/IMediaCasService;
    .registers 1

    sget-object v0, Landroid/media/MediaCas;->sService:Landroid/hardware/cas/IMediaCasService;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsService(Landroid/hardware/cas/IMediaCasService;)V
    .registers 1

    sput-object p0, Landroid/media/MediaCas;->sService:Landroid/hardware/cas/IMediaCasService;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsServiceHidl(Landroid/hardware/cas/V1_0/IMediaCasService;)V
    .registers 1

    sput-object p0, Landroid/media/MediaCas;->sServiceHidl:Landroid/hardware/cas/V1_0/IMediaCasService;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 273
    const/4 v0, 0x0

    sput-object v0, Landroid/media/MediaCas;->sService:Landroid/hardware/cas/IMediaCasService;

    .line 274
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/media/MediaCas;->sAidlLock:Ljava/lang/Object;

    .line 277
    new-instance v1, Landroid/media/MediaCas$1;

    invoke-direct {v1}, Landroid/media/MediaCas$1;-><init>()V

    sput-object v1, Landroid/media/MediaCas;->sDeathListener:Landroid/os/IBinder$DeathRecipient;

    .line 309
    sput-object v0, Landroid/media/MediaCas;->sServiceHidl:Landroid/hardware/cas/V1_0/IMediaCasService;

    .line 310
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/MediaCas;->sHidlLock:Ljava/lang/Object;

    .line 316
    new-instance v0, Landroid/media/MediaCas$2;

    invoke-direct {v0}, Landroid/media/MediaCas$2;-><init>()V

    sput-object v0, Landroid/media/MediaCas;->sDeathListenerHidl:Landroid/os/IHwBinder$DeathRecipient;

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException$UnsupportedCasException;
        }
    .end annotation

    .line 931
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    .line 128
    iput-object v0, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    .line 129
    iput-object v0, p0, Landroid/media/MediaCas;->mICasHidl11:Landroid/hardware/cas/V1_1/ICas;

    .line 130
    iput-object v0, p0, Landroid/media/MediaCas;->mICasHidl12:Landroid/hardware/cas/V1_2/ICas;

    .line 139
    iput-object v0, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;

    .line 426
    new-instance v0, Landroid/media/MediaCas$3;

    invoke-direct {v0, p0}, Landroid/media/MediaCas$3;-><init>(Landroid/media/MediaCas;)V

    iput-object v0, p0, Landroid/media/MediaCas;->mBinder:Landroid/hardware/cas/ICasListener$Stub;

    .line 473
    new-instance v0, Landroid/media/MediaCas$4;

    invoke-direct {v0, p0}, Landroid/media/MediaCas$4;-><init>(Landroid/media/MediaCas;)V

    iput-object v0, p0, Landroid/media/MediaCas;->mBinderHidl:Landroid/hardware/cas/V1_2/ICasListener$Stub;

    .line 515
    new-instance v0, Landroid/media/MediaCas$5;

    invoke-direct {v0, p0}, Landroid/media/MediaCas$5;-><init>(Landroid/media/MediaCas;)V

    iput-object v0, p0, Landroid/media/MediaCas;->mResourceListener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

    .line 932
    invoke-direct {p0, p1}, Landroid/media/MediaCas;->createPlugin(I)V

    .line 933
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;ILjava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException$UnsupportedCasException;
        }
    .end annotation

    .line 949
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    .line 128
    iput-object v0, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    .line 129
    iput-object v0, p0, Landroid/media/MediaCas;->mICasHidl11:Landroid/hardware/cas/V1_1/ICas;

    .line 130
    iput-object v0, p0, Landroid/media/MediaCas;->mICasHidl12:Landroid/hardware/cas/V1_2/ICas;

    .line 139
    iput-object v0, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;

    .line 426
    new-instance v0, Landroid/media/MediaCas$3;

    invoke-direct {v0, p0}, Landroid/media/MediaCas$3;-><init>(Landroid/media/MediaCas;)V

    iput-object v0, p0, Landroid/media/MediaCas;->mBinder:Landroid/hardware/cas/ICasListener$Stub;

    .line 473
    new-instance v0, Landroid/media/MediaCas$4;

    invoke-direct {v0, p0}, Landroid/media/MediaCas$4;-><init>(Landroid/media/MediaCas;)V

    iput-object v0, p0, Landroid/media/MediaCas;->mBinderHidl:Landroid/hardware/cas/V1_2/ICasListener$Stub;

    .line 515
    new-instance v0, Landroid/media/MediaCas$5;

    invoke-direct {v0, p0}, Landroid/media/MediaCas$5;-><init>(Landroid/media/MediaCas;)V

    iput-object v0, p0, Landroid/media/MediaCas;->mResourceListener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

    .line 950
    const-string v0, "context must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 951
    invoke-direct {p0, p2}, Landroid/media/MediaCas;->createPlugin(I)V

    .line 952
    invoke-direct {p0, p1, p3, p4}, Landroid/media/MediaCas;->registerClient(Landroid/content/Context;Ljava/lang/String;I)V

    .line 953
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;ILjava/lang/String;ILandroid/os/Handler;Landroid/media/MediaCas$EventListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException$UnsupportedCasException;
        }
    .end annotation

    .line 974
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    .line 128
    iput-object v0, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    .line 129
    iput-object v0, p0, Landroid/media/MediaCas;->mICasHidl11:Landroid/hardware/cas/V1_1/ICas;

    .line 130
    iput-object v0, p0, Landroid/media/MediaCas;->mICasHidl12:Landroid/hardware/cas/V1_2/ICas;

    .line 139
    iput-object v0, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;

    .line 426
    new-instance v0, Landroid/media/MediaCas$3;

    invoke-direct {v0, p0}, Landroid/media/MediaCas$3;-><init>(Landroid/media/MediaCas;)V

    iput-object v0, p0, Landroid/media/MediaCas;->mBinder:Landroid/hardware/cas/ICasListener$Stub;

    .line 473
    new-instance v0, Landroid/media/MediaCas$4;

    invoke-direct {v0, p0}, Landroid/media/MediaCas$4;-><init>(Landroid/media/MediaCas;)V

    iput-object v0, p0, Landroid/media/MediaCas;->mBinderHidl:Landroid/hardware/cas/V1_2/ICasListener$Stub;

    .line 515
    new-instance v0, Landroid/media/MediaCas$5;

    invoke-direct {v0, p0}, Landroid/media/MediaCas$5;-><init>(Landroid/media/MediaCas;)V

    iput-object v0, p0, Landroid/media/MediaCas;->mResourceListener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

    .line 975
    const-string v0, "context must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 976
    invoke-virtual {p0, p6, p5}, Landroid/media/MediaCas;->setEventListener(Landroid/media/MediaCas$EventListener;Landroid/os/Handler;)V

    .line 977
    invoke-direct {p0, p2}, Landroid/media/MediaCas;->createPlugin(I)V

    .line 978
    invoke-direct {p0, p1, p3, p4}, Landroid/media/MediaCas;->registerClient(Landroid/content/Context;Ljava/lang/String;I)V

    .line 979
    return-void
.end method

.method private blacklist addSessionToResourceMap(Landroid/media/MediaCas$Session;J)V
    .registers 6

    .line 1202
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_17

    .line 1203
    iget-object v0, p0, Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;

    monitor-enter v0

    .line 1204
    :try_start_9
    iget-object v1, p0, Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_14

    throw p1

    .line 1207
    :cond_17
    :goto_17
    return-void
.end method

.method private greylist-max-o cleanupAndRethrowIllegalState()V
    .registers 2

    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    .line 384
    iput-object v0, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    .line 385
    iput-object v0, p0, Landroid/media/MediaCas;->mICasHidl11:Landroid/hardware/cas/V1_1/ICas;

    .line 386
    iput-object v0, p0, Landroid/media/MediaCas;->mICasHidl12:Landroid/hardware/cas/V1_2/ICas;

    .line 387
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private blacklist createPlugin(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException$UnsupportedCasException;
        }
    .end annotation

    .line 865
    const-string v0, "Unsupported casSystemId "

    const-string v1, "MediaCas"

    :try_start_4
    iput p1, p0, Landroid/media/MediaCas;->mCasSystemId:I

    .line 866
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iput v2, p0, Landroid/media/MediaCas;->mUserId:I

    .line 867
    invoke-static {}, Landroid/media/MediaCas;->getService()Landroid/hardware/cas/IMediaCasService;

    move-result-object v2

    .line 868
    if-eqz v2, :cond_20

    .line 869
    const-string v3, "Use CAS AIDL interface to create plugin"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    iget-object v3, p0, Landroid/media/MediaCas;->mBinder:Landroid/hardware/cas/ICasListener$Stub;

    invoke-interface {v2, p1, v3}, Landroid/hardware/cas/IMediaCasService;->createPlugin(ILandroid/hardware/cas/ICasListener;)Landroid/hardware/cas/ICas;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    goto :goto_65

    .line 872
    :cond_20
    invoke-static {}, Landroid/media/MediaCas;->getServiceHidl()Landroid/hardware/cas/V1_0/IMediaCasService;

    move-result-object v2

    .line 873
    nop

    .line 874
    invoke-static {v2}, Landroid/hardware/cas/V1_2/IMediaCasService;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/cas/V1_2/IMediaCasService;

    move-result-object v3

    .line 875
    if-nez v3, :cond_50

    .line 876
    nop

    .line 877
    invoke-static {v2}, Landroid/hardware/cas/V1_1/IMediaCasService;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/cas/V1_1/IMediaCasService;

    move-result-object v3

    .line 878
    if-nez v3, :cond_40

    .line 879
    const-string v3, "Used cas@1_0 interface to create plugin"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    iget-object v3, p0, Landroid/media/MediaCas;->mBinderHidl:Landroid/hardware/cas/V1_2/ICasListener$Stub;

    invoke-interface {v2, p1, v3}, Landroid/hardware/cas/V1_0/IMediaCasService;->createPlugin(ILandroid/hardware/cas/V1_0/ICasListener;)Landroid/hardware/cas/V1_0/ICas;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    goto :goto_4f

    .line 882
    :cond_40
    const-string v2, "Used cas@1.1 interface to create plugin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    iget-object v2, p0, Landroid/media/MediaCas;->mBinderHidl:Landroid/hardware/cas/V1_2/ICasListener$Stub;

    .line 884
    invoke-interface {v3, p1, v2}, Landroid/hardware/cas/V1_1/IMediaCasService;->createPluginExt(ILandroid/hardware/cas/V1_1/ICasListener;)Landroid/hardware/cas/V1_1/ICas;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaCas;->mICasHidl11:Landroid/hardware/cas/V1_1/ICas;

    iput-object v2, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    .line 886
    :goto_4f
    goto :goto_65

    .line 887
    :cond_50
    const-string v2, "Used cas@1.2 interface to create plugin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    iget-object v2, p0, Landroid/media/MediaCas;->mBinderHidl:Landroid/hardware/cas/V1_2/ICasListener$Stub;

    .line 892
    invoke-interface {v3, p1, v2}, Landroid/hardware/cas/V1_2/IMediaCasService;->createPluginExt(ILandroid/hardware/cas/V1_1/ICasListener;)Landroid/hardware/cas/V1_1/ICas;

    move-result-object v2

    .line 891
    invoke-static {v2}, Landroid/hardware/cas/V1_2/ICas;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/cas/V1_2/ICas;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaCas;->mICasHidl12:Landroid/hardware/cas/V1_2/ICas;

    iput-object v2, p0, Landroid/media/MediaCas;->mICasHidl11:Landroid/hardware/cas/V1_1/ICas;

    iput-object v2, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_65} :catch_87
    .catchall {:try_start_4 .. :try_end_65} :catchall_85

    .line 901
    :goto_65
    iget-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    if-nez v1, :cond_c3

    iget-object v1, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    if-eqz v1, :cond_6e

    goto :goto_c3

    .line 902
    :cond_6e
    new-instance v1, Landroid/media/MediaCasException$UnsupportedCasException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 901
    :catchall_85
    move-exception v1

    goto :goto_c4

    .line 896
    :catch_87
    move-exception v2

    .line 897
    :try_start_88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create plugin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    .line 899
    iput-object v1, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;
    :try_end_a3
    .catchall {:try_start_88 .. :try_end_a3} :catchall_85

    .line 901
    iget-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    if-nez v1, :cond_c3

    iget-object v1, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    if-eqz v1, :cond_ac

    goto :goto_c3

    .line 902
    :cond_ac
    new-instance v1, Landroid/media/MediaCasException$UnsupportedCasException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 906
    :cond_c3
    :goto_c3
    return-void

    .line 901
    :goto_c4
    iget-object v2, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    if-nez v2, :cond_e3

    iget-object v2, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    if-nez v2, :cond_e3

    .line 902
    new-instance v1, Landroid/media/MediaCasException$UnsupportedCasException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 905
    :cond_e3
    throw v1
.end method

.method public static whitelist enumeratePlugins()[Landroid/media/MediaCas$PluginDescriptor;
    .registers 8

    .line 828
    invoke-static {}, Landroid/media/MediaCas;->getService()Landroid/hardware/cas/IMediaCasService;

    move-result-object v0

    .line 829
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2b

    .line 831
    :try_start_8
    invoke-interface {v0}, Landroid/hardware/cas/IMediaCasService;->enumeratePlugins()[Landroid/hardware/cas/AidlCasPluginDescriptor;

    move-result-object v0

    .line 832
    array-length v3, v0

    if-nez v3, :cond_10

    .line 833
    return-object v2

    .line 835
    :cond_10
    array-length v3, v0

    new-array v4, v3, [Landroid/media/MediaCas$PluginDescriptor;

    .line 836
    move v5, v1

    :goto_14
    if-ge v5, v3, :cond_22

    .line 837
    new-instance v6, Landroid/media/MediaCas$PluginDescriptor;

    aget-object v7, v0, v5

    invoke-direct {v6, v7}, Landroid/media/MediaCas$PluginDescriptor;-><init>(Landroid/hardware/cas/AidlCasPluginDescriptor;)V

    aput-object v6, v4, v5
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1f} :catch_23

    .line 836
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 839
    :cond_22
    return-object v4

    .line 840
    :catch_23
    move-exception v0

    .line 841
    const-string v0, "MediaCas"

    const-string v3, "Some exception while enumerating plugins"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :cond_2b
    invoke-static {}, Landroid/media/MediaCas;->getServiceHidl()Landroid/hardware/cas/V1_0/IMediaCasService;

    move-result-object v0

    .line 846
    if-eqz v0, :cond_57

    .line 848
    :try_start_31
    invoke-interface {v0}, Landroid/hardware/cas/V1_0/IMediaCasService;->enumeratePlugins()Ljava/util/ArrayList;

    move-result-object v0

    .line 849
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3c

    .line 850
    return-object v2

    .line 852
    :cond_3c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v4, v3, [Landroid/media/MediaCas$PluginDescriptor;

    .line 853
    nop

    :goto_43
    if-ge v1, v3, :cond_55

    .line 854
    new-instance v5, Landroid/media/MediaCas$PluginDescriptor;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/cas/V1_0/HidlCasPluginDescriptor;

    invoke-direct {v5, v6}, Landroid/media/MediaCas$PluginDescriptor;-><init>(Landroid/hardware/cas/V1_0/HidlCasPluginDescriptor;)V

    aput-object v5, v4, v1
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_52} :catch_56

    .line 853
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 856
    :cond_55
    return-object v4

    .line 857
    :catch_56
    move-exception v0

    .line 860
    :cond_57
    return-object v2
.end method

.method static blacklist getService()Landroid/hardware/cas/IMediaCasService;
    .registers 4

    .line 290
    sget-object v0, Landroid/media/MediaCas;->sAidlLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_3
    sget-object v1, Landroid/media/MediaCas;->sService:Landroid/hardware/cas/IMediaCasService;

    if-eqz v1, :cond_13

    sget-object v1, Landroid/media/MediaCas;->sService:Landroid/hardware/cas/IMediaCasService;

    invoke-interface {v1}, Landroid/hardware/cas/IMediaCasService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_56

    if-nez v1, :cond_52

    .line 293
    :cond_13
    :try_start_13
    const-string v1, "MediaCas"

    const-string v2, "Trying to get AIDL service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/hardware/cas/IMediaCasService;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/default"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 296
    invoke-static {v1}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 295
    invoke-static {v1}, Landroid/hardware/cas/IMediaCasService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/cas/IMediaCasService;

    move-result-object v1

    sput-object v1, Landroid/media/MediaCas;->sService:Landroid/hardware/cas/IMediaCasService;

    .line 298
    sget-object v1, Landroid/media/MediaCas;->sService:Landroid/hardware/cas/IMediaCasService;

    if-eqz v1, :cond_49

    .line 299
    sget-object v1, Landroid/media/MediaCas;->sService:Landroid/hardware/cas/IMediaCasService;

    invoke-interface {v1}, Landroid/hardware/cas/IMediaCasService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v2, Landroid/media/MediaCas;->sDeathListener:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_49} :catch_4a
    .catchall {:try_start_13 .. :try_end_49} :catchall_56

    .line 303
    :cond_49
    goto :goto_52

    .line 301
    :catch_4a
    move-exception v1

    .line 302
    :try_start_4b
    const-string v1, "MediaCas"

    const-string v2, "Failed to get cas AIDL service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_52
    :goto_52
    sget-object v1, Landroid/media/MediaCas;->sService:Landroid/hardware/cas/IMediaCasService;

    monitor-exit v0

    return-object v1

    .line 306
    :catchall_56
    move-exception v1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_4b .. :try_end_58} :catchall_56

    throw v1
.end method

.method static blacklist getServiceHidl()Landroid/hardware/cas/V1_0/IMediaCasService;
    .registers 6

    .line 329
    sget-object v0, Landroid/media/MediaCas;->sHidlLock:Ljava/lang/Object;

    monitor-enter v0

    .line 330
    :try_start_3
    sget-object v1, Landroid/media/MediaCas;->sServiceHidl:Landroid/hardware/cas/V1_0/IMediaCasService;

    if-eqz v1, :cond_b

    .line 331
    sget-object v1, Landroid/media/MediaCas;->sServiceHidl:Landroid/hardware/cas/V1_0/IMediaCasService;

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_7e

    return-object v1

    .line 334
    :cond_b
    const-wide/16 v1, 0x18a

    const/4 v3, 0x1

    :try_start_e
    const-string v4, "MediaCas"

    const-string v5, "Trying to get cas@1.2 service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    nop

    .line 336
    invoke-static {v3}, Landroid/hardware/cas/V1_2/IMediaCasService;->getService(Z)Landroid/hardware/cas/V1_2/IMediaCasService;

    move-result-object v4

    .line 337
    if-eqz v4, :cond_29

    .line 338
    sput-object v4, Landroid/media/MediaCas;->sServiceHidl:Landroid/hardware/cas/V1_0/IMediaCasService;

    .line 339
    sget-object v4, Landroid/media/MediaCas;->sServiceHidl:Landroid/hardware/cas/V1_0/IMediaCasService;

    sget-object v5, Landroid/media/MediaCas;->sDeathListenerHidl:Landroid/os/IHwBinder$DeathRecipient;

    invoke-interface {v4, v5, v1, v2}, Landroid/hardware/cas/V1_0/IMediaCasService;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 340
    sget-object v1, Landroid/media/MediaCas;->sServiceHidl:Landroid/hardware/cas/V1_0/IMediaCasService;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_27} :catch_2a
    .catchall {:try_start_e .. :try_end_27} :catchall_7e

    :try_start_27
    monitor-exit v0

    return-object v1

    .line 344
    :cond_29
    goto :goto_32

    .line 342
    :catch_2a
    move-exception v4

    .line 343
    const-string v4, "MediaCas"

    const-string v5, "Failed to get cas@1.2 service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_27 .. :try_end_32} :catchall_7e

    .line 347
    :goto_32
    :try_start_32
    const-string v4, "MediaCas"

    const-string v5, "Trying to get cas@1.1 service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    nop

    .line 349
    invoke-static {v3}, Landroid/hardware/cas/V1_1/IMediaCasService;->getService(Z)Landroid/hardware/cas/V1_1/IMediaCasService;

    move-result-object v4

    .line 350
    if-eqz v4, :cond_4d

    .line 351
    sput-object v4, Landroid/media/MediaCas;->sServiceHidl:Landroid/hardware/cas/V1_0/IMediaCasService;

    .line 352
    sget-object v4, Landroid/media/MediaCas;->sServiceHidl:Landroid/hardware/cas/V1_0/IMediaCasService;

    sget-object v5, Landroid/media/MediaCas;->sDeathListenerHidl:Landroid/os/IHwBinder$DeathRecipient;

    invoke-interface {v4, v5, v1, v2}, Landroid/hardware/cas/V1_0/IMediaCasService;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 353
    sget-object v1, Landroid/media/MediaCas;->sServiceHidl:Landroid/hardware/cas/V1_0/IMediaCasService;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_4b} :catch_4e
    .catchall {:try_start_32 .. :try_end_4b} :catchall_7e

    :try_start_4b
    monitor-exit v0

    return-object v1

    .line 357
    :cond_4d
    goto :goto_56

    .line 355
    :catch_4e
    move-exception v4

    .line 356
    const-string v4, "MediaCas"

    const-string v5, "Failed to get cas@1.1 service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_4b .. :try_end_56} :catchall_7e

    .line 360
    :goto_56
    :try_start_56
    const-string v4, "MediaCas"

    const-string v5, "Trying to get cas@1.0 service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    nop

    .line 362
    invoke-static {v3}, Landroid/hardware/cas/V1_0/IMediaCasService;->getService(Z)Landroid/hardware/cas/V1_0/IMediaCasService;

    move-result-object v3

    sput-object v3, Landroid/media/MediaCas;->sServiceHidl:Landroid/hardware/cas/V1_0/IMediaCasService;

    .line 363
    sget-object v3, Landroid/media/MediaCas;->sServiceHidl:Landroid/hardware/cas/V1_0/IMediaCasService;

    if-eqz v3, :cond_6f

    .line 364
    sget-object v3, Landroid/media/MediaCas;->sServiceHidl:Landroid/hardware/cas/V1_0/IMediaCasService;

    sget-object v4, Landroid/media/MediaCas;->sDeathListenerHidl:Landroid/os/IHwBinder$DeathRecipient;

    invoke-interface {v3, v4, v1, v2}, Landroid/hardware/cas/V1_0/IMediaCasService;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 366
    :cond_6f
    sget-object v1, Landroid/media/MediaCas;->sServiceHidl:Landroid/hardware/cas/V1_0/IMediaCasService;
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_71} :catch_73
    .catchall {:try_start_56 .. :try_end_71} :catchall_7e

    :try_start_71
    monitor-exit v0

    return-object v1

    .line 367
    :catch_73
    move-exception v1

    .line 368
    const-string v1, "MediaCas"

    const-string v2, "Failed to get cas@1.0 service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    monitor-exit v0

    .line 373
    const/4 v0, 0x0

    return-object v0

    .line 371
    :catchall_7e
    move-exception v1

    monitor-exit v0
    :try_end_80
    .catchall {:try_start_71 .. :try_end_80} :catchall_7e

    throw v1
.end method

.method private blacklist getSessionResourceHandle()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 1184
    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    .line 1186
    nop

    .line 1187
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    aput-wide v2, v0, v1

    .line 1188
    iget-object v2, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    if-eqz v2, :cond_2e

    .line 1189
    new-instance v2, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;

    invoke-direct {v2}, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;-><init>()V

    .line 1190
    iget v3, p0, Landroid/media/MediaCas;->mClientId:I

    iput v3, v2, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->clientId:I

    .line 1191
    iget v3, p0, Landroid/media/MediaCas;->mCasSystemId:I

    iput v3, v2, Landroid/media/tv/tunerresourcemanager/CasSessionRequest;->casSystemId:I

    .line 1192
    iget-object v3, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    .line 1193
    invoke-virtual {v3, v2, v0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->requestCasSession(Landroid/media/tv/tunerresourcemanager/CasSessionRequest;[J)Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_2e

    .line 1194
    :cond_26
    new-instance v0, Landroid/media/MediaCasException$InsufficientResourceException;

    const-string v1, "insufficient resource to Open Session"

    invoke-direct {v0, v1}, Landroid/media/MediaCasException$InsufficientResourceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1198
    :cond_2e
    :goto_2e
    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public static whitelist isSystemIdSupported(I)Z
    .registers 3

    .line 803
    invoke-static {}, Landroid/media/MediaCas;->getService()Landroid/hardware/cas/IMediaCasService;

    move-result-object v0

    .line 804
    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 806
    :try_start_7
    invoke-interface {v0, p0}, Landroid/hardware/cas/IMediaCasService;->isSystemIdSupported(I)Z

    move-result p0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return p0

    .line 807
    :catch_c
    move-exception p0

    .line 808
    return v1

    .line 812
    :cond_e
    invoke-static {}, Landroid/media/MediaCas;->getServiceHidl()Landroid/hardware/cas/V1_0/IMediaCasService;

    move-result-object v0

    .line 813
    if-eqz v0, :cond_1a

    .line 815
    :try_start_14
    invoke-interface {v0, p0}, Landroid/hardware/cas/V1_0/IMediaCasService;->isSystemIdSupported(I)Z

    move-result p0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_18} :catch_19

    return p0

    .line 816
    :catch_19
    move-exception p0

    .line 819
    :cond_1a
    return v1
.end method

.method private blacklist registerClient(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 6

    .line 911
    nop

    .line 912
    const-string v0, "tv_tuner_resource_mgr"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iput-object v0, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    .line 913
    iget-object v0, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    if-eqz v0, :cond_2b

    .line 914
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 915
    new-instance v1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;

    invoke-direct {v1}, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;-><init>()V

    .line 916
    iput-object p2, v1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    .line 917
    iput p3, v1, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->useCase:I

    .line 918
    iget-object p2, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    .line 919
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iget-object p3, p0, Landroid/media/MediaCas;->mResourceListener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

    .line 918
    invoke-virtual {p2, v1, p1, p3, v0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->registerClientProfile(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Ljava/util/concurrent/Executor;Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;[I)V

    .line 920
    const/4 p1, 0x0

    aget p1, v0, p1

    iput p1, p0, Landroid/media/MediaCas;->mClientId:I

    .line 922
    :cond_2b
    return-void
.end method

.method private blacklist removeSessionFromResourceMap(Landroid/media/MediaCas$Session;)V
    .registers 7

    .line 1211
    iget-object v0, p0, Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;

    monitor-enter v0

    .line 1212
    :try_start_3
    iget-object v1, p0, Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 1213
    iget-object v1, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget-object v2, p0, Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget v4, p0, Landroid/media/MediaCas;->mClientId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->releaseCasSession(JI)V

    .line 1214
    iget-object v1, p0, Landroid/media/MediaCas;->mSessionMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    :cond_23
    monitor-exit v0

    .line 1217
    return-void

    .line 1216
    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p1
.end method

.method private greylist-max-o toByteArray([B)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 581
    if-nez p1, :cond_8

    .line 582
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 584
    :cond_8
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Landroid/media/MediaCas;->toByteArray([BII)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method private greylist-max-o toByteArray([BII)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 573
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 574
    const/4 v1, 0x0

    :goto_6
    if-ge v1, p3, :cond_16

    .line 575
    add-int v2, p2, v1

    aget-byte v2, p1, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 577
    :cond_16
    return-object v0
.end method

.method private greylist-max-o toBytes(Ljava/util/ArrayList;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 588
    nop

    .line 589
    if-eqz p1, :cond_1b

    .line 590
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [B

    .line 591
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_1c

    .line 592
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    .line 591
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 589
    :cond_1b
    const/4 v1, 0x0

    .line 595
    :cond_1c
    return-object v1
.end method

.method private greylist-max-o validateInternalStates()V
    .registers 2

    .line 377
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    if-eqz v0, :cond_9

    goto :goto_f

    .line 378
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 380
    :cond_f
    :goto_f
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 4

    .line 1496
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 1498
    :try_start_5
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    invoke-interface {v0}, Landroid/hardware/cas/ICas;->release()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_f
    .catchall {:try_start_5 .. :try_end_a} :catchall_b

    goto :goto_10

    .line 1501
    :catchall_b
    move-exception v0

    iput-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    .line 1502
    throw v0

    .line 1499
    :catch_f
    move-exception v0

    .line 1501
    :goto_10
    iput-object v1, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    .line 1502
    goto :goto_2d

    .line 1503
    :cond_13
    iget-object v0, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    if-eqz v0, :cond_2d

    .line 1505
    :try_start_17
    iget-object v0, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    invoke-interface {v0}, Landroid/hardware/cas/V1_0/ICas;->release()I
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1c} :catch_25
    .catchall {:try_start_17 .. :try_end_1c} :catchall_1d

    goto :goto_26

    .line 1508
    :catchall_1d
    move-exception v0

    iput-object v1, p0, Landroid/media/MediaCas;->mICasHidl12:Landroid/hardware/cas/V1_2/ICas;

    iput-object v1, p0, Landroid/media/MediaCas;->mICasHidl11:Landroid/hardware/cas/V1_1/ICas;

    iput-object v1, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    .line 1509
    throw v0

    .line 1506
    :catch_25
    move-exception v0

    .line 1508
    :goto_26
    iput-object v1, p0, Landroid/media/MediaCas;->mICasHidl12:Landroid/hardware/cas/V1_2/ICas;

    iput-object v1, p0, Landroid/media/MediaCas;->mICasHidl11:Landroid/hardware/cas/V1_1/ICas;

    iput-object v1, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    .line 1509
    nop

    .line 1512
    :cond_2d
    :goto_2d
    iget-object v0, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    if-eqz v0, :cond_3a

    .line 1513
    iget-object v0, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v2, p0, Landroid/media/MediaCas;->mClientId:I

    invoke-virtual {v0, v2}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->unregisterClientProfile(I)V

    .line 1514
    iput-object v1, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    .line 1517
    :cond_3a
    iget-object v0, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_45

    .line 1518
    iget-object v0, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 1519
    iput-object v1, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1521
    :cond_45
    return-void
.end method

.method blacklist createFromSessionId([B)Landroid/media/MediaCas$Session;
    .registers 3

    .line 789
    if-eqz p1, :cond_c

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_c

    .line 792
    :cond_6
    new-instance v0, Landroid/media/MediaCas$Session;

    invoke-direct {v0, p0, p1}, Landroid/media/MediaCas$Session;-><init>(Landroid/media/MediaCas;[B)V

    return-object v0

    .line 790
    :cond_c
    :goto_c
    const/4 p1, 0x0

    return-object p1
.end method

.method protected whitelist test-api finalize()V
    .registers 1

    .line 1525
    invoke-virtual {p0}, Landroid/media/MediaCas;->close()V

    .line 1526
    return-void
.end method

.method public blacklist forceResourceLost()V
    .registers 2

    .line 1489
    iget-object v0, p0, Landroid/media/MediaCas;->mResourceListener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

    if-eqz v0, :cond_9

    .line 1490
    iget-object v0, p0, Landroid/media/MediaCas;->mResourceListener:Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;

    invoke-virtual {v0}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager$ResourcesReclaimListener;->onReclaimResources()V

    .line 1492
    :cond_9
    return-void
.end method

.method greylist-max-o getBinder()Landroid/os/IHwBinder;
    .registers 2

    .line 1028
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    if-eqz v0, :cond_6

    .line 1029
    const/4 v0, 0x0

    return-object v0

    .line 1032
    :cond_6
    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    .line 1034
    iget-object v0, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    invoke-interface {v0}, Landroid/hardware/cas/V1_0/ICas;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isAidlHal()Z
    .registers 2

    .line 1044
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist openSession()Landroid/media/MediaCas$Session;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 1234
    const-string v0, "MediaCas"

    invoke-direct {p0}, Landroid/media/MediaCas;->getSessionResourceHandle()J

    move-result-wide v1

    .line 1237
    const/4 v3, 0x0

    const/16 v4, 0x118

    :try_start_9
    iget-object v5, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_b} :catch_55

    const/4 v6, 0x1

    const-string v7, "Write Stats Log for succeed to Open Session."

    if-eqz v5, :cond_2f

    .line 1239
    :try_start_10
    iget-object v5, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    invoke-interface {v5}, Landroid/hardware/cas/ICas;->openSessionDefault()[B

    move-result-object v5

    .line 1240
    invoke-virtual {p0, v5}, Landroid/media/MediaCas;->createFromSessionId([B)Landroid/media/MediaCas$Session;

    move-result-object v5

    .line 1241
    invoke-direct {p0, v5, v1, v2}, Landroid/media/MediaCas;->addSessionToResourceMap(Landroid/media/MediaCas$Session;J)V

    .line 1242
    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    iget v1, p0, Landroid/media/MediaCas;->mUserId:I

    iget v2, p0, Landroid/media/MediaCas;->mCasSystemId:I

    invoke-static {v4, v1, v2, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V
    :try_end_27
    .catch Landroid/os/ServiceSpecificException; {:try_start_10 .. :try_end_27} :catch_28
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_27} :catch_55

    .line 1248
    return-object v5

    .line 1249
    :catch_28
    move-exception v1

    .line 1250
    :try_start_29
    iget v1, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-static {v1}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V

    .line 1251
    goto :goto_54

    .line 1252
    :cond_2f
    iget-object v5, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    if-eqz v5, :cond_54

    .line 1253
    new-instance v5, Landroid/media/MediaCas$OpenSessionCallback;

    invoke-direct {v5, p0, v3}, Landroid/media/MediaCas$OpenSessionCallback;-><init>(Landroid/media/MediaCas;Landroid/media/MediaCas-IA;)V

    .line 1254
    iget-object v8, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    invoke-interface {v8, v5}, Landroid/hardware/cas/V1_0/ICas;->openSession(Landroid/hardware/cas/V1_0/ICas$openSessionCallback;)V

    .line 1255
    iget v8, v5, Landroid/media/MediaCas$OpenSessionCallback;->mStatus:I

    invoke-static {v8}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V

    .line 1256
    iget-object v8, v5, Landroid/media/MediaCas$OpenSessionCallback;->mSession:Landroid/media/MediaCas$Session;

    invoke-direct {p0, v8, v1, v2}, Landroid/media/MediaCas;->addSessionToResourceMap(Landroid/media/MediaCas$Session;J)V

    .line 1257
    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    iget v1, p0, Landroid/media/MediaCas;->mUserId:I

    iget v2, p0, Landroid/media/MediaCas;->mCasSystemId:I

    invoke-static {v4, v1, v2, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 1263
    iget-object v0, v5, Landroid/media/MediaCas$OpenSessionCallback;->mSession:Landroid/media/MediaCas$Session;
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_53} :catch_55

    return-object v0

    .line 1267
    :cond_54
    :goto_54
    goto :goto_59

    .line 1265
    :catch_55
    move-exception v1

    .line 1266
    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    .line 1268
    :goto_59
    const-string v1, "Write Stats Log for fail to Open Session."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    iget v0, p0, Landroid/media/MediaCas;->mUserId:I

    iget v1, p0, Landroid/media/MediaCas;->mCasSystemId:I

    .line 1270
    const/4 v2, 0x2

    invoke-static {v4, v0, v1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 1272
    return-object v3
.end method

.method public whitelist openSession(II)Landroid/media/MediaCas$Session;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 1295
    invoke-direct {p0}, Landroid/media/MediaCas;->getSessionResourceHandle()J

    move-result-wide v0

    .line 1297
    iget-object v2, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    const/4 v3, 0x1

    const-string v4, "Write Stats Log for succeed to Open Session."

    const/16 v5, 0x118

    const-string v6, "MediaCas"

    if-eqz v2, :cond_33

    .line 1299
    :try_start_f
    iget-object v2, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    invoke-interface {v2, p1, p2}, Landroid/hardware/cas/ICas;->openSession(II)[B

    move-result-object v2

    .line 1300
    invoke-virtual {p0, v2}, Landroid/media/MediaCas;->createFromSessionId([B)Landroid/media/MediaCas$Session;

    move-result-object v2

    .line 1301
    invoke-direct {p0, v2, v0, v1}, Landroid/media/MediaCas;->addSessionToResourceMap(Landroid/media/MediaCas$Session;J)V

    .line 1302
    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    iget v7, p0, Landroid/media/MediaCas;->mUserId:I

    iget v8, p0, Landroid/media/MediaCas;->mCasSystemId:I

    invoke-static {v5, v7, v8, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V
    :try_end_26
    .catch Landroid/os/ServiceSpecificException; {:try_start_f .. :try_end_26} :catch_2c
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_26} :catch_27

    .line 1308
    return-object v2

    .line 1311
    :catch_27
    move-exception v2

    .line 1312
    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    goto :goto_33

    .line 1309
    :catch_2c
    move-exception v2

    .line 1310
    iget v2, v2, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-static {v2}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V

    .line 1313
    nop

    .line 1315
    :cond_33
    :goto_33
    iget-object v2, p0, Landroid/media/MediaCas;->mICasHidl12:Landroid/hardware/cas/V1_2/ICas;

    if-eqz v2, :cond_6b

    .line 1321
    const/4 v2, 0x0

    :try_start_38
    new-instance v7, Landroid/media/MediaCas$OpenSession_1_2_Callback;

    invoke-direct {v7, p0, v2}, Landroid/media/MediaCas$OpenSession_1_2_Callback;-><init>(Landroid/media/MediaCas;Landroid/media/MediaCas-IA;)V

    .line 1322
    iget-object v8, p0, Landroid/media/MediaCas;->mICasHidl12:Landroid/hardware/cas/V1_2/ICas;

    invoke-interface {v8, p1, p2, v7}, Landroid/hardware/cas/V1_2/ICas;->openSession_1_2(IILandroid/hardware/cas/V1_2/ICas$openSession_1_2Callback;)V

    .line 1323
    iget p1, v7, Landroid/media/MediaCas$OpenSession_1_2_Callback;->mStatus:I

    invoke-static {p1}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V

    .line 1324
    iget-object p1, v7, Landroid/media/MediaCas$OpenSession_1_2_Callback;->mSession:Landroid/media/MediaCas$Session;

    invoke-direct {p0, p1, v0, v1}, Landroid/media/MediaCas;->addSessionToResourceMap(Landroid/media/MediaCas$Session;J)V

    .line 1325
    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    iget p1, p0, Landroid/media/MediaCas;->mUserId:I

    iget p2, p0, Landroid/media/MediaCas;->mCasSystemId:I

    .line 1327
    invoke-static {v5, p1, p2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 1329
    iget-object p1, v7, Landroid/media/MediaCas$OpenSession_1_2_Callback;->mSession:Landroid/media/MediaCas$Session;
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_58} :catch_59

    return-object p1

    .line 1330
    :catch_59
    move-exception p1

    .line 1331
    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    .line 1333
    const-string p1, "Write Stats Log for fail to Open Session."

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    iget p1, p0, Landroid/media/MediaCas;->mUserId:I

    iget p2, p0, Landroid/media/MediaCas;->mCasSystemId:I

    .line 1335
    const/4 v0, 0x2

    invoke-static {v5, p1, p2, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 1337
    return-object v2

    .line 1316
    :cond_6b
    const-string p1, "Open Session with scrambling mode is only supported by cas@1.2+ interface"

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    new-instance p1, Landroid/media/MediaCasException$UnsupportedCasException;

    const-string p2, "Open Session with scrambling mode is not supported"

    invoke-direct {p1, p2}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist processEmm([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 1383
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/media/MediaCas;->processEmm([BII)V

    .line 1384
    return-void
.end method

.method public whitelist processEmm([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 1353
    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    .line 1356
    :try_start_3
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_5} :catch_26

    if-eqz v0, :cond_18

    .line 1358
    :try_start_7
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/hardware/cas/ICas;->processEmm([B)V
    :try_end_10
    .catch Landroid/os/ServiceSpecificException; {:try_start_7 .. :try_end_10} :catch_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_26

    .line 1361
    :goto_10
    goto :goto_25

    .line 1359
    :catch_11
    move-exception p1

    .line 1360
    :try_start_12
    iget p1, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-static {p1}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V

    goto :goto_10

    .line 1363
    :cond_18
    iget-object v0, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    .line 1364
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaCas;->toByteArray([BII)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/hardware/cas/V1_0/ICas;->processEmm(Ljava/util/ArrayList;)I

    move-result p1

    .line 1363
    invoke-static {p1}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_25} :catch_26

    .line 1368
    :goto_25
    goto :goto_2a

    .line 1366
    :catch_26
    move-exception p1

    .line 1367
    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    .line 1369
    :goto_2a
    return-void
.end method

.method public whitelist provision(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 1433
    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    .line 1436
    :try_start_3
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_5} :catch_1e

    if-eqz v0, :cond_14

    .line 1438
    :try_start_7
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    invoke-interface {v0, p1}, Landroid/hardware/cas/ICas;->provision(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_7 .. :try_end_c} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_1e

    .line 1441
    :goto_c
    goto :goto_1d

    .line 1439
    :catch_d
    move-exception p1

    .line 1440
    :try_start_e
    iget p1, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-static {p1}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V

    goto :goto_c

    .line 1443
    :cond_14
    iget-object v0, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    invoke-interface {v0, p1}, Landroid/hardware/cas/V1_0/ICas;->provision(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1d} :catch_1e

    .line 1447
    :goto_1d
    goto :goto_22

    .line 1445
    :catch_1e
    move-exception p1

    .line 1446
    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    .line 1448
    :goto_22
    return-void
.end method

.method public whitelist refreshEntitlements(I[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 1462
    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    .line 1465
    :try_start_3
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_5} :catch_27

    if-eqz v0, :cond_19

    .line 1467
    if-nez p2, :cond_c

    .line 1468
    const/4 p2, 0x0

    :try_start_a
    new-array p2, p2, [B

    .line 1470
    :cond_c
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    invoke-interface {v0, p1, p2}, Landroid/hardware/cas/ICas;->refreshEntitlements(I[B)V
    :try_end_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_11} :catch_12
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_27

    .line 1473
    :goto_11
    goto :goto_26

    .line 1471
    :catch_12
    move-exception p1

    .line 1472
    :try_start_13
    iget p1, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-static {p1}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V

    goto :goto_11

    .line 1475
    :cond_19
    iget-object v0, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    .line 1476
    invoke-direct {p0, p2}, Landroid/media/MediaCas;->toByteArray([B)Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/hardware/cas/V1_0/ICas;->refreshEntitlements(ILjava/util/ArrayList;)I

    move-result p1

    .line 1475
    invoke-static {p1}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_26} :catch_27

    .line 1480
    :goto_26
    goto :goto_2b

    .line 1478
    :catch_27
    move-exception p1

    .line 1479
    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    .line 1481
    :goto_2b
    return-void
.end method

.method public whitelist sendEvent(II[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 1400
    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    .line 1403
    :try_start_3
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_5} :catch_27

    if-eqz v0, :cond_19

    .line 1405
    if-nez p3, :cond_c

    .line 1406
    const/4 p3, 0x0

    :try_start_a
    new-array p3, p3, [B

    .line 1408
    :cond_c
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/cas/ICas;->sendEvent(II[B)V
    :try_end_11
    .catch Landroid/os/ServiceSpecificException; {:try_start_a .. :try_end_11} :catch_12
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_27

    .line 1411
    :goto_11
    goto :goto_26

    .line 1409
    :catch_12
    move-exception p1

    .line 1410
    :try_start_13
    iget p1, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-static {p1}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V

    goto :goto_11

    .line 1413
    :cond_19
    iget-object v0, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    .line 1414
    invoke-direct {p0, p3}, Landroid/media/MediaCas;->toByteArray([B)Ljava/util/ArrayList;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/cas/V1_0/ICas;->sendEvent(IILjava/util/ArrayList;)I

    move-result p1

    .line 1413
    invoke-static {p1}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_26} :catch_27

    .line 1418
    :goto_26
    goto :goto_2b

    .line 1416
    :catch_27
    move-exception p1

    .line 1417
    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    .line 1419
    :goto_2b
    return-void
.end method

.method public whitelist setEventListener(Landroid/media/MediaCas$EventListener;Landroid/os/Handler;)V
    .registers 4

    .line 1111
    iput-object p1, p0, Landroid/media/MediaCas;->mListener:Landroid/media/MediaCas$EventListener;

    .line 1113
    iget-object p1, p0, Landroid/media/MediaCas;->mListener:Landroid/media/MediaCas$EventListener;

    const/4 v0, 0x0

    if-nez p1, :cond_a

    .line 1114
    iput-object v0, p0, Landroid/media/MediaCas;->mEventHandler:Landroid/media/MediaCas$EventHandler;

    .line 1115
    return-void

    .line 1118
    :cond_a
    if-eqz p2, :cond_10

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1119
    :cond_10
    if-nez v0, :cond_3f

    .line 1120
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_3f

    .line 1121
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_3f

    .line 1122
    iget-object p1, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz p1, :cond_2a

    iget-object p1, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result p1

    if-nez p1, :cond_39

    .line 1123
    :cond_2a
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "MediaCasEventThread"

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1125
    iget-object p1, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 1127
    :cond_39
    iget-object p1, p0, Landroid/media/MediaCas;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1129
    :cond_3f
    new-instance p1, Landroid/media/MediaCas$EventHandler;

    invoke-direct {p1, p0, v0}, Landroid/media/MediaCas$EventHandler;-><init>(Landroid/media/MediaCas;Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/media/MediaCas;->mEventHandler:Landroid/media/MediaCas$EventHandler;

    .line 1130
    return-void
.end method

.method public whitelist setPrivateData([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 1142
    invoke-direct {p0}, Landroid/media/MediaCas;->validateInternalStates()V

    .line 1145
    :try_start_3
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_5} :catch_24

    if-eqz v0, :cond_14

    .line 1147
    :try_start_7
    iget-object v0, p0, Landroid/media/MediaCas;->mICas:Landroid/hardware/cas/ICas;

    invoke-interface {v0, p1}, Landroid/hardware/cas/ICas;->setPrivateData([B)V
    :try_end_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_7 .. :try_end_c} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_24

    .line 1150
    :goto_c
    goto :goto_23

    .line 1148
    :catch_d
    move-exception p1

    .line 1149
    :try_start_e
    iget p1, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-static {p1}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V

    goto :goto_c

    .line 1152
    :cond_14
    iget-object v0, p0, Landroid/media/MediaCas;->mICasHidl:Landroid/hardware/cas/V1_0/ICas;

    array-length v1, p1

    .line 1153
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Landroid/media/MediaCas;->toByteArray([BII)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/hardware/cas/V1_0/ICas;->setPrivateData(Ljava/util/ArrayList;)I

    move-result p1

    .line 1152
    invoke-static {p1}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_23} :catch_24

    .line 1157
    :goto_23
    goto :goto_28

    .line 1155
    :catch_24
    move-exception p1

    .line 1156
    invoke-direct {p0}, Landroid/media/MediaCas;->cleanupAndRethrowIllegalState()V

    .line 1158
    :goto_28
    return-void
.end method

.method public whitelist setResourceOwnershipRetention(Z)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1022
    iget-object v0, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    if-eqz v0, :cond_b

    .line 1023
    iget-object v0, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v1, p0, Landroid/media/MediaCas;->mClientId:I

    invoke-virtual {v0, v1, p1}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->setResourceOwnershipRetention(IZ)V

    .line 1025
    :cond_b
    return-void
.end method

.method public whitelist updateResourcePriority(II)Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1002
    iget-object v0, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    if-eqz v0, :cond_d

    .line 1003
    iget-object v0, p0, Landroid/media/MediaCas;->mTunerResourceManager:Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    iget v1, p0, Landroid/media/MediaCas;->mClientId:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->updateClientPriority(III)Z

    move-result p1

    return p1

    .line 1005
    :cond_d
    const/4 p1, 0x0

    return p1
.end method
