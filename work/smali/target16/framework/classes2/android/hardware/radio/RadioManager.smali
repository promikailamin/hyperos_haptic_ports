.class public Landroid/hardware/radio/RadioManager;
.super Ljava/lang/Object;
.source "RadioManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/RadioManager$BandConfig;,
        Landroid/hardware/radio/RadioManager$ProgramInfo;,
        Landroid/hardware/radio/RadioManager$AmBandConfig;,
        Landroid/hardware/radio/RadioManager$FmBandConfig;,
        Landroid/hardware/radio/RadioManager$AmBandDescriptor;,
        Landroid/hardware/radio/RadioManager$FmBandDescriptor;,
        Landroid/hardware/radio/RadioManager$BandDescriptor;,
        Landroid/hardware/radio/RadioManager$ModuleProperties;,
        Landroid/hardware/radio/RadioManager$ConfigFlag;,
        Landroid/hardware/radio/RadioManager$Band;,
        Landroid/hardware/radio/RadioManager$RadioStatusType;
    }
.end annotation


# static fields
.field public static final whitelist BAND_AM:I = 0x0

.field public static final whitelist BAND_AM_HD:I = 0x3

.field public static final whitelist BAND_FM:I = 0x1

.field public static final whitelist BAND_FM_HD:I = 0x2

.field public static final whitelist BAND_INVALID:I = -0x1

.field public static final whitelist CLASS_AM_FM:I = 0x0

.field public static final whitelist CLASS_DT:I = 0x2

.field public static final whitelist CLASS_SAT:I = 0x1

.field public static final whitelist CONFIG_DAB_DAB_LINKING:I = 0x6

.field public static final whitelist CONFIG_DAB_DAB_SOFT_LINKING:I = 0x8

.field public static final whitelist CONFIG_DAB_FM_LINKING:I = 0x7

.field public static final whitelist CONFIG_DAB_FM_SOFT_LINKING:I = 0x9

.field public static final whitelist CONFIG_FORCE_ANALOG:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CONFIG_FORCE_ANALOG_AM:I = 0xb

.field public static final whitelist CONFIG_FORCE_ANALOG_FM:I = 0xa

.field public static final whitelist CONFIG_FORCE_DIGITAL:I = 0x3

.field public static final whitelist CONFIG_FORCE_MONO:I = 0x1

.field public static final whitelist CONFIG_RDS_AF:I = 0x4

.field public static final whitelist CONFIG_RDS_REG:I = 0x5

.field public static final whitelist REGION_ITU_1:I = 0x0

.field public static final whitelist REGION_ITU_2:I = 0x1

.field public static final whitelist REGION_JAPAN:I = 0x3

.field public static final whitelist REGION_KOREA:I = 0x4

.field public static final whitelist REGION_OIRT:I = 0x2

.field public static final whitelist STATUS_BAD_VALUE:I = -0x16

.field public static final whitelist STATUS_DEAD_OBJECT:I = -0x20

.field public static final whitelist STATUS_ERROR:I = -0x80000000

.field public static final whitelist STATUS_INVALID_OPERATION:I = -0x26

.field public static final whitelist STATUS_NO_INIT:I = -0x13

.field public static final whitelist STATUS_OK:I = 0x0

.field public static final whitelist STATUS_PERMISSION_DENIED:I = -0x1

.field public static final whitelist STATUS_TIMED_OUT:I = -0x6e

.field private static final greylist-max-o TAG:Ljava/lang/String; = "BroadcastRadio.manager"


# instance fields
.field private final greylist-max-o mAnnouncementListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/radio/Announcement$OnListUpdatedListener;",
            "Landroid/hardware/radio/ICloseHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mService:Landroid/hardware/radio/IRadioService;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    .line 2069
    const-string v0, "broadcastradio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/IRadioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/IRadioService;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/hardware/radio/RadioManager;-><init>(Landroid/content/Context;Landroid/hardware/radio/IRadioService;)V

    .line 2071
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/hardware/radio/IRadioService;)V
    .registers 4

    .line 2077
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1999
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/RadioManager;->mAnnouncementListeners:Ljava/util/Map;

    .line 2078
    iput-object p1, p0, Landroid/hardware/radio/RadioManager;->mContext:Landroid/content/Context;

    .line 2079
    iput-object p2, p0, Landroid/hardware/radio/RadioManager;->mService:Landroid/hardware/radio/IRadioService;

    .line 2080
    return-void
.end method

.method static synthetic blacklist lambda$addAnnouncementListener$0(Ljava/lang/Runnable;)V
    .registers 1

    .line 2011
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private native greylist-max-o nativeListModules(Ljava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;)I"
        }
    .end annotation
.end method


# virtual methods
.method public whitelist addAnnouncementListener(Ljava/util/Set;Landroid/hardware/radio/Announcement$OnListUpdatedListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/hardware/radio/Announcement$OnListUpdatedListener;",
            ")V"
        }
    .end annotation

    .line 2011
    new-instance v0, Landroid/hardware/radio/RadioManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/hardware/radio/RadioManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0, p1, p2}, Landroid/hardware/radio/RadioManager;->addAnnouncementListener(Ljava/util/concurrent/Executor;Ljava/util/Set;Landroid/hardware/radio/Announcement$OnListUpdatedListener;)V

    .line 2012
    return-void
.end method

.method public whitelist addAnnouncementListener(Ljava/util/concurrent/Executor;Ljava/util/Set;Landroid/hardware/radio/Announcement$OnListUpdatedListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/hardware/radio/Announcement$OnListUpdatedListener;",
            ")V"
        }
    .end annotation

    .line 2025
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2026
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2027
    invoke-interface {p2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p2

    .line 2028
    new-instance v0, Landroid/hardware/radio/RadioManager$1;

    invoke-direct {v0, p0, p1, p3}, Landroid/hardware/radio/RadioManager$1;-><init>(Landroid/hardware/radio/RadioManager;Ljava/util/concurrent/Executor;Landroid/hardware/radio/Announcement$OnListUpdatedListener;)V

    .line 2033
    iget-object p1, p0, Landroid/hardware/radio/RadioManager;->mAnnouncementListeners:Ljava/util/Map;

    monitor-enter p1

    .line 2034
    nop

    .line 2036
    :try_start_20
    iget-object v1, p0, Landroid/hardware/radio/RadioManager;->mService:Landroid/hardware/radio/IRadioService;

    invoke-interface {v1, p2, v0}, Landroid/hardware/radio/IRadioService;->addAnnouncementListener([ILandroid/hardware/radio/IAnnouncementListener;)Landroid/hardware/radio/ICloseHandle;

    move-result-object p2
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_26} :catch_29
    .catchall {:try_start_20 .. :try_end_26} :catchall_27

    .line 2039
    goto :goto_2e

    .line 2043
    :catchall_27
    move-exception p2

    goto :goto_40

    .line 2037
    :catch_29
    move-exception p2

    .line 2038
    :try_start_2a
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    const/4 p2, 0x0

    .line 2040
    :goto_2e
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2041
    iget-object v0, p0, Landroid/hardware/radio/RadioManager;->mAnnouncementListeners:Ljava/util/Map;

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/radio/ICloseHandle;

    .line 2042
    if-eqz p2, :cond_3e

    invoke-static {p2}, Landroid/hardware/radio/Utils;->close(Landroid/hardware/radio/ICloseHandle;)V

    .line 2043
    :cond_3e
    monitor-exit p1

    .line 2044
    return-void

    .line 2043
    :goto_40
    monitor-exit p1
    :try_end_41
    .catchall {:try_start_2a .. :try_end_41} :catchall_27

    throw p2
.end method

.method public whitelist listModules(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;)I"
        }
    .end annotation

    .line 1934
    const-string v0, "BroadcastRadio.manager"

    if-nez p1, :cond_c

    .line 1935
    const-string p1, "the output list must not be empty"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    const/16 p1, -0x16

    return p1

    .line 1939
    :cond_c
    const-string v1, "Listing available tuners..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1942
    :try_start_11
    iget-object v1, p0, Landroid/hardware/radio/RadioManager;->mService:Landroid/hardware/radio/IRadioService;

    invoke-interface {v1}, Landroid/hardware/radio/IRadioService;->listModules()Ljava/util/List;

    move-result-object v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_17} :catch_27

    .line 1946
    nop

    .line 1948
    if-nez v1, :cond_22

    .line 1949
    const-string p1, "Returned list was a null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    const/high16 p1, -0x80000000

    return p1

    .line 1953
    :cond_22
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1954
    const/4 p1, 0x0

    return p1

    .line 1943
    :catch_27
    move-exception p1

    .line 1944
    const-string v1, "Failed listing available tuners"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1945
    const/16 p1, -0x20

    return p1
.end method

.method public whitelist openTuner(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/RadioTuner$Callback;Landroid/os/Handler;)Landroid/hardware/radio/RadioTuner;
    .registers 9

    .line 1977
    const-string v0, "Failed to open tuner"

    if-eqz p4, :cond_48

    .line 1981
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening tuner "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastRadio.manager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    new-instance v1, Landroid/hardware/radio/TunerCallbackAdapter;

    invoke-direct {v1, p4, p5}, Landroid/hardware/radio/TunerCallbackAdapter;-><init>(Landroid/hardware/radio/RadioTuner$Callback;Landroid/os/Handler;)V

    .line 1986
    const/4 p4, 0x0

    :try_start_28
    iget-object p5, p0, Landroid/hardware/radio/RadioManager;->mService:Landroid/hardware/radio/IRadioService;

    invoke-interface {p5, p1, p2, p3, v1}, Landroid/hardware/radio/IRadioService;->openTuner(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Landroid/hardware/radio/ITuner;

    move-result-object p1
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2e} :catch_43
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_2e} :catch_43
    .catch Ljava/lang/IllegalStateException; {:try_start_28 .. :try_end_2e} :catch_43

    .line 1990
    nop

    .line 1991
    if-nez p1, :cond_35

    .line 1992
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1993
    return-object p4

    .line 1995
    :cond_35
    new-instance p3, Landroid/hardware/radio/TunerAdapter;

    .line 1996
    if-eqz p2, :cond_3e

    invoke-virtual {p2}, Landroid/hardware/radio/RadioManager$BandConfig;->getType()I

    move-result p2

    goto :goto_3f

    :cond_3e
    const/4 p2, -0x1

    :goto_3f
    invoke-direct {p3, p1, v1, p2}, Landroid/hardware/radio/TunerAdapter;-><init>(Landroid/hardware/radio/ITuner;Landroid/hardware/radio/TunerCallbackAdapter;I)V

    .line 1995
    return-object p3

    .line 1987
    :catch_43
    move-exception p1

    .line 1988
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1989
    return-object p4

    .line 1978
    :cond_48
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callback must not be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist removeAnnouncementListener(Landroid/hardware/radio/Announcement$OnListUpdatedListener;)V
    .registers 4

    .line 2055
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2056
    iget-object v0, p0, Landroid/hardware/radio/RadioManager;->mAnnouncementListeners:Ljava/util/Map;

    monitor-enter v0

    .line 2057
    :try_start_6
    iget-object v1, p0, Landroid/hardware/radio/RadioManager;->mAnnouncementListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/ICloseHandle;

    .line 2058
    if-eqz p1, :cond_13

    invoke-static {p1}, Landroid/hardware/radio/Utils;->close(Landroid/hardware/radio/ICloseHandle;)V

    .line 2059
    :cond_13
    monitor-exit v0

    .line 2060
    return-void

    .line 2059
    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw p1
.end method
