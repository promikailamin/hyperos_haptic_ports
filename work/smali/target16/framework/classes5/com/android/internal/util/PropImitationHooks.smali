.class public Lcom/android/internal/util/PropImitationHooks;
.super Ljava/lang/Object;
.source "PropImitationHooks.java"


# static fields
.field private static final blacklist DATA_FILE:Ljava/lang/String; = "gms_certified_props.json"

.field private static final blacklist DEBUG:Z

.field private static final blacklist FEATURE_NEXUS_PRELOAD:Ljava/lang/String; = "com.google.android.apps.photos.NEXUS_PRELOAD"

.field private static final blacklist GMS_ADD_ACCOUNT_ACTIVITY:Landroid/content/ComponentName;

.field private static final blacklist PACKAGE_ARCORE:Ljava/lang/String; = "com.google.ar.core"

.field private static final blacklist PACKAGE_FINSKY:Ljava/lang/String; = "com.android.vending"

.field private static final blacklist PACKAGE_GMS:Ljava/lang/String; = "com.google.android.gms"

.field private static final blacklist PACKAGE_GPHOTOS:Ljava/lang/String; = "com.google.android.apps.photos"

.field private static final blacklist PACKAGE_NETFLIX:Ljava/lang/String; = "com.netflix.mediaclient"

.field private static final blacklist PROCESS_GMS_UNSTABLE:Ljava/lang/String; = "com.google.android.gms.unstable"

.field private static final blacklist TAG:Ljava/lang/String; = "PropImitationHooks"

.field private static volatile blacklist sCertifiedProps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sDisableGmsProps:Ljava/lang/Boolean;

.field private static final blacklist sDisableKeyAttestationBlock:Ljava/lang/Boolean;

.field private static volatile blacklist sIsFinsky:Z

.field private static volatile blacklist sIsGms:Z

.field private static volatile blacklist sIsPhotos:Z

.field private static volatile blacklist sNetflixModel:Ljava/lang/String;

.field private static final blacklist sPixelFeatures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sPixelOneProps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile blacklist sProcessName:Ljava/lang/String;

.field private static volatile blacklist sStockFp:Ljava/lang/String;

.field private static final blacklist sTensorFeatures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$fLXMv7NkLH8Undamgc1PsXBTvew(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/util/PropImitationHooks;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smisGmsAddAccountActivityOnTop()Z
    .registers 1

    invoke-static {}, Lcom/android/internal/util/PropImitationHooks;->isGmsAddAccountActivityOnTop()Z

    move-result v0

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 13

    .line 61
    const-string v0, "PropImitationHooks"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/util/PropImitationHooks;->DEBUG:Z

    .line 63
    const-string/jumbo v0, "persist.sys.pihooks.disable.gms_props"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/PropImitationHooks;->sDisableGmsProps:Ljava/lang/Boolean;

    .line 66
    const-string/jumbo v0, "persist.sys.pihooks.disable.gms_key_attestation_block"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/PropImitationHooks;->sDisableKeyAttestationBlock:Ljava/lang/Boolean;

    .line 77
    const-string v0, "com.google.android.gms/.auth.uiflows.minutemaid.MinuteMaidActivity"

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/PropImitationHooks;->GMS_ADD_ACCOUNT_ACTIVITY:Landroid/content/ComponentName;

    .line 83
    const-string v11, "FINGERPRINT"

    const-string v12, "google/sailfish/sailfish:10/QP1A.191005.007.A3/5972272:user/release-keys"

    const-string v1, "PRODUCT"

    const-string/jumbo v2, "sailfish"

    const-string v3, "DEVICE"

    const-string/jumbo v4, "sailfish"

    const-string v5, "MANUFACTURER"

    const-string v6, "Google"

    const-string v7, "BRAND"

    const-string v8, "google"

    const-string v9, "MODEL"

    const-string v10, "Pixel"

    invoke-static/range {v1 .. v12}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/PropImitationHooks;->sPixelOneProps:Ljava/util/Map;

    .line 92
    const-string v10, "PIXEL_2020_MIDYEAR_EXPERIENCE"

    const-string v11, "PIXEL_2021_MIDYEAR_EXPERIENCE"

    const-string v1, "PIXEL_2017_EXPERIENCE"

    const-string v2, "PIXEL_2017_PRELOAD"

    const-string v3, "PIXEL_2018_EXPERIENCE"

    const-string v4, "PIXEL_2018_PRELOAD"

    const-string v5, "PIXEL_2019_EXPERIENCE"

    const-string v6, "PIXEL_2019_MIDYEAR_EXPERIENCE"

    const-string v7, "PIXEL_2019_MIDYEAR_PRELOAD"

    const-string v8, "PIXEL_2019_PRELOAD"

    const-string v9, "PIXEL_2020_EXPERIENCE"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/PropImitationHooks;->sPixelFeatures:Ljava/util/Set;

    .line 106
    const-string v6, "PIXEL_2024_EXPERIENCE"

    const-string v7, "PIXEL_2024_MIDYEAR_EXPERIENCE"

    const-string v1, "PIXEL_2021_EXPERIENCE"

    const-string v2, "PIXEL_2022_EXPERIENCE"

    const-string v3, "PIXEL_2022_MIDYEAR_EXPERIENCE"

    const-string v4, "PIXEL_2023_EXPERIENCE"

    const-string v5, "PIXEL_2023_MIDYEAR_EXPERIENCE"

    invoke-static/range {v1 .. v7}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/PropImitationHooks;->sTensorFeatures:Ljava/util/Set;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/util/PropImitationHooks;->sCertifiedProps:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist dlog(Ljava/lang/String;)V
    .registers 3

    .line 354
    sget-boolean v0, Lcom/android/internal/util/PropImitationHooks;->DEBUG:Z

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/util/PropImitationHooks;->sProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PropImitationHooks"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_28
    return-void
.end method

.method public static blacklist hasSystemFeature(Ljava/lang/String;Z)Z
    .registers 5

    .line 340
    sget-boolean v0, Lcom/android/internal/util/PropImitationHooks;->sIsPhotos:Z

    if-eqz v0, :cond_71

    .line 341
    const-string v0, " for Google Photos"

    if-eqz p1, :cond_4c

    sget-object v1, Lcom/android/internal/util/PropImitationHooks;->sPixelFeatures:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-nez v1, :cond_30

    sget-object v1, Lcom/android/internal/util/PropImitationHooks;->sTensorFeatures:Ljava/util/Set;

    .line 342
    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 343
    :cond_30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Blocked system feature "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/PropImitationHooks;->dlog(Ljava/lang/String;)V

    .line 344
    const/4 p1, 0x0

    goto :goto_71

    .line 345
    :cond_4c
    if-nez p1, :cond_71

    const-string v1, "com.google.android.apps.photos.NEXUS_PRELOAD"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 346
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enabled system feature "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/PropImitationHooks;->dlog(Ljava/lang/String;)V

    .line 347
    const/4 p1, 0x1

    .line 350
    :cond_71
    :goto_71
    return p1
.end method

.method private static blacklist isCallerPlayIntegrity()Z
    .registers 2

    .line 315
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/util/PropImitationHooks$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/util/PropImitationHooks$$ExternalSyntheticLambda0;-><init>()V

    .line 316
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/util/PropImitationHooks$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/util/PropImitationHooks$$ExternalSyntheticLambda1;-><init>()V

    .line 317
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 315
    return v0
.end method

.method private static blacklist isGmsAddAccountActivityOnTop()Z
    .registers 4

    .line 287
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v1

    .line 288
    if-eqz v1, :cond_1b

    iget-object v2, v1, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_1b

    iget-object v1, v1, Landroid/app/ActivityTaskManager$RootTaskInfo;->topActivity:Landroid/content/ComponentName;

    sget-object v2, Lcom/android/internal/util/PropImitationHooks;->GMS_ADD_ACCOUNT_ACTIVITY:Landroid/content/ComponentName;

    .line 289
    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_1d

    if-eqz v1, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    nop

    .line 288
    :goto_1c
    return v0

    .line 290
    :catch_1d
    move-exception v1

    .line 291
    const-string v2, "PropImitationHooks"

    const-string v3, "Unable to get top activity!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    return v0
.end method

.method static synthetic blacklist lambda$isCallerPlayIntegrity$0(Ljava/lang/String;)Z
    .registers 2

    .line 317
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "droidguard"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static blacklist onEngineGetCertificateChain()V
    .registers 1

    .line 321
    sget-object v0, Lcom/android/internal/util/PropImitationHooks;->sDisableKeyAttestationBlock:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 322
    const-string v0, "Key attestation blocking is disabled by user"

    invoke-static {v0}, Lcom/android/internal/util/PropImitationHooks;->dlog(Ljava/lang/String;)V

    .line 323
    return-void

    .line 327
    :cond_e
    invoke-static {}, Lcom/android/internal/util/custom/KeyProviderManager;->isKeyboxAvailable()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 328
    const-string v0, "Key attestation blocking is disabled because a keybox is defined to spoof"

    invoke-static {v0}, Lcom/android/internal/util/PropImitationHooks;->dlog(Ljava/lang/String;)V

    .line 329
    return-void

    .line 333
    :cond_1a
    invoke-static {}, Lcom/android/internal/util/PropImitationHooks;->isCallerPlayIntegrity()Z

    move-result v0

    if-nez v0, :cond_21

    .line 337
    return-void

    .line 334
    :cond_21
    const-string v0, "Blocked key attestation for play integrity"

    invoke-static {v0}, Lcom/android/internal/util/PropImitationHooks;->dlog(Ljava/lang/String;)V

    .line 335
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private static blacklist readFromFile(Ljava/io/File;)Ljava/lang/String;
    .registers 4

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 271
    :try_start_b
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_15} :catch_2d

    .line 274
    :goto_15
    :try_start_15
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 275
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_23

    goto :goto_15

    .line 277
    :cond_1f
    :try_start_1f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_2d

    .line 279
    goto :goto_35

    .line 271
    :catchall_23
    move-exception p0

    :try_start_24
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_2c

    :catchall_28
    move-exception v1

    :try_start_29
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2c
    throw p0
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2d} :catch_2d

    .line 277
    :catch_2d
    move-exception p0

    .line 278
    const-string v1, "PropImitationHooks"

    const-string v2, "Error reading from file"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    :cond_35
    :goto_35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist setCertifiedProps()V
    .registers 5

    .line 256
    sget-object v0, Lcom/android/internal/util/PropImitationHooks;->sCertifiedProps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 258
    const-string v2, ":"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 259
    array-length v4, v2

    if-eq v4, v3, :cond_35

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid entry in certified props: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PropImitationHooks"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    goto :goto_6

    .line 263
    :cond_35
    const/4 v1, 0x0

    aget-object v1, v2, v1

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/internal/util/PropImitationHooks;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    goto :goto_6

    .line 265
    :cond_3f
    return-void
.end method

.method private static blacklist setPlayIntegrityProps(Landroid/content/Context;)V
    .registers 9

    .line 187
    sget-object v0, Lcom/android/internal/util/PropImitationHooks;->sDisableGmsProps:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 188
    const-string p0, "GMS prop imitation is disabled by user"

    invoke-static {p0}, Lcom/android/internal/util/PropImitationHooks;->dlog(Ljava/lang/String;)V

    .line 189
    return-void

    .line 193
    :cond_e
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 194
    const-string p0, "Skipping setPlayIntegrityProps in isolated process"

    invoke-static {p0}, Lcom/android/internal/util/PropImitationHooks;->dlog(Ljava/lang/String;)V

    .line 195
    return-void

    .line 198
    :cond_1a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pif_data"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_2d

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 200
    :cond_2d
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fetched_pif"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    :cond_37
    const-string v1, "PropImitationHooks"

    const v2, 0x107003c

    if-eqz v0, :cond_9b

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_45

    goto :goto_9b

    .line 207
    :cond_45
    const-string v3, "Parsing props fetched / provided by user"

    invoke-static {v3}, Lcom/android/internal/util/PropImitationHooks;->dlog(Ljava/lang/String;)V

    .line 209
    :try_start_4a
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 211
    :goto_53
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_80

    .line 212
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 213
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 214
    sget-object v6, Lcom/android/internal/util/PropImitationHooks;->sCertifiedProps:Ljava/util/List;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7f
    .catch Lorg/json/JSONException; {:try_start_4a .. :try_end_7f} :catch_81

    .line 215
    goto :goto_53

    .line 220
    :cond_80
    goto :goto_ae

    .line 216
    :catch_81
    move-exception v0

    .line 217
    const-string v3, "Error parsing JSON data"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    const-string v0, "Parsing props locally as fallback"

    invoke-static {v0}, Lcom/android/internal/util/PropImitationHooks;->dlog(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sput-object p0, Lcom/android/internal/util/PropImitationHooks;->sCertifiedProps:Ljava/util/List;

    goto :goto_ae

    .line 204
    :cond_9b
    :goto_9b
    const-string v0, "Parsing props locally - fetched pif / user provided pif unavailable"

    invoke-static {v0}, Lcom/android/internal/util/PropImitationHooks;->dlog(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sput-object p0, Lcom/android/internal/util/PropImitationHooks;->sCertifiedProps:Ljava/util/List;

    .line 223
    :goto_ae
    sget-object p0, Lcom/android/internal/util/PropImitationHooks;->sCertifiedProps:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_bc

    .line 224
    const-string p0, "Certified props are not set"

    invoke-static {p0}, Lcom/android/internal/util/PropImitationHooks;->dlog(Ljava/lang/String;)V

    .line 225
    return-void

    .line 228
    :cond_bc
    invoke-static {}, Lcom/android/internal/util/PropImitationHooks;->isGmsAddAccountActivityOnTop()Z

    move-result p0

    .line 229
    new-instance v0, Lcom/android/internal/util/PropImitationHooks$1;

    invoke-direct {v0, p0}, Lcom/android/internal/util/PropImitationHooks$1;-><init>(Z)V

    .line 241
    if-nez p0, :cond_d0

    .line 242
    const-string p0, "Spoofing build for GMS / Finsky"

    invoke-static {p0}, Lcom/android/internal/util/PropImitationHooks;->dlog(Ljava/lang/String;)V

    .line 243
    invoke-static {}, Lcom/android/internal/util/PropImitationHooks;->setCertifiedProps()V

    goto :goto_d5

    .line 245
    :cond_d0
    const-string p0, "Skip spoofing build for GMS / Finsky, because GmsAddAccountActivityOnTop"

    invoke-static {p0}, Lcom/android/internal/util/PropImitationHooks;->dlog(Ljava/lang/String;)V

    .line 249
    :goto_d5
    :try_start_d5
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_dc} :catch_dd

    .line 252
    goto :goto_e3

    .line 250
    :catch_dd
    move-exception p0

    .line 251
    const-string v0, "Failed to register task stack listener!"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    :goto_e3
    return-void
.end method

.method private static blacklist setPropValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 170
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting prop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/PropImitationHooks;->dlog(Ljava/lang/String;)V

    .line 171
    const-class v0, Landroid/os/Build;

    .line 172
    const-string v1, "VERSION."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 173
    const-class v0, Landroid/os/Build$VERSION;

    .line 174
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 176
    :cond_36
    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 177
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 179
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_52
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 180
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5a} :catch_5b

    .line 183
    goto :goto_74

    .line 181
    :catch_5b
    move-exception p1

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to set prop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PropImitationHooks"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    :goto_74
    return-void
.end method

.method public static blacklist setProps(Landroid/content/Context;)V
    .registers 5

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "PropImitationHooks"

    if-nez v2, :cond_ef

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    goto/16 :goto_ef

    .line 131
    :cond_18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 132
    if-nez v2, :cond_24

    .line 133
    const-string p0, "Null resources"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void

    .line 137
    :cond_24
    const v3, 0x1040305

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/internal/util/PropImitationHooks;->sStockFp:Ljava/lang/String;

    .line 138
    const v3, 0x10402c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/util/PropImitationHooks;->sNetflixModel:Ljava/lang/String;

    .line 140
    sput-object v1, Lcom/android/internal/util/PropImitationHooks;->sProcessName:Ljava/lang/String;

    .line 141
    const-string v2, "com.google.android.gms"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    const-string v2, "com.google.android.gms.unstable"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    const/4 v1, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v1, 0x0

    :goto_4b
    sput-boolean v1, Lcom/android/internal/util/PropImitationHooks;->sIsGms:Z

    .line 142
    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/util/PropImitationHooks;->sIsFinsky:Z

    .line 143
    const-string v1, "com.google.android.apps.photos"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/util/PropImitationHooks;->sIsPhotos:Z

    .line 150
    sget-boolean v1, Lcom/android/internal/util/PropImitationHooks;->sIsGms:Z

    if-nez v1, :cond_df

    sget-boolean v1, Lcom/android/internal/util/PropImitationHooks;->sIsFinsky:Z

    if-eqz v1, :cond_67

    goto/16 :goto_df

    .line 156
    :cond_67
    sget-object p0, Lcom/android/internal/util/PropImitationHooks;->sStockFp:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_95

    const-string p0, "com.google.ar.core"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_95

    .line 157
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting stock fingerprint for: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/PropImitationHooks;->dlog(Ljava/lang/String;)V

    .line 158
    const-string p0, "FINGERPRINT"

    sget-object v0, Lcom/android/internal/util/PropImitationHooks;->sStockFp:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/internal/util/PropImitationHooks;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ee

    .line 159
    :cond_95
    sget-boolean p0, Lcom/android/internal/util/PropImitationHooks;->sIsPhotos:Z

    if-eqz p0, :cond_a9

    .line 160
    const-string p0, "Spoofing Pixel 1 for Google Photos"

    invoke-static {p0}, Lcom/android/internal/util/PropImitationHooks;->dlog(Ljava/lang/String;)V

    .line 161
    sget-object p0, Lcom/android/internal/util/PropImitationHooks;->sPixelOneProps:Ljava/util/Map;

    new-instance v0, Lcom/android/internal/util/PropImitationHooks$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/util/PropImitationHooks$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    goto :goto_ee

    .line 162
    :cond_a9
    sget-object p0, Lcom/android/internal/util/PropImitationHooks;->sNetflixModel:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_ee

    const-string p0, "com.netflix.mediaclient"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_ee

    .line 163
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Setting model to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lcom/android/internal/util/PropImitationHooks;->sNetflixModel:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " for Netflix"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/PropImitationHooks;->dlog(Ljava/lang/String;)V

    .line 164
    const-string p0, "MODEL"

    sget-object v0, Lcom/android/internal/util/PropImitationHooks;->sNetflixModel:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/internal/util/PropImitationHooks;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ee

    .line 151
    :cond_df
    :goto_df
    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    if-nez v0, :cond_e9

    .line 152
    invoke-static {p0}, Lcom/android/internal/util/PropImitationHooks;->setPlayIntegrityProps(Landroid/content/Context;)V

    goto :goto_ee

    .line 154
    :cond_e9
    const-string p0, "Not setting Play Integrity props in isolated process"

    invoke-static {p0}, Lcom/android/internal/util/PropImitationHooks;->dlog(Ljava/lang/String;)V

    .line 166
    :cond_ee
    :goto_ee
    return-void

    .line 127
    :cond_ef
    :goto_ef
    const-string p0, "Null package or process name"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method public static blacklist shouldBypassTaskPermission(Landroid/content/Context;)Z
    .registers 5

    .line 297
    sget-object v0, Lcom/android/internal/util/PropImitationHooks;->sDisableGmsProps:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 298
    return v1

    .line 302
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 305
    :try_start_e
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v2, "com.google.android.gms"

    invoke-virtual {p0, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shouldBypassTaskPermission: gmsUid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callingUid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/PropImitationHooks;->dlog(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_3b} :catch_40

    .line 310
    nop

    .line 311
    if-ne p0, v0, :cond_3f

    const/4 v1, 0x1

    :cond_3f
    return v1

    .line 307
    :catch_40
    move-exception p0

    .line 308
    const-string v0, "PropImitationHooks"

    const-string/jumbo v2, "shouldBypassTaskPermission: unable to get gms uid"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    return v1
.end method
