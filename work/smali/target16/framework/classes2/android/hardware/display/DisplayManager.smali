.class public final Landroid/hardware/display/DisplayManager;
.super Ljava/lang/Object;
.source "DisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/DisplayManager$WeakDisplayCache;,
        Landroid/hardware/display/DisplayManager$DisplayListener;,
        Landroid/hardware/display/DisplayManager$DeviceConfig;,
        Landroid/hardware/display/DisplayManager$BrightnessUnit;,
        Landroid/hardware/display/DisplayManager$PrivateEventType;,
        Landroid/hardware/display/DisplayManager$EventType;,
        Landroid/hardware/display/DisplayManager$ExternalDisplayConnection;,
        Landroid/hardware/display/DisplayManager$SwitchingType;,
        Landroid/hardware/display/DisplayManager$MatchContentFrameRateType;,
        Landroid/hardware/display/DisplayManager$VirtualDisplayFlag;
    }
.end annotation


# static fields
.field public static final greylist-max-r ACTION_WIFI_DISPLAY_STATUS_CHANGED:Ljava/lang/String; = "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

.field public static final blacklist BRIGHTNESS_UNIT_NITS:I = 0x2

.field public static final whitelist BRIGHTNESS_UNIT_PERCENTAGE:I = 0x1

.field static final greylist-max-o DEBUG:Z

.field public static final blacklist DISPLAY_CATEGORY_ALL_INCLUDING_DISABLED:Ljava/lang/String; = "android.hardware.display.category.ALL_INCLUDING_DISABLED"

.field public static final whitelist DISPLAY_CATEGORY_BUILT_IN_DISPLAYS:Ljava/lang/String; = "android.hardware.display.category.BUILT_IN_DISPLAYS"

.field public static final whitelist DISPLAY_CATEGORY_PRESENTATION:Ljava/lang/String; = "android.hardware.display.category.PRESENTATION"

.field public static final blacklist DISPLAY_CATEGORY_REAR:Ljava/lang/String; = "android.hardware.display.category.REAR"

.field private static final blacklist ENABLE_VIRTUAL_DISPLAY_REFRESH_RATE:Z = true

.field public static final whitelist EVENT_TYPE_DISPLAY_ADDED:J = 0x1L

.field public static final whitelist EVENT_TYPE_DISPLAY_BRIGHTNESS:J = 0x20L

.field public static final whitelist EVENT_TYPE_DISPLAY_CHANGED:J = 0x4L

.field public static final whitelist EVENT_TYPE_DISPLAY_REFRESH_RATE:J = 0x8L

.field public static final whitelist EVENT_TYPE_DISPLAY_REMOVED:J = 0x2L

.field public static final whitelist EVENT_TYPE_DISPLAY_STATE:J = 0x10L

.field public static final blacklist EXTERNAL_DISPLAY_CONNECTION_PREFERENCE_ASK:I = 0x0

.field public static final blacklist EXTERNAL_DISPLAY_CONNECTION_PREFERENCE_DESKTOP:I = 0x1

.field public static final blacklist EXTERNAL_DISPLAY_CONNECTION_PREFERENCE_MIRROR:I = 0x2

.field public static final greylist-max-r EXTRA_WIFI_DISPLAY_STATUS:Ljava/lang/String; = "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

.field public static final blacklist HDR_OUTPUT_CONTROL_FLAG:Ljava/lang/String; = "enable_hdr_output_control"

.field public static final whitelist MATCH_CONTENT_FRAMERATE_ALWAYS:I = 0x2

.field public static final whitelist MATCH_CONTENT_FRAMERATE_NEVER:I = 0x0

.field public static final whitelist MATCH_CONTENT_FRAMERATE_SEAMLESSS_ONLY:I = 0x1

.field public static final whitelist MATCH_CONTENT_FRAMERATE_UNKNOWN:I = -0x1

.field public static final blacklist PRIVATE_EVENT_TYPE_DISPLAY_COMMITTED_STATE_CHANGED:J = 0x4L

.field public static final blacklist PRIVATE_EVENT_TYPE_DISPLAY_CONNECTION_CHANGED:J = 0x2L

.field public static final blacklist PRIVATE_EVENT_TYPE_HDR_SDR_RATIO_CHANGED:J = 0x1L

.field public static final blacklist SWITCHING_TYPE_ACROSS_AND_WITHIN_GROUPS:I = 0x2

.field public static final blacklist SWITCHING_TYPE_NONE:I = 0x0

.field public static final blacklist SWITCHING_TYPE_RENDER_FRAME_RATE_ONLY:I = 0x3

.field public static final blacklist SWITCHING_TYPE_WITHIN_GROUPS:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "DisplayManager"

.field public static final blacklist VIRTUAL_DISPLAY_FLAG_ALWAYS_UNLOCKED:I = 0x1000

.field public static final whitelist VIRTUAL_DISPLAY_FLAG_AUTO_MIRROR:I = 0x10

.field public static final greylist-max-o VIRTUAL_DISPLAY_FLAG_CAN_SHOW_WITH_INSECURE_KEYGUARD:I = 0x20

.field public static final greylist-max-o VIRTUAL_DISPLAY_FLAG_DESTROY_CONTENT_ON_REMOVAL:I = 0x100

.field public static final blacklist VIRTUAL_DISPLAY_FLAG_DEVICE_DISPLAY_GROUP:I = 0x8000

.field public static final whitelist VIRTUAL_DISPLAY_FLAG_OWN_CONTENT_ONLY:I = 0x8

.field public static final blacklist VIRTUAL_DISPLAY_FLAG_OWN_DISPLAY_GROUP:I = 0x800

.field public static final blacklist VIRTUAL_DISPLAY_FLAG_OWN_FOCUS:I = 0x4000

.field public static final whitelist VIRTUAL_DISPLAY_FLAG_PRESENTATION:I = 0x2

.field public static final whitelist VIRTUAL_DISPLAY_FLAG_PUBLIC:I = 0x1

.field public static final whitelist VIRTUAL_DISPLAY_FLAG_ROTATES_WITH_CONTENT:I = 0x80
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist VIRTUAL_DISPLAY_FLAG_SECURE:I = 0x4

.field public static final blacklist VIRTUAL_DISPLAY_FLAG_SHOULD_SHOW_SYSTEM_DECORATIONS:I = 0x200

.field public static final whitelist VIRTUAL_DISPLAY_FLAG_STEAL_TOP_FOCUS_DISABLED:I = 0x10000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o VIRTUAL_DISPLAY_FLAG_SUPPORTS_TOUCH:I = 0x40

.field public static final blacklist VIRTUAL_DISPLAY_FLAG_TOUCH_FEEDBACK_DISABLED:I = 0x2000

.field public static final whitelist VIRTUAL_DISPLAY_FLAG_TRUSTED:I = 0x400
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private blacklist mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final blacklist mDisplayCache:Landroid/hardware/display/DisplayManager$WeakDisplayCache;

.field private blacklist mDisplayIdToMirror:I

.field private final greylist-max-o mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

.field private final greylist-max-o mLock:Ljava/lang/Object;


# direct methods
.method public static synthetic blacklist $r8$lambda$0oEBnf5MlJ63XG3Xyp_qO5VrFbw(Landroid/view/Display;)Z
    .registers 1

    invoke-static {p0}, Landroid/hardware/display/DisplayManager;->isBuiltInDisplay(Landroid/view/Display;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$F6SlQe9yX1OohndV6-ukqDL-L9I(Landroid/view/Display;)Z
    .registers 1

    invoke-static {p0}, Landroid/hardware/display/DisplayManager;->isPresentationDisplay(Landroid/view/Display;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$qqP-Le8zJzAr3Y5cQEW9VAoNXF4(Landroid/view/Display;)Z
    .registers 1

    invoke-static {p0}, Landroid/hardware/display/DisplayManager;->isRearDisplay(Landroid/view/Display;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 87
    const-string v0, "DisplayManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 88
    const-string v0, "DisplayManager_All"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    sput-boolean v0, Landroid/hardware/display/DisplayManager;->DEBUG:Z

    .line 87
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 4

    .line 797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/display/DisplayManager;->mLock:Ljava/lang/Object;

    .line 104
    new-instance v0, Landroid/hardware/display/DisplayManager$WeakDisplayCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/hardware/display/DisplayManager$WeakDisplayCache;-><init>(Landroid/hardware/display/DisplayManager-IA;)V

    iput-object v0, p0, Landroid/hardware/display/DisplayManager;->mDisplayCache:Landroid/hardware/display/DisplayManager$WeakDisplayCache;

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/display/DisplayManager;->mDisplayIdToMirror:I

    .line 798
    iput-object p1, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    .line 799
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    .line 800
    return-void
.end method

.method public static blacklist brightnessUnitToString(I)Ljava/lang/String;
    .registers 4

    .line 789
    packed-switch p0, :pswitch_data_22

    .line 792
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 791
    :pswitch_1c
    const-string p0, "nits"

    goto :goto_21

    .line 790
    :pswitch_1f
    const-string p0, "percentage"

    .line 789
    :goto_21
    return-object p0

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method public static whitelist createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;)Landroid/hardware/display/VirtualDisplay;
    .registers 9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1961
    nop

    .line 1962
    const-string v0, "display"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1961
    invoke-static {v0}, Landroid/hardware/display/IDisplayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/display/IDisplayManager;

    move-result-object v0

    .line 1963
    nop

    .line 1964
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1963
    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 1967
    new-instance v2, Landroid/hardware/display/VirtualDisplayConfig$Builder;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, p2, v3}, Landroid/hardware/display/VirtualDisplayConfig$Builder;-><init>(Ljava/lang/String;III)V

    .line 1969
    const/16 p0, 0x10

    invoke-virtual {v2, p0}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setFlags(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    move-result-object p0

    .line 1970
    invoke-virtual {p0, p3}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setDisplayIdToMirror(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    move-result-object p0

    .line 1971
    if-eqz p4, :cond_2b

    .line 1972
    invoke-virtual {p0, p4}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setSurface(Landroid/view/Surface;)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 1974
    :cond_2b
    invoke-virtual {p0}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->build()Landroid/hardware/display/VirtualDisplayConfig;

    move-result-object p0

    .line 1978
    :try_start_2f
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_37} :catch_59

    .line 1981
    nop

    .line 1987
    const/4 p2, 0x0

    if-nez p1, :cond_3d

    move-object p1, p2

    goto :goto_40

    :cond_3d
    const/4 p3, 0x0

    aget-object p1, p1, p3

    .line 1989
    :goto_40
    new-instance p3, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;

    invoke-direct {p3, p2, p2}, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;-><init>(Landroid/hardware/display/VirtualDisplay$Callback;Ljava/util/concurrent/Executor;)V

    .line 1992
    :try_start_45
    invoke-interface {v0, p0, p3, p2, p1}, Landroid/hardware/display/IDisplayManager;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;Ljava/lang/String;)I

    move-result p1
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_49} :catch_53

    .line 1996
    nop

    .line 1997
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object p2

    invoke-virtual {p2, p0, p3, p1}, Landroid/hardware/display/DisplayManagerGlobal;->createVirtualDisplayWrapper(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object p0

    return-object p0

    .line 1994
    :catch_53
    move-exception p0

    .line 1995
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 1979
    :catch_59
    move-exception p0

    .line 1980
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private blacklist getAmbientDisplayConfiguration()Landroid/hardware/display/AmbientDisplayConfiguration;
    .registers 3

    .line 1938
    monitor-enter p0

    .line 1939
    :try_start_1
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    if-nez v0, :cond_e

    .line 1940
    new-instance v0, Landroid/hardware/display/AmbientDisplayConfiguration;

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/hardware/display/DisplayManager;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 1942
    :cond_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    .line 1943
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-object v0

    .line 1942
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private blacklist getDisplayIdToMirror()I
    .registers 3

    .line 2058
    iget v0, p0, Landroid/hardware/display/DisplayManager;->mDisplayIdToMirror:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1d

    .line 2059
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 2060
    invoke-virtual {v0}, Landroid/os/UserManager;->isVisibleBackgroundUsersSupported()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2061
    invoke-virtual {v0}, Landroid/os/UserManager;->getMainDisplayIdAssignedToUser()I

    move-result v0

    goto :goto_1b

    .line 2062
    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    iput v0, p0, Landroid/hardware/display/DisplayManager;->mDisplayIdToMirror:I

    .line 2064
    :cond_1d
    iget v0, p0, Landroid/hardware/display/DisplayManager;->mDisplayIdToMirror:I

    return v0
.end method

.method private blacklist getDisplays([ILjava/util/function/Predicate;)[Landroid/view/Display;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/function/Predicate<",
            "Landroid/view/Display;",
            ">;)[",
            "Landroid/view/Display;"
        }
    .end annotation

    .line 868
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 869
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_1c

    aget v3, p1, v2

    .line 870
    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Landroid/hardware/display/DisplayManager;->getOrCreateDisplay(IZ)Landroid/view/Display;

    move-result-object v3

    .line 871
    invoke-interface {p2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 872
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 869
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 875
    :cond_1c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroid/view/Display;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/Display;

    return-object p1
.end method

.method private blacklist getOrCreateDisplay(IZ)Landroid/view/Display;
    .registers 6

    .line 910
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 911
    :try_start_3
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mDisplayCache:Landroid/hardware/display/DisplayManager$WeakDisplayCache;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager$WeakDisplayCache;->get(I)Landroid/view/Display;

    move-result-object v1

    .line 912
    const/4 v2, 0x0

    if-nez v1, :cond_2a

    .line 915
    iget-object p2, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getDisplayId()I

    move-result p2

    if-ne p2, p1, :cond_1b

    .line 916
    iget-object p2, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    goto :goto_1c

    :cond_1b
    nop

    .line 918
    :goto_1c
    iget-object p2, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {p2, p1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v1

    .line 919
    if-eqz v1, :cond_29

    .line 920
    iget-object p1, p0, Landroid/hardware/display/DisplayManager;->mDisplayCache:Landroid/hardware/display/DisplayManager$WeakDisplayCache;

    invoke-virtual {p1, v1}, Landroid/hardware/display/DisplayManager$WeakDisplayCache;->put(Landroid/view/Display;)V

    .line 922
    :cond_29
    goto :goto_33

    :cond_2a
    if-nez p2, :cond_29

    invoke-virtual {v1}, Landroid/view/Display;->isValid()Z

    move-result p1

    if-nez p1, :cond_29

    .line 923
    move-object v1, v2

    .line 925
    :goto_33
    monitor-exit v0

    .line 926
    return-object v1

    .line 925
    :catchall_35
    move-exception p1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw p1
.end method

.method private static blacklist isBuiltInDisplay(Landroid/view/Display;)Z
    .registers 3

    .line 879
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 880
    return v0

    .line 882
    :cond_4
    invoke-virtual {p0}, Landroid/view/Display;->getType()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_c

    move v0, v1

    :cond_c
    return v0
.end method

.method private static blacklist isPresentationDisplay(Landroid/view/Display;)Z
    .registers 3

    .line 886
    const/4 v0, 0x0

    if-eqz p0, :cond_1c

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    if-eqz v1, :cond_1c

    .line 887
    invoke-virtual {p0}, Landroid/view/Display;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_12

    goto :goto_1c

    .line 890
    :cond_12
    invoke-virtual {p0}, Landroid/view/Display;->getType()I

    move-result p0

    packed-switch p0, :pswitch_data_1e

    .line 898
    return v0

    .line 896
    :pswitch_1a
    const/4 p0, 0x1

    return p0

    .line 888
    :cond_1c
    :goto_1c
    return v0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method

.method private static blacklist isRearDisplay(Landroid/view/Display;)Z
    .registers 3

    .line 903
    if-eqz p0, :cond_18

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_18

    .line 904
    invoke-virtual {p0}, Landroid/view/Display;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 905
    invoke-virtual {p0}, Landroid/view/Display;->getFlags()I

    move-result p0

    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 903
    :goto_19
    return v1
.end method

.method private blacklist registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;JJLjava/lang/String;Z)V
    .registers 11

    .line 1031
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    .line 1032
    invoke-virtual {v1, p3, p4, p5, p6}, Landroid/hardware/display/DisplayManagerGlobal;->mapFiltersToInternalEventFlag(JJ)J

    move-result-wide p3

    .line 1031
    move-object p5, p7

    move p6, p8

    move-object p0, v0

    invoke-virtual/range {p0 .. p6}, Landroid/hardware/display/DisplayManagerGlobal;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;JLjava/lang/String;Z)V

    .line 1034
    return-void
.end method

.method private blacklist registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Ljava/util/concurrent/Executor;JJLjava/lang/String;Z)V
    .registers 11

    .line 1040
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    .line 1041
    invoke-virtual {v1, p3, p4, p5, p6}, Landroid/hardware/display/DisplayManagerGlobal;->mapFiltersToInternalEventFlag(JJ)J

    move-result-wide p3

    .line 1040
    move-object p5, p7

    move p6, p8

    move-object p0, v0

    invoke-virtual/range {p0 .. p6}, Landroid/hardware/display/DisplayManagerGlobal;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Ljava/util/concurrent/Executor;JLjava/lang/String;Z)V

    .line 1043
    return-void
.end method

.method private blacklist shouldIncludeDisabledDisplays(Ljava/lang/String;)Z
    .registers 4

    .line 858
    const-string v0, "android.hardware.display.category.BUILT_IN_DISPLAYS"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 859
    return v1

    .line 861
    :cond_a
    const-string v0, "android.hardware.display.category.ALL_INCLUDING_DISABLED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 862
    return v1

    .line 864
    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method private blacklist toMatchContentFrameRateSetting(I)I
    .registers 3

    .line 1923
    packed-switch p1, :pswitch_data_24

    .line 1932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is not a valid value of switching type."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DisplayManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    const/4 p1, -0x1

    return p1

    .line 1930
    :pswitch_1d
    const/4 p1, 0x2

    return p1

    .line 1928
    :pswitch_1f
    const/4 p1, 0x1

    return p1

    .line 1925
    :pswitch_21
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_21
        :pswitch_1f
        :pswitch_1d
        :pswitch_1f
    .end packed-switch
.end method


# virtual methods
.method public blacklist areUserDisabledHdrTypesAllowed()Z
    .registers 2

    .line 1248
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->areUserDisabledHdrTypesAllowed()Z

    move-result v0

    return v0
.end method

.method public blacklist clearGlobalUserPreferredDisplayMode()V
    .registers 4

    .line 1756
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->setUserPreferredDisplayMode(ILandroid/view/Display$Mode;)V

    .line 1757
    return-void
.end method

.method public greylist connectWifiDisplay(Ljava/lang/String;)V
    .registers 3

    .line 1101
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->connectWifiDisplay(Ljava/lang/String;)V

    .line 1102
    return-void
.end method

.method public whitelist createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;)Landroid/hardware/display/VirtualDisplay;
    .registers 3

    .line 1377
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/os/Handler;Landroid/hardware/display/VirtualDisplay$Callback;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    return-object p1
.end method

.method public whitelist createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/os/Handler;Landroid/hardware/display/VirtualDisplay$Callback;)Landroid/hardware/display/VirtualDisplay;
    .registers 5

    .line 1419
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p3, p2}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Landroid/media/projection/MediaProjection;Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    return-object p1
.end method

.method public blacklist createVirtualDisplay(Landroid/media/projection/MediaProjection;Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;
    .registers 12

    .line 1452
    nop

    .line 1455
    if-eqz p3, :cond_19

    .line 1456
    new-instance v0, Landroid/os/HandlerExecutor;

    .line 1457
    if-eqz p4, :cond_c

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p4

    goto :goto_10

    :cond_c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p4

    :goto_10
    invoke-static {p4}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p4

    invoke-direct {v0, p4}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    move-object v6, v0

    goto :goto_1b

    .line 1455
    :cond_19
    const/4 v0, 0x0

    move-object v6, v0

    .line 1459
    :goto_1b
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/display/DisplayManagerGlobal;->createVirtualDisplay(Landroid/content/Context;Landroid/media/projection/MediaProjection;Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/VirtualDisplay$Callback;Ljava/util/concurrent/Executor;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o createVirtualDisplay(Landroid/media/projection/MediaProjection;Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;Ljava/lang/String;)Landroid/hardware/display/VirtualDisplay;
    .registers 12

    .line 1435
    new-instance v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/hardware/display/VirtualDisplayConfig$Builder;-><init>(Ljava/lang/String;III)V

    .line 1437
    invoke-virtual {v0, p7}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setFlags(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 1438
    if-eqz p10, :cond_d

    .line 1439
    invoke-virtual {v0, p10}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setUniqueId(Ljava/lang/String;)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 1441
    :cond_d
    if-eqz p6, :cond_12

    .line 1442
    invoke-virtual {v0, p6}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setSurface(Landroid/view/Surface;)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 1444
    :cond_12
    invoke-direct {p0}, Landroid/hardware/display/DisplayManager;->getDisplayIdToMirror()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setDisplayIdToMirror(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 1445
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->build()Landroid/hardware/display/VirtualDisplayConfig;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p8, p9}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Landroid/media/projection/MediaProjection;Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    return-object p1
.end method

.method public whitelist createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;
    .registers 16

    .line 1306
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v8}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    return-object p1
.end method

.method public whitelist createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;
    .registers 10

    .line 1360
    new-instance v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/hardware/display/VirtualDisplayConfig$Builder;-><init>(Ljava/lang/String;III)V

    .line 1362
    invoke-virtual {v0, p6}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setFlags(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 1363
    if-eqz p5, :cond_d

    .line 1364
    invoke-virtual {v0, p5}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setSurface(Landroid/view/Surface;)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 1366
    :cond_d
    invoke-direct {p0}, Landroid/hardware/display/DisplayManager;->getDisplayIdToMirror()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setDisplayIdToMirror(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 1367
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->build()Landroid/hardware/display/VirtualDisplayConfig;

    move-result-object p1

    invoke-virtual {p0, p1, p8, p7}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/os/Handler;Landroid/hardware/display/VirtualDisplay$Callback;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    return-object p1
.end method

.method public blacklist disableConnectedDisplay(I)V
    .registers 3

    .line 1191
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->disableConnectedDisplay(I)V

    .line 1192
    return-void
.end method

.method public greylist disconnectWifiDisplay()V
    .registers 2

    .line 1123
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->disconnectWifiDisplay()V

    .line 1124
    return-void
.end method

.method public blacklist enableConnectedDisplay(I)V
    .registers 3

    .line 1181
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->enableConnectedDisplay(I)V

    .line 1182
    return-void
.end method

.method public greylist forgetWifiDisplay(Ljava/lang/String;)V
    .registers 3

    .line 1159
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->forgetWifiDisplay(Ljava/lang/String;)V

    .line 1160
    return-void
.end method

.method public whitelist getAmbientBrightnessStats()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;"
        }
    .end annotation

    .line 1495
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getAmbientBrightnessStats()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBrightness(I)F
    .registers 3

    .line 1657
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getBrightness(I)F

    move-result p1

    return p1
.end method

.method public whitelist getBrightness(II)F
    .registers 4

    .line 1667
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->getBrightness(II)F

    move-result p1

    return p1
.end method

.method public whitelist getBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1558
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getBrightnessConfigurationForUser(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBrightnessConfigurationForDisplay(Ljava/lang/String;)Landroid/hardware/display/BrightnessConfiguration;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1534
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getBrightnessConfigurationForDisplay(Ljava/lang/String;I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o getBrightnessConfigurationForUser(I)Landroid/hardware/display/BrightnessConfiguration;
    .registers 3

    .line 1571
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getBrightnessConfigurationForUser(I)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getBrightnessEvents()Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/display/BrightnessChangeEvent;",
            ">;"
        }
    .end annotation

    .line 1484
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getBrightnessEvents(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1584
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDefaultDozeBrightness(I)F
    .registers 3

    .line 2054
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getDefaultDozeBrightness(I)F

    move-result p1

    return p1
.end method

.method public whitelist getDisplay(I)Landroid/view/Display;
    .registers 3

    .line 812
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/hardware/display/DisplayManager;->getOrCreateDisplay(IZ)Landroid/view/Display;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getDisplayTopology()Landroid/hardware/display/DisplayTopology;
    .registers 2

    .line 2074
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayTopology()Landroid/hardware/display/DisplayTopology;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDisplays()[Landroid/view/Display;
    .registers 2

    .line 821
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDisplays(Ljava/lang/String;)[Landroid/view/Display;
    .registers 4

    .line 841
    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManager;->shouldIncludeDisabledDisplays(Ljava/lang/String;)Z

    move-result v0

    .line 842
    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds(Z)[I

    move-result-object v0

    .line 843
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/display/feature/flags/Flags;->displayCategoryBuiltIn()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 844
    const-string v1, "android.hardware.display.category.BUILT_IN_DISPLAYS"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 845
    new-instance p1, Landroid/hardware/display/DisplayManager$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Landroid/hardware/display/DisplayManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplays([ILjava/util/function/Predicate;)[Landroid/view/Display;

    move-result-object p1

    .line 846
    return-object p1

    .line 847
    :cond_22
    const-string v1, "android.hardware.display.category.PRESENTATION"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 848
    new-instance p1, Landroid/hardware/display/DisplayManager$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Landroid/hardware/display/DisplayManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplays([ILjava/util/function/Predicate;)[Landroid/view/Display;

    move-result-object p1

    return-object p1

    .line 849
    :cond_34
    const-string v1, "android.hardware.display.category.REAR"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 850
    new-instance p1, Landroid/hardware/display/DisplayManager$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Landroid/hardware/display/DisplayManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplays([ILjava/util/function/Predicate;)[Landroid/view/Display;

    move-result-object p1

    return-object p1

    .line 851
    :cond_46
    if-eqz p1, :cond_55

    const-string v1, "android.hardware.display.category.ALL_INCLUDING_DISABLED"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_51

    goto :goto_55

    .line 854
    :cond_51
    const/4 p1, 0x0

    new-array p1, p1, [Landroid/view/Display;

    return-object p1

    .line 852
    :cond_55
    :goto_55
    new-instance p1, Landroid/hardware/display/DisplayManager$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Landroid/hardware/display/DisplayManager$$ExternalSyntheticLambda3;-><init>()V

    invoke-direct {p0, v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplays([ILjava/util/function/Predicate;)[Landroid/view/Display;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getDozeBrightnessSensorValueToBrightness(I)[F
    .registers 3

    .line 2035
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getDozeBrightnessSensorValueToBrightness(I)[F

    move-result-object p1

    return-object p1
.end method

.method public blacklist getExternalDisplayConnectionPreference(Ljava/lang/String;)I
    .registers 3

    .line 1723
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getExternalDisplayConnectionPreference(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public blacklist getGlobalUserPreferredDisplayMode()Landroid/view/Display$Mode;
    .registers 3

    .line 1768
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getUserPreferredDisplayMode(I)Landroid/view/Display$Mode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHdrConversionMode()Landroid/hardware/display/HdrConversionMode;
    .registers 2

    .line 1807
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getHdrConversionMode()Landroid/hardware/display/HdrConversionMode;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getHdrConversionModeSetting()Landroid/hardware/display/HdrConversionMode;
    .registers 2

    .line 1824
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getHdrConversionModeSetting()Landroid/hardware/display/HdrConversionMode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMatchContentFrameRateUserPreference()I
    .registers 2

    .line 1918
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getRefreshRateSwitchingType()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/hardware/display/DisplayManager;->toMatchContentFrameRateSetting(I)I

    move-result v0

    return v0
.end method

.method public whitelist getMinimumBrightnessCurve()Landroid/util/Pair;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 1698
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getMinimumBrightnessCurve()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getStableDisplaySize()Landroid/graphics/Point;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1474
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getStableDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSupportedHdrOutputTypes()[I
    .registers 2

    .line 1837
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getSupportedHdrOutputTypes()[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUserDisabledHdrTypes()[I
    .registers 2

    .line 1258
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getUserDisabledHdrTypes()[I

    move-result-object v0

    return-object v0
.end method

.method public greylist getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;
    .registers 2

    .line 1172
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isAlwaysOnDisplayCurrentlyAvailable()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1872
    invoke-direct {p0}, Landroid/hardware/display/DisplayManager;->getAmbientDisplayConfiguration()Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnAvailableForUser(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isMinimalPostProcessingRequested(I)Z
    .registers 3

    .line 1595
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->isMinimalPostProcessingRequested(I)Z

    move-result p1

    return p1
.end method

.method public blacklist overrideHdrTypes(I[I)V
    .registers 4

    .line 1291
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->overrideHdrTypes(I[I)V

    .line 1292
    return-void
.end method

.method public greylist pauseWifiDisplay()V
    .registers 2

    .line 1107
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->pauseWifiDisplay()V

    .line 1108
    return-void
.end method

.method public whitelist registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    .registers 12

    .line 949
    nop

    .line 952
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v7

    .line 949
    const-wide/16 v3, 0x7

    const-wide/16 v5, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;JJLjava/lang/String;Z)V

    .line 953
    return-void
.end method

.method public blacklist registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V
    .registers 14

    .line 970
    nop

    .line 971
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v7

    .line 970
    const-wide/16 v5, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v8}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;JJLjava/lang/String;Z)V

    .line 972
    return-void
.end method

.method public blacklist registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;JJ)V
    .registers 16

    .line 1010
    nop

    .line 1011
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1010
    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v8}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;JJLjava/lang/String;Z)V

    .line 1012
    return-void
.end method

.method public whitelist registerDisplayListener(Ljava/util/concurrent/Executor;JLandroid/hardware/display/DisplayManager$DisplayListener;)V
    .registers 14

    .line 988
    nop

    .line 989
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v7

    .line 988
    const-wide/16 v5, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v1, p4

    invoke-direct/range {v0 .. v8}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Ljava/util/concurrent/Executor;JJLjava/lang/String;Z)V

    .line 990
    return-void
.end method

.method public whitelist registerTopologyListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/display/DisplayTopology;",
            ">;)V"
        }
    .end annotation

    .line 2096
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/hardware/display/DisplayManagerGlobal;->registerTopologyListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;Ljava/lang/String;)V

    .line 2097
    return-void
.end method

.method public greylist renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1143
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    return-void
.end method

.method public blacklist requestDisplayModes(I[I)V
    .registers 4

    .line 2011
    if-eqz p2, :cond_e

    array-length v0, p2

    if-eqz v0, :cond_6

    goto :goto_e

    .line 2012
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "requestDisplayModes: modesIds can\'t be empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2014
    :cond_e
    :goto_e
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->requestDisplayModes(I[I)V

    .line 2015
    return-void
.end method

.method public blacklist resetImplicitRefreshRateCallbackStatus()V
    .registers 2

    .line 1280
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->resetImplicitRefreshRateCallbackStatus()V

    .line 1281
    return-void
.end method

.method public greylist resumeWifiDisplay()V
    .registers 2

    .line 1113
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->resumeWifiDisplay()V

    .line 1114
    return-void
.end method

.method public blacklist setAreUserDisabledHdrTypesAllowed(Z)V
    .registers 3

    .line 1237
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setAreUserDisabledHdrTypesAllowed(Z)V

    .line 1238
    return-void
.end method

.method public blacklist setBrightness(IF)V
    .registers 4

    .line 1627
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->setBrightness(IF)V

    .line 1628
    return-void
.end method

.method public whitelist setBrightness(IFI)V
    .registers 5

    .line 1639
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/display/DisplayManagerGlobal;->setBrightness(IFI)V

    .line 1640
    return-void
.end method

.method public whitelist setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1506
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/hardware/display/DisplayManager;->setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V

    .line 1507
    return-void
.end method

.method public whitelist setBrightnessConfigurationForDisplay(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1519
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    iget-object v1, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iget-object v2, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    .line 1520
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1519
    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->setBrightnessConfigurationForDisplay(Landroid/hardware/display/BrightnessConfiguration;Ljava/lang/String;ILjava/lang/String;)V

    .line 1521
    return-void
.end method

.method public greylist-max-o setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V
    .registers 5

    .line 1547
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/display/DisplayManagerGlobal;->setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;)V

    .line 1548
    return-void
.end method

.method public blacklist setDisplayTopology(Landroid/hardware/display/DisplayTopology;)V
    .registers 3

    .line 2085
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setDisplayTopology(Landroid/hardware/display/DisplayTopology;)V

    .line 2086
    return-void
.end method

.method public blacklist setExternalDisplayConnectionPreference(Ljava/lang/String;I)V
    .registers 4

    .line 1711
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->setExternalDisplayConnectionPreference(Ljava/lang/String;I)V

    .line 1712
    return-void
.end method

.method public blacklist setGlobalUserPreferredDisplayMode(Landroid/view/Display$Mode;)V
    .registers 5

    .line 1742
    new-instance v0, Landroid/view/Display$Mode;

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    .line 1743
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Landroid/view/Display$Mode;-><init>(IIF)V

    .line 1744
    iget-object p1, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/hardware/display/DisplayManagerGlobal;->setUserPreferredDisplayMode(ILandroid/view/Display$Mode;)V

    .line 1745
    return-void
.end method

.method public blacklist setHdrConversionMode(Landroid/hardware/display/HdrConversionMode;)V
    .registers 3

    .line 1792
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setHdrConversionMode(Landroid/hardware/display/HdrConversionMode;)V

    .line 1793
    return-void
.end method

.method public blacklist setRefreshRateSwitchingType(I)V
    .registers 3

    .line 1900
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setRefreshRateSwitchingType(I)V

    .line 1901
    return-void
.end method

.method public whitelist setSaturationLevel(F)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1206
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_20

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_20

    .line 1209
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/ColorDisplayManager;

    .line 1210
    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/hardware/display/ColorDisplayManager;->setSaturationLevel(I)Z

    .line 1211
    return-void

    .line 1207
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Saturation level must be between 0 and 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist setShouldAlwaysRespectAppRequestedMode(Z)V
    .registers 3

    .line 1849
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setShouldAlwaysRespectAppRequestedMode(Z)V

    .line 1850
    return-void
.end method

.method public greylist-max-o setTemporaryAutoBrightnessAdjustment(F)V
    .registers 3

    .line 1682
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setTemporaryAutoBrightnessAdjustment(F)V

    .line 1683
    return-void
.end method

.method public blacklist setTemporaryBrightness(IF)V
    .registers 4

    .line 1609
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/display/DisplayManagerGlobal;->setTemporaryBrightness(IF)V

    .line 1610
    return-void
.end method

.method public blacklist setUserDisabledHdrTypes([I)V
    .registers 3

    .line 1221
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->setUserDisabledHdrTypes([I)V

    .line 1222
    return-void
.end method

.method public blacklist shouldAlwaysRespectAppRequestedMode()Z
    .registers 2

    .line 1861
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->shouldAlwaysRespectAppRequestedMode()Z

    move-result v0

    return v0
.end method

.method public greylist startWifiDisplayScan()V
    .registers 2

    .line 1070
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->startWifiDisplayScan()V

    .line 1071
    return-void
.end method

.method public greylist stopWifiDisplayScan()V
    .registers 2

    .line 1083
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerGlobal;->stopWifiDisplayScan()V

    .line 1084
    return-void
.end method

.method public blacklist supportsSeamlessRefreshRateSwitching()Z
    .registers 3

    .line 1887
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110298

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public whitelist unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V
    .registers 3

    .line 1053
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 1054
    return-void
.end method

.method public whitelist unregisterTopologyListener(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/display/DisplayTopology;",
            ">;)V"
        }
    .end annotation

    .line 2105
    iget-object v0, p0, Landroid/hardware/display/DisplayManager;->mGlobal:Landroid/hardware/display/DisplayManagerGlobal;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->unregisterTopologyListener(Ljava/util/function/Consumer;)V

    .line 2106
    return-void
.end method
