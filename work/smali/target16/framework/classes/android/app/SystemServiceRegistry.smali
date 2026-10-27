.class public final Landroid/app/SystemServiceRegistry;
.super Ljava/lang/Object;
.source "SystemServiceRegistry.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SystemServiceRegistry$ServiceFetcher;,
        Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;,
        Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder;,
        Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;,
        Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;,
        Landroid/app/SystemServiceRegistry$StaticServiceFetcher;,
        Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
    }
.end annotation


# static fields
.field static final blacklist NULL_GAME_MANAGER_IN_WEAR:J = 0x14522cc9L

.field private static final blacklist SYSTEM_SERVICE_CLASS_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SYSTEM_SERVICE_FETCHERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/SystemServiceRegistry$ServiceFetcher<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final blacklist SYSTEM_SERVICE_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "SystemServiceRegistry"

.field public static blacklist sEnableServiceNotFoundWtf:Z

.field private static volatile blacklist sInitializing:Z

.field private static blacklist sServiceCacheSize:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsServiceCacheSize()I
    .registers 1

    sget v0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsServiceCacheSize(I)V
    .registers 1

    sput p0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smisChooserManagerSupported(Landroid/app/ContextImpl;)Z
    .registers 1

    invoke-static {p0}, Landroid/app/SystemServiceRegistry;->isChooserManagerSupported(Landroid/app/ContextImpl;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 330
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    .line 344
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/Map;

    .line 346
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/Map;

    .line 348
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_CLASS_NAMES:Ljava/util/Map;

    .line 358
    invoke-static {}, Landroid/app/SystemServiceRegistry;->registerServices()V

    .line 359
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createServiceCache()[Ljava/lang/Object;
    .registers 1

    .line 2027
    sget v0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method

.method private static blacklist ensureInitializing(Ljava/lang/String;)V
    .registers 3

    .line 2018
    sget-boolean v0, Landroid/app/SystemServiceRegistry;->sInitializing:Z

    const-string v1, "Internal error: %s can only be called during class initialization."

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2020
    return-void
.end method

.method public static blacklist getSystemService(Landroid/app/ContextImpl;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    .line 2058
    invoke-static {p1}, Landroid/app/SystemServiceRegistry;->getSystemServiceFetcher(Ljava/lang/String;)Landroid/app/SystemServiceRegistry$ServiceFetcher;

    move-result-object v0

    .line 2059
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2060
    return-object v1

    .line 2063
    :cond_8
    invoke-interface {v0, p0}, Landroid/app/SystemServiceRegistry$ServiceFetcher;->getService(Landroid/app/ContextImpl;)Ljava/lang/Object;

    move-result-object v0

    .line 2064
    sget-boolean v2, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    if-eqz v2, :cond_104

    if-nez v0, :cond_104

    .line 2066
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_106

    :cond_19
    goto/16 :goto_9f

    :sswitch_1b
    const-string/jumbo v0, "vcn_management"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x7

    goto/16 :goto_a0

    :sswitch_27
    const-string/jumbo v0, "wifiaware"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v0, 0xb

    goto/16 :goto_a0

    :sswitch_34
    const-string v0, "incremental"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x2

    goto :goto_a0

    :sswitch_3e
    const-string/jumbo v0, "textservices"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v0, 0xa

    goto :goto_a0

    :sswitch_4a
    const-string v0, "content_capture"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    goto :goto_a0

    :sswitch_54
    const-string/jumbo v0, "virtualdevice"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x6

    goto :goto_a0

    :sswitch_5f
    const-string v0, "contexthub"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x4

    goto :goto_a0

    :sswitch_69
    const-string/jumbo v0, "virtualization"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x5

    goto :goto_a0

    :sswitch_74
    const-string v0, "app_prediction"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_a0

    :sswitch_7e
    const-string/jumbo v0, "search"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v0, 0x8

    goto :goto_a0

    :sswitch_8a
    const-string v0, "ethernet"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x3

    goto :goto_a0

    :sswitch_94
    const-string v0, "appwidget"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v0, 0x9

    goto :goto_a0

    :goto_9f
    const/4 v0, -0x1

    :goto_a0
    const-string v2, "android.hardware.type.watch"

    packed-switch v0, :pswitch_data_138

    goto :goto_d6

    .line 2099
    :pswitch_a6
    const-string v0, "android.hardware.wifi.aware"

    invoke-static {p0, v0}, Landroid/app/SystemServiceRegistry;->hasSystemFeatureOpportunistic(Landroid/app/ContextImpl;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d6

    .line 2100
    return-object v1

    .line 2093
    :pswitch_af
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/server/Flags;->removeTextService()Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 2094
    invoke-static {p0, v2}, Landroid/app/SystemServiceRegistry;->hasSystemFeatureOpportunistic(Landroid/app/ContextImpl;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 2095
    return-object v1

    .line 2088
    :pswitch_bc
    const-string v0, "android.software.app_widgets"

    invoke-static {p0, v0}, Landroid/app/SystemServiceRegistry;->hasSystemFeatureOpportunistic(Landroid/app/ContextImpl;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d6

    .line 2089
    return-object v1

    .line 2083
    :pswitch_c5
    invoke-static {p0, v2}, Landroid/app/SystemServiceRegistry;->hasSystemFeatureOpportunistic(Landroid/app/ContextImpl;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 2084
    return-object v1

    .line 2076
    :pswitch_cc
    const-string v0, "android.hardware.telephony.subscription"

    invoke-static {p0, v0}, Landroid/app/SystemServiceRegistry;->hasSystemFeatureOpportunistic(Landroid/app/ContextImpl;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d6

    .line 2078
    return-object v1

    .line 2074
    :pswitch_d5
    return-object v1

    .line 2106
    :cond_d6
    :goto_d6
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/Flags;->interactiveChooser()Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 2107
    const-string v0, "chooser"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_eb

    invoke-static {p0}, Landroid/app/SystemServiceRegistry;->isChooserManagerSupported(Landroid/app/ContextImpl;)Z

    move-result p0

    if-nez p0, :cond_eb

    .line 2108
    return-object v1

    .line 2111
    :cond_eb
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Manager wrapper not available: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SystemServiceRegistry"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    return-object v1

    .line 2114
    :cond_104
    return-object v0

    nop

    :sswitch_data_106
    .sparse-switch
        -0x69cd085b -> :sswitch_94
        -0x5499b029 -> :sswitch_8a
        -0x36059a58 -> :sswitch_7e
        -0x2dd60a93 -> :sswitch_74
        0x35db2f9 -> :sswitch_69
        0x1051cce6 -> :sswitch_5f
        0x38858921 -> :sswitch_54
        0x3a1b1980 -> :sswitch_4a
        0x3e5dd88b -> :sswitch_3e
        0x40b177da -> :sswitch_34
        0x53a1f069 -> :sswitch_27
        0x7cd04fe1 -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_138
    .packed-switch 0x0
        :pswitch_d5
        :pswitch_d5
        :pswitch_d5
        :pswitch_d5
        :pswitch_d5
        :pswitch_d5
        :pswitch_d5
        :pswitch_cc
        :pswitch_c5
        :pswitch_bc
        :pswitch_af
        :pswitch_a6
    .end packed-switch
.end method

.method public static blacklist getSystemServiceClassName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 2202
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_CLASS_NAMES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static blacklist getSystemServiceFetcher(Ljava/lang/String;)Landroid/app/SystemServiceRegistry$ServiceFetcher;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/SystemServiceRegistry$ServiceFetcher<",
            "*>;"
        }
    .end annotation

    .line 2032
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 2033
    return-object v0

    .line 2035
    :cond_4
    sget-object v1, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SystemServiceRegistry$ServiceFetcher;

    .line 2036
    if-nez v1, :cond_2b

    .line 2037
    sget-boolean v1, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    if-eqz v1, :cond_2a

    .line 2038
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown manager requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SystemServiceRegistry"

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    :cond_2a
    return-object v0

    .line 2042
    :cond_2b
    return-object v1
.end method

.method public static blacklist getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2153
    if-nez p0, :cond_4

    .line 2154
    const/4 p0, 0x0

    return-object p0

    .line 2156
    :cond_4
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2157
    sget-boolean v1, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    if-eqz v1, :cond_2e

    if-nez v0, :cond_2e

    .line 2159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown manager requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SystemServiceRegistry"

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    :cond_2e
    return-object v0
.end method

.method public static blacklist getSystemServiceWithNoContext(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 2134
    invoke-static {p0}, Landroid/app/SystemServiceRegistry;->getSystemServiceFetcher(Ljava/lang/String;)Landroid/app/SystemServiceRegistry$ServiceFetcher;

    move-result-object v0

    .line 2135
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2136
    return-object v1

    .line 2139
    :cond_8
    invoke-interface {v0}, Landroid/app/SystemServiceRegistry$ServiceFetcher;->supportsFetchWithoutContext()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2144
    invoke-interface {v0, v1}, Landroid/app/SystemServiceRegistry$ServiceFetcher;->getService(Landroid/app/ContextImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 2140
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Manager cannot be fetched without a context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist hasSystemFeatureOpportunistic(Landroid/app/ContextImpl;Ljava/lang/String;)Z
    .registers 2

    .line 2047
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 2048
    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 2049
    :cond_8
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static blacklist isChooserManagerSupported(Landroid/app/ContextImpl;)Z
    .registers 3

    .line 2118
    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 2119
    const/4 v0, 0x1

    if-nez p0, :cond_8

    .line 2120
    return v0

    .line 2122
    :cond_8
    const-string v1, "android.hardware.type.watch"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 2123
    const-string v1, "android.software.leanback"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 2124
    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_21

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    .line 2122
    :goto_22
    return v0
.end method

.method public static blacklist onServiceNotFound(Landroid/os/ServiceManager$ServiceNotFoundException;)V
    .registers 4

    .line 2645
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x2710

    const-string v2, "SystemServiceRegistry"

    if-ge v0, v1, :cond_12

    .line 2646
    invoke-virtual {p0}, Landroid/os/ServiceManager$ServiceNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_19

    .line 2648
    :cond_12
    invoke-virtual {p0}, Landroid/os/ServiceManager$ServiceNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2650
    :goto_19
    return-void
.end method

.method public static whitelist registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TServiceClass:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TTServiceClass;>;",
            "Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder<",
            "TTServiceClass;>;)V"
        }
    .end annotation

    .line 2406
    const-string/jumbo v0, "registerContextAwareService"

    invoke-static {v0}, Landroid/app/SystemServiceRegistry;->ensureInitializing(Ljava/lang/String;)V

    .line 2407
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2408
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2409
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2411
    new-instance v0, Landroid/app/SystemServiceRegistry$156;

    invoke-direct {v0, p2, p0}, Landroid/app/SystemServiceRegistry$156;-><init>(Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2420
    return-void
.end method

.method public static whitelist registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TServiceClass:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TTServiceClass;>;",
            "Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder<",
            "TTServiceClass;>;)V"
        }
    .end annotation

    .line 2434
    const-string/jumbo v0, "registerContextAwareService"

    invoke-static {v0}, Landroid/app/SystemServiceRegistry;->ensureInitializing(Ljava/lang/String;)V

    .line 2435
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2436
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2437
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2439
    new-instance v0, Landroid/app/SystemServiceRegistry$157;

    invoke-direct {v0, p2}, Landroid/app/SystemServiceRegistry$157;-><init>(Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    invoke-static {p0, p1, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2445
    return-void
.end method

.method public static blacklist registerForeverStaticService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TServiceClass:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TTServiceClass;>;",
            "Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder<",
            "TTServiceClass;>;)V"
        }
    .end annotation

    .line 2344
    const-string/jumbo v0, "registerStaticService"

    invoke-static {v0}, Landroid/app/SystemServiceRegistry;->ensureInitializing(Ljava/lang/String;)V

    .line 2345
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2346
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2347
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2349
    new-instance v0, Landroid/app/SystemServiceRegistry$154;

    invoke-direct {v0, p2, p0}, Landroid/app/SystemServiceRegistry$154;-><init>(Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2361
    return-void
.end method

.method private static blacklist registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/app/SystemServiceRegistry$ServiceFetcher<",
            "TT;>;)V"
        }
    .end annotation

    .line 2171
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2172
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/Map;

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2173
    sget-object p2, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_CLASS_NAMES:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2174
    return-void
.end method

.method static blacklist registerServiceForRavenwood(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/app/SystemServiceRegistry$ServiceFetcher<",
            "TT;>;)V"
        }
    .end annotation

    .line 2185
    invoke-static {}, Lcom/android/modules/utils/ravenwood/RavenwoodHelper;->isRunningOnRavenwood()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2189
    invoke-static {p0, p1, p2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2190
    return-void

    .line 2186
    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "registerServiceForRavenwood must not be called once static {} is done"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist registerServices()V
    .registers 3

    .line 364
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$1;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$1;-><init>()V

    const-string v2, "accessibility"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 371
    const-class v0, Landroid/view/accessibility/CaptioningManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$2;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$2;-><init>()V

    const-string v2, "captioning"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 378
    const-class v0, Landroid/accounts/AccountManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$3;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$3;-><init>()V

    const-string v2, "account"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 387
    const-class v0, Landroid/app/ActivityManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$4;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$4;-><init>()V

    const-string v2, "activity"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 394
    const-class v0, Landroid/app/ActivityTaskManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$5;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$5;-><init>()V

    const-string v2, "activity_task"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 401
    const-class v0, Landroid/app/UriGrantsManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$6;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$6;-><init>()V

    const-string/jumbo v2, "uri_grants"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 409
    const-class v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$7;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$7;-><init>()V

    const-string v2, "alarm"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 418
    const-class v0, Landroid/media/AudioManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$8;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$8;-><init>()V

    const-string v2, "audio"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 425
    const-class v0, Landroid/media/AudioDeviceVolumeManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$9;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$9;-><init>()V

    const-string v2, "audio_device_volume"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 432
    const-class v0, Landroid/media/MediaRouter;

    new-instance v1, Landroid/app/SystemServiceRegistry$10;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$10;-><init>()V

    const-string/jumbo v2, "media_router"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 439
    const-class v0, Landroid/hardware/hdmi/HdmiControlManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$11;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$11;-><init>()V

    const-string v2, "hdmi_control"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 447
    const-class v0, Landroid/view/textclassifier/TextClassificationManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$12;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$12;-><init>()V

    const-string/jumbo v2, "textclassification"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 454
    const-class v0, Landroid/view/selectiontoolbar/SelectionToolbarManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$13;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$13;-><init>()V

    const-string/jumbo v2, "selection_toolbar"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 481
    const-class v0, Landroid/graphics/fonts/FontManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$14;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$14;-><init>()V

    const-string v2, "font"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 489
    const-class v0, Landroid/content/ClipboardManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$15;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$15;-><init>()V

    const-string v2, "clipboard"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 500
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/Map;

    const-class v1, Landroid/text/ClipboardManager;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    const-class v0, Landroid/net/PacProxyManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$16;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$16;-><init>()V

    const-string/jumbo v2, "pac_proxy"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 511
    const-class v0, Landroid/os/IBinder;

    new-instance v1, Landroid/app/SystemServiceRegistry$17;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$17;-><init>()V

    const-string/jumbo v2, "netd"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 518
    const-class v0, Landroid/net/TetheringManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$18;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$18;-><init>()V

    const-string/jumbo v2, "tethering"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 526
    const-class v0, Landroid/net/VpnManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$19;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$19;-><init>()V

    const-string/jumbo v2, "vpn_management"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 540
    const-class v0, Landroid/location/CountryDetector;

    new-instance v1, Landroid/app/SystemServiceRegistry$20;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$20;-><init>()V

    const-string v2, "country_detector"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 548
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$21;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$21;-><init>()V

    const-string v2, "device_policy"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 556
    const-class v0, Landroid/app/DownloadManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$22;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$22;-><init>()V

    const-string v2, "download"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 563
    const-class v0, Landroid/os/BatteryManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$23;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$23;-><init>()V

    const-string v2, "batterymanager"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 574
    const-class v0, Landroid/os/DropBoxManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$24;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$24;-><init>()V

    const-string v2, "dropbox"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 583
    const-class v0, Landroid/transparency/BinaryTransparencyManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$25;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$25;-><init>()V

    const-string/jumbo v2, "transparency"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 595
    const-class v0, Landroid/hardware/input/InputManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$26;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$26;-><init>()V

    const-string v2, "input"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 602
    const-class v0, Landroid/hardware/display/DisplayManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$27;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$27;-><init>()V

    const-string v2, "display"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 609
    const-class v0, Landroid/hardware/display/ColorDisplayManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$28;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$28;-><init>()V

    const-string v2, "color_display"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 621
    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$29;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$29;-><init>()V

    const-string v2, "input_method"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 628
    const-class v0, Landroid/view/textservice/TextServicesManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$30;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$30;-><init>()V

    const-string/jumbo v2, "textservices"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 641
    const-class v0, Landroid/app/KeyguardManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$31;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$31;-><init>()V

    const-string/jumbo v2, "keyguard"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 648
    const-class v0, Landroid/view/LayoutInflater;

    new-instance v1, Landroid/app/SystemServiceRegistry$32;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$32;-><init>()V

    const-string/jumbo v2, "layout_inflater"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 655
    const-class v0, Landroid/location/LocationManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$33;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$33;-><init>()V

    const-string/jumbo v2, "location"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 663
    const-class v0, Landroid/net/NetworkPolicyManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$34;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$34;-><init>()V

    const-string/jumbo v2, "netpolicy"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 671
    const-class v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$35;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$35;-><init>()V

    const-string/jumbo v2, "notification"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 687
    const-class v0, Landroid/app/people/PeopleManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$36;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$36;-><init>()V

    const-string/jumbo v2, "people"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 694
    const-class v0, Landroid/os/PowerManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$37;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$37;-><init>()V

    const-string/jumbo v2, "power"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 706
    const-class v0, Landroid/os/PerformanceHintManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$38;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$38;-><init>()V

    const-string/jumbo v2, "performance_hint"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 714
    const-class v0, Landroid/os/RecoverySystem;

    new-instance v1, Landroid/app/SystemServiceRegistry$39;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$39;-><init>()V

    const-string/jumbo v2, "recovery"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 723
    const-class v0, Landroid/app/SearchManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$40;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$40;-><init>()V

    const-string/jumbo v2, "search"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 731
    const-class v0, Landroid/os/SecurityStateManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$41;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$41;-><init>()V

    const-string/jumbo v2, "security_state"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 742
    const-class v0, Landroid/hardware/SensorManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$42;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$42;-><init>()V

    const-string/jumbo v2, "sensor"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 750
    const-class v0, Landroid/hardware/SensorPrivacyManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$43;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$43;-><init>()V

    const-string/jumbo v2, "sensor_privacy"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 761
    const-class v0, Landroid/app/StatusBarManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$44;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$44;-><init>()V

    const-string/jumbo v2, "statusbar"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 768
    const-class v0, Landroid/os/storage/StorageManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$45;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$45;-><init>()V

    const-string/jumbo v2, "storage"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 775
    const-class v0, Landroid/app/usage/StorageStatsManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$46;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$46;-><init>()V

    const-string/jumbo v2, "storagestats"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 784
    const-class v0, Landroid/os/SystemUpdateManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$47;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$47;-><init>()V

    const-string/jumbo v2, "system_update"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 795
    const-class v0, Landroid/os/SystemConfigManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$48;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$48;-><init>()V

    const-string/jumbo v2, "system_config"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 802
    const-class v0, Landroid/telephony/TelephonyRegistryManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$49;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$49;-><init>()V

    const-string/jumbo v2, "telephony_registry"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 809
    const-class v0, Landroid/telecom/TelecomManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$50;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$50;-><init>()V

    const-string/jumbo v2, "telecom"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 816
    const-class v0, Landroid/telephony/MmsManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$51;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$51;-><init>()V

    const-string/jumbo v2, "mms"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 823
    const-class v0, Landroid/app/UiModeManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$52;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$52;-><init>()V

    const-string/jumbo v2, "uimode"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 830
    const-class v0, Landroid/hardware/usb/UsbManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$53;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$53;-><init>()V

    const-string/jumbo v2, "usb"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 838
    const-class v0, Landroid/debug/AdbManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$54;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$54;-><init>()V

    const-string v2, "adb"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 847
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/serial/flags/Flags;->enableWiredSerialApi()Z

    move-result v0

    const-string/jumbo v1, "serial"

    if-eqz v0, :cond_2c4

    .line 848
    const-class v0, Landroid/hardware/serial/SerialManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$55;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$55;-><init>()V

    invoke-static {v1, v0, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    goto :goto_2ce

    .line 859
    :cond_2c4
    const-class v0, Landroid/hardware/SerialManager;

    new-instance v2, Landroid/app/SystemServiceRegistry$56;

    invoke-direct {v2}, Landroid/app/SystemServiceRegistry$56;-><init>()V

    invoke-static {v1, v0, v2}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 871
    :goto_2ce
    const-class v0, Landroid/os/VibratorManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$57;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$57;-><init>()V

    const-string/jumbo v2, "vibrator_manager"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 878
    const-class v0, Landroid/os/Vibrator;

    new-instance v1, Landroid/app/SystemServiceRegistry$58;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$58;-><init>()V

    const-string/jumbo v2, "vibrator"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 885
    const-class v0, Landroid/app/ThemeManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$59;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$59;-><init>()V

    const-string/jumbo v2, "theme"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 893
    const-class v0, Landroid/app/WallpaperManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$60;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$60;-><init>()V

    const-string/jumbo v2, "wallpaper"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 920
    const-class v0, Landroid/net/wifi/nl80211/WifiNl80211Manager;

    new-instance v1, Landroid/app/SystemServiceRegistry$61;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$61;-><init>()V

    const-string/jumbo v2, "wifinl80211"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 928
    const-class v0, Landroid/view/WindowManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$62;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$62;-><init>()V

    const-string/jumbo v2, "window"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 935
    const-class v0, Landroid/os/UserManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$63;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$63;-><init>()V

    const-string/jumbo v2, "user"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 944
    const-class v0, Landroid/app/AppOpsManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$64;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$64;-><init>()V

    const-string v2, "appops"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 953
    const-class v0, Landroid/hardware/camera2/CameraManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$65;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$65;-><init>()V

    const-string v2, "camera"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 960
    const-class v0, Landroid/content/pm/LauncherApps;

    new-instance v1, Landroid/app/SystemServiceRegistry$66;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$66;-><init>()V

    const-string/jumbo v2, "launcherapps"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 967
    const-class v0, Landroid/content/RestrictionsManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$67;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$67;-><init>()V

    const-string/jumbo v2, "restrictions"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 976
    const-class v0, Landroid/print/PrintManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$68;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$68;-><init>()V

    const-string/jumbo v2, "print"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 991
    const-class v0, Landroid/companion/CompanionDeviceManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$69;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$69;-><init>()V

    const-string v2, "companiondevice"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1006
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/appfunctions/flags/Flags;->enableAppFunctionManager()Z

    move-result v0

    if-eqz v0, :cond_386

    .line 1007
    const-class v0, Landroid/app/appfunctions/AppFunctionManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$70;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$70;-><init>()V

    const-string v2, "app_function"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1023
    :cond_386
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/userrecovery/flags/Flags;->enableUserRecoveryManager()Z

    move-result v0

    if-eqz v0, :cond_399

    .line 1024
    const-class v0, Landroid/app/userrecovery/UserRecoveryManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$71;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$71;-><init>()V

    const-string/jumbo v2, "user_recovery"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1039
    :cond_399
    const-class v0, Landroid/companion/virtual/VirtualDeviceManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$72;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$72;-><init>()V

    const-string/jumbo v2, "virtualdevice"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1053
    const-class v0, Landroid/hardware/ConsumerIrManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$73;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$73;-><init>()V

    const-string v2, "consumer_ir"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1060
    const-class v0, Landroid/app/trust/TrustManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$74;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$74;-><init>()V

    const-string/jumbo v2, "trust"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1068
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$75;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$75;-><init>()V

    const-string v2, "fingerprint"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1082
    const-class v0, Landroid/hardware/face/FaceManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$76;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$76;-><init>()V

    const-string v2, "face"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1098
    const-class v0, Landroid/hardware/iris/IrisManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$77;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$77;-><init>()V

    const-string v2, "iris"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1110
    const-class v0, Landroid/hardware/biometrics/BiometricManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$78;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$78;-><init>()V

    const-string v2, "biometric"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1123
    const-class v0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$79;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$79;-><init>()V

    const-string v2, "authentication_policy"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1137
    const-class v0, Landroid/media/tv/interactive/TvInteractiveAppManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$80;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$80;-><init>()V

    const-string/jumbo v2, "tv_interactive_app"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1149
    const-class v0, Landroid/media/tv/ad/TvAdManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$81;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$81;-><init>()V

    const-string/jumbo v2, "tv_ad"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1161
    const-class v0, Landroid/media/tv/TvInputManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$82;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$82;-><init>()V

    const-string/jumbo v2, "tv_input"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1170
    const-class v0, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$83;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$83;-><init>()V

    const-string/jumbo v2, "tv_tuner_resource_mgr"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1181
    const-class v0, Landroid/net/NetworkScoreManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$84;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$84;-><init>()V

    const-string/jumbo v2, "network_score"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1188
    const-class v0, Landroid/app/usage/UsageStatsManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$85;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$85;-><init>()V

    const-string/jumbo v2, "usagestats"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1197
    const-class v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$86;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$86;-><init>()V

    const-string/jumbo v2, "persistent_data_block"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1213
    const-class v0, Landroid/service/oemlock/OemLockManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$87;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$87;-><init>()V

    const-string/jumbo v2, "oem_lock"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1227
    const-class v0, Landroid/media/projection/MediaProjectionManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$88;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$88;-><init>()V

    const-string/jumbo v2, "media_projection"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1234
    const-class v0, Landroid/appwidget/AppWidgetManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$89;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$89;-><init>()V

    const-string v2, "appwidget"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1243
    const-class v0, Landroid/media/midi/MidiManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$90;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$90;-><init>()V

    const-string/jumbo v2, "midi"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1251
    const-class v0, Landroid/hardware/radio/RadioManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$91;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$91;-><init>()V

    const-string v2, "broadcastradio"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1258
    const-class v0, Landroid/os/HardwarePropertiesManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$92;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$92;-><init>()V

    const-string v2, "hardware_properties"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1268
    const-class v0, Landroid/media/soundtrigger/SoundTriggerManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$93;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$93;-><init>()V

    const-string/jumbo v2, "soundtrigger"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1276
    const-class v0, Landroid/content/pm/ShortcutManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$94;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$94;-><init>()V

    const-string/jumbo v2, "shortcut"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1284
    const-class v0, Landroid/content/om/OverlayManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$95;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$95;-><init>()V

    const-string/jumbo v2, "overlay"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1295
    const-class v0, Landroid/net/NetworkWatchlistManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$96;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$96;-><init>()V

    const-string/jumbo v2, "network_watchlist"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1306
    const-class v0, Landroid/os/health/SystemHealthManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$97;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$97;-><init>()V

    const-string/jumbo v2, "systemhealth"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1318
    const-class v0, Landroid/hardware/location/ContextHubManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$98;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$98;-><init>()V

    const-string v2, "contexthub"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1330
    const-class v0, Landroid/os/IncidentManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$99;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$99;-><init>()V

    const-string v2, "incident"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1337
    const-class v0, Landroid/os/BugreportManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$100;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$100;-><init>()V

    const-string v2, "bugreport"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1347
    const-class v0, Landroid/view/autofill/AutofillManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$101;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$101;-><init>()V

    const-string v2, "autofill"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1357
    const-class v0, Landroid/credentials/CredentialManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$102;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$102;-><init>()V

    const-string v2, "credential"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1370
    const-class v0, Landroid/media/musicrecognition/MusicRecognitionManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$103;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$103;-><init>()V

    const-string/jumbo v2, "music_recognition"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1381
    const-class v0, Landroid/view/contentcapture/ContentCaptureManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$104;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$104;-><init>()V

    const-string v2, "content_capture"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1404
    const-class v0, Landroid/view/translation/TranslationManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$105;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$105;-><init>()V

    const-string/jumbo v2, "translation"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1418
    const-class v0, Landroid/view/translation/UiTranslationManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$106;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$106;-><init>()V

    const-string/jumbo v2, "ui_translation"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1431
    const-class v0, Landroid/app/search/SearchUiManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$107;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$107;-><init>()V

    const-string/jumbo v2, "search_ui"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1441
    const-class v0, Landroid/app/smartspace/SmartspaceManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$108;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$108;-><init>()V

    const-string/jumbo v2, "smartspace"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1451
    const-class v0, Landroid/app/contextualsearch/ContextualSearchManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$109;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$109;-><init>()V

    const-string v2, "contextual_search"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1461
    const-class v0, Landroid/app/prediction/AppPredictionManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$110;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$110;-><init>()V

    const-string v2, "app_prediction"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1471
    const-class v0, Landroid/app/contentsuggestions/ContentSuggestionsManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$111;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$111;-><init>()V

    const-string v2, "content_suggestions"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1485
    const-class v0, Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$112;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$112;-><init>()V

    const-string/jumbo v2, "wallpaper_effects_generation"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1499
    const-class v0, Landroid/app/VrManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$113;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$113;-><init>()V

    const-string/jumbo v2, "vrmanager"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1507
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->enableTaskContinuity()Z

    move-result v0

    if-eqz v0, :cond_5bc

    .line 1508
    const-class v0, Landroid/companion/datatransfer/continuity/TaskContinuityManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$114;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$114;-><init>()V

    const-string/jumbo v2, "task_continuity"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1522
    :cond_5bc
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->enableUniversalClipboard()Z

    move-result v0

    if-eqz v0, :cond_5cf

    .line 1523
    const-class v0, Landroid/companion/datatransfer/continuity/UniversalClipboardManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$115;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$115;-><init>()V

    const-string/jumbo v2, "universal_clipboard"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1537
    :cond_5cf
    const-class v0, Landroid/content/pm/CrossProfileApps;

    new-instance v1, Landroid/app/SystemServiceRegistry$116;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$116;-><init>()V

    const-string v2, "crossprofileapps"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1549
    const-class v0, Landroid/app/slice/SliceManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$117;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$117;-><init>()V

    const-string/jumbo v2, "slice"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1559
    const-class v0, Landroid/app/timedetector/TimeDetector;

    new-instance v1, Landroid/app/SystemServiceRegistry$118;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$118;-><init>()V

    const-string/jumbo v2, "time_detector"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1567
    const-class v0, Landroid/app/timezonedetector/TimeZoneDetector;

    new-instance v1, Landroid/app/SystemServiceRegistry$119;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$119;-><init>()V

    const-string/jumbo v2, "time_zone_detector"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1575
    const-class v0, Landroid/app/time/TimeManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$120;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$120;-><init>()V

    const-string/jumbo v2, "time_manager"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1583
    const-class v0, Landroid/permission/PermissionManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$121;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$121;-><init>()V

    const-string/jumbo v2, "permission"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1591
    const-class v0, Landroid/permission/LegacyPermissionManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$122;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$122;-><init>()V

    const-string/jumbo v2, "legacy_permission"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1599
    const-class v0, Landroid/permission/PermissionControllerManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$123;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$123;-><init>()V

    const-string/jumbo v2, "permission_controller"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1607
    const-class v0, Landroid/permission/PermissionCheckerManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$124;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$124;-><init>()V

    const-string/jumbo v2, "permission_checker"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1615
    const-class v0, Landroid/os/PermissionEnforcer;

    new-instance v1, Landroid/app/SystemServiceRegistry$125;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$125;-><init>()V

    const-string/jumbo v2, "permission_enforcer"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1623
    const-class v0, Landroid/os/image/DynamicSystemManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$126;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$126;-><init>()V

    const-string v2, "dynamic_system"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1634
    const-class v0, Landroid/os/BatteryStatsManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$127;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$127;-><init>()V

    const-string v2, "batterystats"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1644
    const-class v0, Landroid/content/pm/DataLoaderManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$128;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$128;-><init>()V

    const-string v2, "dataloader_manager"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1653
    const-class v0, Landroid/hardware/lights/LightsManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$129;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$129;-><init>()V

    const-string/jumbo v2, "lights"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1660
    const-class v0, Landroid/app/LocaleManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$130;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$130;-><init>()V

    const-string/jumbo v2, "locale"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1668
    const-class v0, Landroid/os/incremental/IncrementalManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$131;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$131;-><init>()V

    const-string v2, "incremental"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1680
    const-class v0, Landroid/security/FileIntegrityManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$132;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$132;-><init>()V

    const-string v2, "file_integrity"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1691
    const-class v0, Landroid/security/attestationverification/AttestationVerificationManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$133;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$133;-><init>()V

    const-string v2, "attestation_verification"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1702
    const-class v0, Landroid/apphibernation/AppHibernationManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$134;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$134;-><init>()V

    const-string v2, "app_hibernation"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1709
    const-class v0, Landroid/app/DreamManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$135;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$135;-><init>()V

    const-string v2, "dream"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1716
    const-class v0, Landroid/hardware/devicestate/DeviceStateManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$136;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$136;-><init>()V

    const-string v2, "device_state"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1723
    const-class v0, Landroid/media/metrics/MediaMetricsManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$137;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$137;-><init>()V

    const-string/jumbo v2, "media_metrics"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1735
    const-class v0, Landroid/app/GameManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$138;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$138;-><init>()V

    const-string v2, "game"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1761
    const-class v0, Landroid/content/pm/verify/domain/DomainVerificationManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$139;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$139;-><init>()V

    const-string v2, "domain_verification"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1774
    const-class v0, Landroid/view/displayhash/DisplayHashManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$140;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$140;-><init>()V

    const-string v2, "display_hash"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1782
    const-class v0, Landroid/app/ambientcontext/AmbientContextManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$141;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$141;-><init>()V

    const-string v2, "ambient_context"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1794
    const-class v0, Landroid/app/wearable/WearableSensingManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$142;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$142;-><init>()V

    const-string/jumbo v2, "wearable_sensing"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1815
    const-class v0, Landroid/app/GrammaticalInflectionManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$143;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$143;-><init>()V

    const-string v2, "grammatical_inflection"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1826
    const-class v0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$144;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$144;-><init>()V

    const-string/jumbo v2, "shared_connectivity"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1834
    const-class v0, Landroid/security/keystore/KeyStoreManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$145;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$145;-><init>()V

    const-string/jumbo v2, "keystore"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1845
    const-class v0, Landroid/provider/E2eeContactKeysManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$146;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$146;-><init>()V

    const-string v2, "contact_keys"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1857
    const-class v0, Landroid/app/supervision/SupervisionManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$147;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$147;-><init>()V

    const-string/jumbo v2, "supervision"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1872
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->aapmApi()Z

    move-result v0

    if-eqz v0, :cond_771

    .line 1873
    const-class v0, Landroid/security/advancedprotection/AdvancedProtectionManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$148;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$148;-><init>()V

    const-string v2, "advanced_protection"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1893
    :cond_771
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->bicClient()Z

    move-result v0

    if-eqz v0, :cond_783

    .line 1894
    const-class v0, Landroid/app/BackgroundInstallControlManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$149;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$149;-><init>()V

    const-string v2, "background_install_control"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1903
    :cond_783
    const-class v0, Landroid/media/quality/MediaQualityManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$150;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$150;-><init>()V

    const-string/jumbo v2, "media_quality"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1916
    const-class v0, Landroid/security/intrusiondetection/IntrusionDetectionManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$151;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$151;-><init>()V

    const-string v2, "intrusion_detection"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1933
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/chooser/Flags;->interactiveChooser()Z

    move-result v0

    if-eqz v0, :cond_7ae

    .line 1934
    const-class v0, Landroid/service/chooser/ChooserManager;

    new-instance v1, Landroid/app/SystemServiceRegistry$152;

    invoke-direct {v1}, Landroid/app/SystemServiceRegistry$152;-><init>()V

    const-string v2, "chooser"

    invoke-static {v2, v0, v1}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1950
    :cond_7ae
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/SystemServiceRegistry;->sInitializing:Z

    .line 1954
    const/4 v0, 0x0

    :try_start_7b2
    invoke-static {}, Landroid/net/ConnectivityFrameworkInitializer;->registerServiceWrappers()V

    .line 1955
    invoke-static {}, Landroid/app/job/JobSchedulerFrameworkInitializer;->registerServiceWrappers()V

    .line 1956
    invoke-static {}, Landroid/app/blob/BlobStoreManagerFrameworkInitializer;->initialize()V

    .line 1957
    invoke-static {}, Landroid/bluetooth/BluetoothFrameworkInitializer;->registerServiceWrappers()V

    .line 1958
    invoke-static {}, Landroid/nfc/NfcFrameworkInitializer;->registerServiceWrappers()V

    .line 1959
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->registerServiceWrappers()V

    .line 1960
    invoke-static {}, Landroid/app/appsearch/AppSearchManagerFrameworkInitializer;->initialize()V

    .line 1961
    invoke-static {}, Landroid/health/connect/HealthServicesInitializer;->registerServiceWrappers()V

    .line 1962
    invoke-static {}, Landroid/net/wifi/WifiFrameworkInitializer;->registerServiceWrappers()V

    .line 1963
    invoke-static {}, Landroid/os/StatsFrameworkInitializer;->registerServiceWrappers()V

    .line 1964
    invoke-static {}, Landroid/content/rollback/RollbackManagerFrameworkInitializer;->initialize()V

    .line 1965
    invoke-static {}, Landroid/media/MediaFrameworkPlatformInitializer;->registerServiceWrappers()V

    .line 1966
    invoke-static {}, Landroid/media/MediaFrameworkInitializer;->registerServiceWrappers()V

    .line 1967
    invoke-static {}, Landroid/app/role/RoleFrameworkInitializer;->registerServiceWrappers()V

    .line 1968
    invoke-static {}, Landroid/scheduling/SchedulingFrameworkInitializer;->registerServiceWrappers()V

    .line 1969
    invoke-static {}, Landroid/app/sdksandbox/SdkSandboxManagerFrameworkInitializer;->registerServiceWrappers()V

    .line 1970
    invoke-static {}, Landroid/adservices/AdServicesFrameworkInitializer;->registerServiceWrappers()V

    .line 1971
    invoke-static {}, Landroid/uwb/UwbFrameworkInitializer;->registerServiceWrappers()V

    .line 1972
    invoke-static {}, Landroid/safetycenter/SafetyCenterFrameworkInitializer;->registerServiceWrappers()V

    .line 1973
    invoke-static {}, Landroid/net/ConnectivityFrameworkInitializerTiramisu;->registerServiceWrappers()V

    .line 1974
    invoke-static {}, Landroid/nearby/NearbyFrameworkInitializer;->registerServiceWrappers()V

    .line 1975
    invoke-static {}, Landroid/ondevicepersonalization/OnDevicePersonalizationFrameworkInitializer;->registerServiceWrappers()V

    .line 1976
    invoke-static {}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceFrameworkInitializer;->registerServiceWrappers()V

    .line 1977
    invoke-static {}, Landroid/devicelock/DeviceLockFrameworkInitializer;->registerServiceWrappers()V

    .line 1978
    invoke-static {}, Landroid/system/virtualmachine/VirtualizationFrameworkInitializer;->registerServiceWrappers()V

    .line 1979
    invoke-static {}, Landroid/net/ConnectivityFrameworkInitializerBaklava;->registerServiceWrappers()V

    .line 1981
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/provider/flags/Flags;->newStoragePublicApi()Z

    move-result v1

    if-eqz v1, :cond_809

    .line 1982
    invoke-static {}, Landroid/os/flagging/ConfigInfrastructureFrameworkInitializer;->registerServiceWrappers()V

    .line 1985
    :cond_809
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/telecom/flags/Flags;->telecomMainlineBlockedNumbersManager()Z

    move-result v1

    if-eqz v1, :cond_812

    .line 1986
    invoke-static {}, Landroid/provider/ProviderFrameworkInitializer;->registerServiceWrappers()V

    .line 1990
    :cond_812
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->enhancedConfirmationModeApisEnabled()Z

    move-result v1

    if-eqz v1, :cond_81b

    .line 1991
    invoke-static {}, Landroid/app/ecm/EnhancedConfirmationFrameworkInitializer;->registerServiceWrappers()V

    .line 1993
    :cond_81b
    invoke-static {}, Landroid/os/ProfilingFrameworkInitializer;->registerServiceWrappers()V

    .line 1994
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/profiling/anomaly/flags/Flags;->anomalyDetectorCore()Z

    move-result v1

    if-eqz v1, :cond_827

    .line 1995
    invoke-static {}, Landroid/os/AnomalyDetectorFrameworkInitializer;->registerServiceWrappers()V

    .line 1997
    :cond_827
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/webkit/Flags;->updateServiceIpcWrapper()Z

    move-result v1

    if-eqz v1, :cond_830

    .line 1998
    invoke-static {}, Landroid/webkit/WebViewBootstrapFrameworkInitializer;->registerServiceWrappers()V

    .line 2005
    :cond_830
    invoke-static {}, Landroid/ranging/RangingFrameworkInitializer;->registerServiceWrappers()V

    .line 2008
    invoke-static {}, Landroid/os/AnomalyDetectorFrameworkInitializer;->registerServiceWrappers()V
    :try_end_836
    .catchall {:try_start_7b2 .. :try_end_836} :catchall_83a

    .line 2012
    sput-boolean v0, Landroid/app/SystemServiceRegistry;->sInitializing:Z

    .line 2013
    nop

    .line 2014
    return-void

    .line 2012
    :catchall_83a
    move-exception v1

    sput-boolean v0, Landroid/app/SystemServiceRegistry;->sInitializing:Z

    .line 2013
    throw v1
.end method

.method public static whitelist registerStaticService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TServiceClass:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TTServiceClass;>;",
            "Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder<",
            "TTServiceClass;>;)V"
        }
    .end annotation

    .line 2305
    const-string/jumbo v0, "registerStaticService"

    invoke-static {v0}, Landroid/app/SystemServiceRegistry;->ensureInitializing(Ljava/lang/String;)V

    .line 2306
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2307
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2308
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2310
    new-instance v0, Landroid/app/SystemServiceRegistry$153;

    invoke-direct {v0, p2, p0}, Landroid/app/SystemServiceRegistry$153;-><init>(Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2317
    return-void
.end method

.method public static whitelist registerStaticService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TServiceClass:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TTServiceClass;>;",
            "Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder<",
            "TTServiceClass;>;)V"
        }
    .end annotation

    .line 2373
    const-string/jumbo v0, "registerStaticService"

    invoke-static {v0}, Landroid/app/SystemServiceRegistry;->ensureInitializing(Ljava/lang/String;)V

    .line 2374
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2375
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2376
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2378
    new-instance v0, Landroid/app/SystemServiceRegistry$155;

    invoke-direct {v0, p2}, Landroid/app/SystemServiceRegistry$155;-><init>(Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder;)V

    invoke-static {p0, p1, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2384
    return-void
.end method
