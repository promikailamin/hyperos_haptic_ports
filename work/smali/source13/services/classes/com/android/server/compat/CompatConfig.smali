.class final Lcom/android/server/compat/CompatConfig;
.super Ljava/lang/Object;
.source "CompatConfig.java"


# static fields
.field private static final APP_COMPAT_DATA_DIR:Ljava/lang/String; = "/data/misc/appcompat"

.field private static final OVERRIDES_FILE:Ljava/lang/String; = "compat_framework_overrides.xml"

.field private static final STATIC_OVERRIDES_PRODUCT_DIR:Ljava/lang/String; = "/product/etc/appcompat"

.field private static final TAG:Ljava/lang/String; = "CompatConfig"


# instance fields
.field private final mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

.field private mBackupOverridesFile:Ljava/io/File;

.field private final mChanges:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/server/compat/CompatChange;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

.field private mOverridesFile:Ljava/io/File;

.field private final mOverridesFileLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/internal/compat/AndroidBuildClassifier;Landroid/content/Context;)V
    .registers 4
    .param p1, "androidBuildClassifier"    # Lcom/android/internal/compat/AndroidBuildClassifier;
    .param p2, "context"    # Landroid/content/Context;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFileLock:Ljava/lang/Object;

    .line 94
    new-instance v0, Lcom/android/server/compat/OverrideValidatorImpl;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/server/compat/OverrideValidatorImpl;-><init>(Lcom/android/internal/compat/AndroidBuildClassifier;Landroid/content/Context;Lcom/android/server/compat/CompatConfig;)V

    iput-object v0, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

    .line 95
    iput-object p1, p0, Lcom/android/server/compat/CompatConfig;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    .line 96
    iput-object p2, p0, Lcom/android/server/compat/CompatConfig;->mContext:Landroid/content/Context;

    .line 97
    return-void
.end method

.method private addOverrideUnsafe(JLjava/lang/String;Landroid/app/compat/PackageOverride;)Z
    .registers 11
    .param p1, "changeId"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "overrides"    # Landroid/app/compat/PackageOverride;

    .line 278
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 279
    .local v0, "alreadyKnown":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

    .line 280
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/compat/OverrideValidatorImpl;->getOverrideAllowedState(JLjava/lang/String;)Lcom/android/internal/compat/OverrideAllowedState;

    move-result-object v1

    .line 281
    .local v1, "allowedState":Lcom/android/internal/compat/OverrideAllowedState;
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/compat/OverrideAllowedState;->enforce(JLjava/lang/String;)V

    .line 282
    invoke-direct {p0, p3}, Lcom/android/server/compat/CompatConfig;->getVersionCodeOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 284
    .local v2, "versionCode":Ljava/lang/Long;
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda1;

    invoke-direct {v5, v0, p1, p2}, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;J)V

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/compat/CompatChange;

    .line 288
    .local v3, "c":Lcom/android/server/compat/CompatChange;
    invoke-virtual {v3, p3, p4, v1, v2}, Lcom/android/server/compat/CompatChange;->addPackageOverride(Ljava/lang/String;Landroid/app/compat/PackageOverride;Lcom/android/internal/compat/OverrideAllowedState;Ljava/lang/Long;)V

    .line 289
    invoke-direct {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    .line 290
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    return v4
.end method

.method private addPackageOverridesWithoutSaving(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;Z)V
    .registers 9
    .param p1, "overrides"    # Lcom/android/internal/compat/CompatibilityOverrideConfig;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "skipUnknownChangeIds"    # Z

    .line 266
    iget-object v0, p1, Lcom/android/internal/compat/CompatibilityOverrideConfig;->overrides:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 267
    .local v1, "changeId":Ljava/lang/Long;
    if-eqz p3, :cond_41

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/server/compat/CompatConfig;->isKnownChangeId(J)Z

    move-result v2

    if-nez v2, :cond_41

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to add overrides for unknown Change ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Skipping Change ID."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CompatConfig"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    goto :goto_a

    .line 272
    :cond_41
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p1, Lcom/android/internal/compat/CompatibilityOverrideConfig;->overrides:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/compat/PackageOverride;

    invoke-direct {p0, v2, v3, p2, v4}, Lcom/android/server/compat/CompatConfig;->addOverrideUnsafe(JLjava/lang/String;Landroid/app/compat/PackageOverride;)Z

    .line 273
    .end local v1    # "changeId":Ljava/lang/Long;
    goto :goto_a

    .line 274
    :cond_51
    return-void
.end method

.method static create(Lcom/android/internal/compat/AndroidBuildClassifier;Landroid/content/Context;)Lcom/android/server/compat/CompatConfig;
    .registers 10
    .param p0, "androidBuildClassifier"    # Lcom/android/internal/compat/AndroidBuildClassifier;
    .param p1, "context"    # Landroid/content/Context;

    .line 100
    new-instance v0, Lcom/android/server/compat/CompatConfig;

    invoke-direct {v0, p0, p1}, Lcom/android/server/compat/CompatConfig;-><init>(Lcom/android/internal/compat/AndroidBuildClassifier;Landroid/content/Context;)V

    .line 101
    .local v0, "config":Lcom/android/server/compat/CompatConfig;
    nop

    .line 102
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "etc"

    const-string v3, "compatconfig"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v4

    .line 101
    invoke-static {v1, v4}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/compat/CompatConfig;->initConfigFromLib(Ljava/io/File;)V

    .line 103
    nop

    .line 104
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v4, "system_ext"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-static {v1, v4}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/compat/CompatConfig;->initConfigFromLib(Ljava/io/File;)V

    .line 106
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/ApexManager;->getActiveApexInfos()Ljava/util/List;

    move-result-object v1

    .line 107
    .local v1, "apexes":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ApexManager$ActiveApexInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_38
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_52

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/ApexManager$ActiveApexInfo;

    .line 108
    .local v5, "apex":Lcom/android/server/pm/ApexManager$ActiveApexInfo;
    iget-object v6, v5, Lcom/android/server/pm/ApexManager$ActiveApexInfo;->apexDirectory:Ljava/io/File;

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/server/compat/CompatConfig;->initConfigFromLib(Ljava/io/File;)V

    .line 110
    .end local v5    # "apex":Lcom/android/server/pm/ApexManager$ActiveApexInfo;
    goto :goto_38

    .line 111
    :cond_52
    invoke-direct {v0}, Lcom/android/server/compat/CompatConfig;->initOverrides()V

    .line 112
    invoke-direct {v0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    .line 113
    return-object v0
.end method

.method private getAllowedChangesSinceTargetSdkForPackage(Ljava/lang/String;I)[J
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetSdkVersion"    # I

    .line 466
    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    .line 467
    .local v0, "allowed":Landroid/util/LongArray;
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/compat/CompatChange;

    .line 468
    .local v2, "change":Lcom/android/server/compat/CompatChange;
    invoke-virtual {v2}, Lcom/android/server/compat/CompatChange;->getEnableSinceTargetSdk()I

    move-result v3

    if-eq v3, p2, :cond_22

    .line 469
    goto :goto_f

    .line 471
    :cond_22
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

    .line 472
    invoke-virtual {v2}, Lcom/android/server/compat/CompatChange;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, p1}, Lcom/android/server/compat/OverrideValidatorImpl;->getOverrideAllowedState(JLjava/lang/String;)Lcom/android/internal/compat/OverrideAllowedState;

    move-result-object v3

    .line 474
    .local v3, "allowedState":Lcom/android/internal/compat/OverrideAllowedState;
    iget v4, v3, Lcom/android/internal/compat/OverrideAllowedState;->state:I

    if-nez v4, :cond_37

    .line 475
    invoke-virtual {v2}, Lcom/android/server/compat/CompatChange;->getId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/util/LongArray;->add(J)V

    .line 477
    .end local v2    # "change":Lcom/android/server/compat/CompatChange;
    .end local v3    # "allowedState":Lcom/android/internal/compat/OverrideAllowedState;
    :cond_37
    goto :goto_f

    .line 478
    :cond_38
    invoke-virtual {v0}, Landroid/util/LongArray;->toArray()[J

    move-result-object v1

    return-object v1
.end method

.method private getVersionCodeOrNull(Ljava/lang/String;)Ljava/lang/Long;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 765
    :try_start_0
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x400000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 767
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-wide v1, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v1

    .line 768
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_13
    move-exception v0

    .line 769
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private initOverrides()V
    .registers 5

    .line 624
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/appcompat"

    const-string v2, "compat_framework_overrides.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v3, "/product/etc/appcompat"

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/compat/CompatConfig;->initOverrides(Ljava/io/File;Ljava/io/File;)V

    .line 626
    return-void
.end method

.method private invalidateCache()V
    .registers 1

    .line 742
    invoke-static {}, Landroid/app/compat/ChangeIdStateCache;->invalidate()V

    .line 743
    return-void
.end method

.method static synthetic lambda$addOverrideUnsafe$0(Ljava/util/concurrent/atomic/AtomicBoolean;JLjava/lang/Long;)Lcom/android/server/compat/CompatChange;
    .registers 5
    .param p0, "alreadyKnown"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p1, "changeId"    # J
    .param p3, "key"    # Ljava/lang/Long;

    .line 285
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 286
    new-instance v0, Lcom/android/server/compat/CompatChange;

    invoke-direct {v0, p1, p2}, Lcom/android/server/compat/CompatChange;-><init>(J)V

    return-object v0
.end method

.method private loadOverrides(Ljava/io/File;)V
    .registers 12
    .param p1, "overridesFile"    # Ljava/io/File;

    .line 660
    const-string v0, "CompatConfig"

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_9

    .line 662
    return-void

    .line 665
    :cond_9
    :try_start_9
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_13} :catch_93
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_9 .. :try_end_13} :catch_93
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_13} :catch_93

    .line 666
    .local v1, "in":Ljava/io/InputStream;
    :try_start_13
    invoke-static {v1}, Lcom/android/server/compat/overrides/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/compat/overrides/Overrides;

    move-result-object v2

    .line 667
    .local v2, "overrides":Lcom/android/server/compat/overrides/Overrides;
    if-nez v2, :cond_3d

    .line 668
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parsing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catchall {:try_start_13 .. :try_end_39} :catchall_89

    .line 681
    :try_start_39
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_93
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_39 .. :try_end_3c} :catch_93
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_39 .. :try_end_3c} :catch_93

    .line 669
    return-void

    .line 671
    :cond_3d
    :try_start_3d
    invoke-virtual {v2}, Lcom/android/server/compat/overrides/Overrides;->getChangeOverrides()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_45
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_84

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/compat/overrides/ChangeOverrides;

    .line 672
    .local v4, "changeOverrides":Lcom/android/server/compat/overrides/ChangeOverrides;
    invoke-virtual {v4}, Lcom/android/server/compat/overrides/ChangeOverrides;->getChangeId()J

    move-result-wide v5

    .line 673
    .local v5, "changeId":J
    iget-object v7, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/compat/CompatChange;

    .line 674
    .local v7, "compatChange":Lcom/android/server/compat/CompatChange;
    if-nez v7, :cond_80

    .line 675
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Change ID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not found. Skipping overrides for it."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    goto :goto_45

    .line 679
    :cond_80
    invoke-virtual {v7, v4}, Lcom/android/server/compat/CompatChange;->loadOverrides(Lcom/android/server/compat/overrides/ChangeOverrides;)V
    :try_end_83
    .catchall {:try_start_3d .. :try_end_83} :catchall_89

    .line 680
    .end local v4    # "changeOverrides":Lcom/android/server/compat/overrides/ChangeOverrides;
    .end local v5    # "changeId":J
    .end local v7    # "compatChange":Lcom/android/server/compat/CompatChange;
    goto :goto_45

    .line 681
    .end local v2    # "overrides":Lcom/android/server/compat/overrides/Overrides;
    :cond_84
    :try_start_84
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_93
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_84 .. :try_end_87} :catch_93
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_84 .. :try_end_87} :catch_93

    .line 684
    .end local v1    # "in":Ljava/io/InputStream;
    nop

    .line 685
    return-void

    .line 665
    .restart local v1    # "in":Ljava/io/InputStream;
    :catchall_89
    move-exception v2

    :try_start_8a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_8e

    goto :goto_92

    :catchall_8e
    move-exception v3

    :try_start_8f
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/compat/CompatConfig;
    .end local p1    # "overridesFile":Ljava/io/File;
    :goto_92
    throw v2
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_93} :catch_93
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_8f .. :try_end_93} :catch_93
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8f .. :try_end_93} :catch_93

    .line 681
    .end local v1    # "in":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/android/server/compat/CompatConfig;
    .restart local p1    # "overridesFile":Ljava/io/File;
    :catch_93
    move-exception v1

    .line 682
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error processing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    return-void
.end method

.method private makeBackupFile(Ljava/io/File;)Ljava/io/File;
    .registers 5
    .param p1, "overridesFile"    # Ljava/io/File;

    .line 656
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".bak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private readConfig(Ljava/io/File;)V
    .registers 10
    .param p1, "configFile"    # Ljava/io/File;

    .line 610
    const-string v0, "CompatConfig"

    :try_start_2
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_62
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_2 .. :try_end_c} :catch_62
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_c} :catch_62
    .catchall {:try_start_2 .. :try_end_c} :catchall_60

    .line 611
    .local v1, "in":Ljava/io/InputStream;
    :try_start_c
    invoke-static {v1}, Lcom/android/server/compat/config/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/compat/config/Config;

    move-result-object v2

    .line 612
    .local v2, "config":Lcom/android/server/compat/config/Config;
    invoke-virtual {v2}, Lcom/android/server/compat/config/Config;->getCompatChange()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/compat/config/Change;

    .line 613
    .local v4, "change":Lcom/android/server/compat/config/Change;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object v5, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Lcom/android/server/compat/config/Change;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    new-instance v7, Lcom/android/server/compat/CompatChange;

    invoke-direct {v7, v4}, Lcom/android/server/compat/CompatChange;-><init>(Lcom/android/server/compat/config/Change;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_50
    .catchall {:try_start_c .. :try_end_50} :catchall_56

    .line 615
    nop

    .end local v4    # "change":Lcom/android/server/compat/config/Change;
    goto :goto_18

    .line 616
    .end local v2    # "config":Lcom/android/server/compat/config/Config;
    :cond_52
    :try_start_52
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_62
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_52 .. :try_end_55} :catch_62
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_52 .. :try_end_55} :catch_62
    .catchall {:try_start_52 .. :try_end_55} :catchall_60

    .line 619
    .end local v1    # "in":Ljava/io/InputStream;
    goto :goto_69

    .line 610
    .restart local v1    # "in":Ljava/io/InputStream;
    :catchall_56
    move-exception v2

    :try_start_57
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5b

    goto :goto_5f

    :catchall_5b
    move-exception v3

    :try_start_5c
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/compat/CompatConfig;
    .end local p1    # "configFile":Ljava/io/File;
    :goto_5f
    throw v2
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_60} :catch_62
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_5c .. :try_end_60} :catch_62
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5c .. :try_end_60} :catch_62
    .catchall {:try_start_5c .. :try_end_60} :catchall_60

    .line 619
    .end local v1    # "in":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/android/server/compat/CompatConfig;
    .restart local p1    # "configFile":Ljava/io/File;
    :catchall_60
    move-exception v0

    goto :goto_6e

    .line 616
    :catch_62
    move-exception v1

    .line 617
    .local v1, "e":Ljava/lang/Exception;
    :try_start_63
    const-string v2, "Encountered an error while reading/parsing compat config file"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_68
    .catchall {:try_start_63 .. :try_end_68} :catchall_60

    .line 619
    nop

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_69
    invoke-direct {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    .line 620
    nop

    .line 621
    return-void

    .line 619
    :goto_6e
    invoke-direct {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    .line 620
    throw v0
.end method

.method private removeOverrideUnsafe(JLjava/lang/String;)Z
    .registers 7
    .param p1, "changeId"    # J
    .param p3, "packageName"    # Ljava/lang/String;

    .line 358
    invoke-direct {p0, p3}, Lcom/android/server/compat/CompatConfig;->getVersionCodeOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 359
    .local v0, "versionCode":Ljava/lang/Long;
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/compat/CompatChange;

    .line 360
    .local v1, "c":Lcom/android/server/compat/CompatChange;
    if-eqz v1, :cond_17

    .line 361
    invoke-direct {p0, v1, p3, v0}, Lcom/android/server/compat/CompatConfig;->removeOverrideUnsafe(Lcom/android/server/compat/CompatChange;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result v2

    return v2

    .line 363
    :cond_17
    const/4 v2, 0x0

    return v2
.end method

.method private removeOverrideUnsafe(Lcom/android/server/compat/CompatChange;Ljava/lang/String;Ljava/lang/Long;)Z
    .registers 8
    .param p1, "change"    # Lcom/android/server/compat/CompatChange;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "versionCode"    # Ljava/lang/Long;

    .line 372
    invoke-virtual {p1}, Lcom/android/server/compat/CompatChange;->getId()J

    move-result-wide v0

    .line 373
    .local v0, "changeId":J
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

    .line 374
    invoke-virtual {v2, v0, v1, p2}, Lcom/android/server/compat/OverrideValidatorImpl;->getOverrideAllowedState(JLjava/lang/String;)Lcom/android/internal/compat/OverrideAllowedState;

    move-result-object v2

    .line 375
    .local v2, "allowedState":Lcom/android/internal/compat/OverrideAllowedState;
    invoke-virtual {p1, p2, v2, p3}, Lcom/android/server/compat/CompatChange;->removePackageOverride(Ljava/lang/String;Lcom/android/internal/compat/OverrideAllowedState;Ljava/lang/Long;)Z

    move-result v3

    return v3
.end method

.method private removePackageOverridesWithoutSaving(Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;Ljava/lang/String;)Z
    .registers 8
    .param p1, "overridesToRemove"    # Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 452
    const/4 v0, 0x0

    .line 453
    .local v0, "shouldInvalidateCache":Z
    iget-object v1, p1, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;->changeIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 454
    .local v2, "changeId":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/server/compat/CompatConfig;->isKnownChangeId(J)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 455
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to remove overrides for unknown Change ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Skipping Change ID."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CompatConfig"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    goto :goto_7

    .line 459
    :cond_3c
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, v3, v4, p2}, Lcom/android/server/compat/CompatConfig;->removeOverrideUnsafe(JLjava/lang/String;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 460
    .end local v2    # "changeId":Ljava/lang/Long;
    goto :goto_7

    .line 461
    :cond_46
    return v0
.end method


# virtual methods
.method declared-synchronized addAllPackageOverrides(Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;Z)V
    .registers 6
    .param p1, "overridesByPackage"    # Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;
    .param p2, "skipUnknownChangeIds"    # Z

    monitor-enter p0

    .line 239
    :try_start_1
    iget-object v0, p1, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;->packageNameToOverrides:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 240
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;->packageNameToOverrides:Ljava/util/Map;

    .line 241
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/compat/CompatibilityOverrideConfig;

    .line 240
    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/compat/CompatConfig;->addPackageOverridesWithoutSaving(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;Z)V

    .line 243
    .end local v1    # "packageName":Ljava/lang/String;
    goto :goto_b

    .line 244
    .end local p0    # "this":Lcom/android/server/compat/CompatConfig;
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 245
    invoke-direct {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 246
    monitor-exit p0

    return-void

    .line 238
    .end local p1    # "overridesByPackage":Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;
    .end local p2    # "skipUnknownChangeIds":Z
    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method addChange(Lcom/android/server/compat/CompatChange;)V
    .registers 5
    .param p1, "change"    # Lcom/android/server/compat/CompatChange;

    .line 125
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/android/server/compat/CompatChange;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method

.method declared-synchronized addOverride(JLjava/lang/String;Z)Z
    .registers 6
    .param p1, "changeId"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "enabled"    # Z

    monitor-enter p0

    .line 217
    :try_start_1
    new-instance v0, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v0}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    .line 218
    invoke-virtual {v0, p4}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v0

    .line 217
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/compat/CompatConfig;->addOverrideUnsafe(JLjava/lang/String;Landroid/app/compat/PackageOverride;)Z

    move-result v0

    .line 219
    .local v0, "alreadyKnown":Z
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 220
    invoke-direct {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 221
    monitor-exit p0

    return v0

    .line 216
    .end local v0    # "alreadyKnown":Z
    .end local p0    # "this":Lcom/android/server/compat/CompatConfig;
    .end local p1    # "changeId":J
    .end local p3    # "packageName":Ljava/lang/String;
    .end local p4    # "enabled":Z
    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized addPackageOverrides(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "overrides"    # Lcom/android/internal/compat/CompatibilityOverrideConfig;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "skipUnknownChangeIds"    # Z

    monitor-enter p0

    .line 259
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/compat/CompatConfig;->addPackageOverridesWithoutSaving(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;Z)V

    .line 260
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 261
    invoke-direct {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 262
    monitor-exit p0

    return-void

    .line 258
    .end local p0    # "this":Lcom/android/server/compat/CompatConfig;
    .end local p1    # "overrides":Lcom/android/internal/compat/CompatibilityOverrideConfig;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "skipUnknownChangeIds":Z
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method clearChanges()V
    .registers 2

    .line 547
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 548
    return-void
.end method

.method defaultChangeIdValue(J)Z
    .registers 5
    .param p1, "changeId"    # J

    .line 533
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/compat/CompatChange;

    .line 534
    .local v0, "c":Lcom/android/server/compat/CompatChange;
    if-nez v0, :cond_10

    .line 535
    const/4 v1, 0x1

    return v1

    .line 537
    :cond_10
    invoke-virtual {v0}, Lcom/android/server/compat/CompatChange;->defaultValue()Z

    move-result v1

    return v1
.end method

.method disableTargetSdkChangesForPackage(Ljava/lang/String;I)I
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetSdkVersion"    # I

    .line 508
    invoke-direct {p0, p1, p2}, Lcom/android/server/compat/CompatConfig;->getAllowedChangesSinceTargetSdkForPackage(Ljava/lang/String;I)[J

    move-result-object v0

    .line 509
    .local v0, "changes":[J
    const/4 v1, 0x0

    .line 510
    .local v1, "shouldInvalidateCache":Z
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_8
    if-ge v4, v2, :cond_21

    aget-wide v5, v0, v4

    .line 511
    .local v5, "changeId":J
    new-instance v7, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v7}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    .line 512
    invoke-virtual {v7, v3}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v7

    .line 511
    invoke-direct {p0, v5, v6, p1, v7}, Lcom/android/server/compat/CompatConfig;->addOverrideUnsafe(JLjava/lang/String;Landroid/app/compat/PackageOverride;)Z

    move-result v7

    or-int/2addr v1, v7

    .line 510
    .end local v5    # "changeId":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 514
    :cond_21
    if-eqz v1, :cond_29

    .line 515
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 516
    invoke-direct {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    .line 518
    :cond_29
    array-length v2, v0

    return v2
.end method

.method dumpChanges()[Lcom/android/internal/compat/CompatibilityChangeInfo;
    .registers 7

    .line 589
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/compat/CompatibilityChangeInfo;

    .line 590
    .local v0, "changeInfos":[Lcom/android/internal/compat/CompatibilityChangeInfo;
    const/4 v1, 0x0

    .line 591
    .local v1, "i":I
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/compat/CompatChange;

    .line 592
    .local v3, "change":Lcom/android/server/compat/CompatChange;
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    new-instance v5, Lcom/android/internal/compat/CompatibilityChangeInfo;

    invoke-direct {v5, v3}, Lcom/android/internal/compat/CompatibilityChangeInfo;-><init>(Lcom/android/internal/compat/CompatibilityChangeInfo;)V

    aput-object v5, v0, v1

    .line 593
    .end local v3    # "change":Lcom/android/server/compat/CompatChange;
    move v1, v4

    goto :goto_13

    .line 594
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_2a
    return-object v0
.end method

.method dumpConfig(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 556
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 557
    const-string v0, "No compat overrides."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 558
    return-void

    .line 560
    :cond_e
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/compat/CompatChange;

    .line 561
    .local v1, "c":Lcom/android/server/compat/CompatChange;
    invoke-virtual {v1}, Lcom/android/server/compat/CompatChange;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 562
    .end local v1    # "c":Lcom/android/server/compat/CompatChange;
    goto :goto_18

    .line 563
    :cond_2c
    return-void
.end method

.method enableTargetSdkChangesForPackage(Ljava/lang/String;I)I
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetSdkVersion"    # I

    .line 488
    invoke-direct {p0, p1, p2}, Lcom/android/server/compat/CompatConfig;->getAllowedChangesSinceTargetSdkForPackage(Ljava/lang/String;I)[J

    move-result-object v0

    .line 489
    .local v0, "changes":[J
    const/4 v1, 0x0

    .line 490
    .local v1, "shouldInvalidateCache":Z
    array-length v2, v0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_21

    aget-wide v4, v0, v3

    .line 491
    .local v4, "changeId":J
    new-instance v6, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v6}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    .line 492
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v6

    .line 491
    invoke-direct {p0, v4, v5, p1, v6}, Lcom/android/server/compat/CompatConfig;->addOverrideUnsafe(JLjava/lang/String;Landroid/app/compat/PackageOverride;)Z

    move-result v6

    or-int/2addr v1, v6

    .line 490
    .end local v4    # "changeId":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 494
    :cond_21
    if-eqz v1, :cond_29

    .line 495
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 496
    invoke-direct {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    .line 498
    :cond_29
    array-length v2, v0

    return v2
.end method

.method forceNonDebuggableFinalForTest(Z)V
    .registers 3
    .param p1, "value"    # Z

    .line 542
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/compat/OverrideValidatorImpl;->forceNonDebuggableFinalForTest(Z)V

    .line 543
    return-void
.end method

.method getAppConfig(Landroid/content/pm/ApplicationInfo;)Lcom/android/internal/compat/CompatibilityChangeConfig;
    .registers 8
    .param p1, "applicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 571
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 572
    .local v0, "enabled":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 573
    .local v1, "disabled":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/compat/CompatChange;

    .line 574
    .local v3, "c":Lcom/android/server/compat/CompatChange;
    iget-object v4, p0, Lcom/android/server/compat/CompatConfig;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-virtual {v3, p1, v4}, Lcom/android/server/compat/CompatChange;->isEnabled(Landroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/AndroidBuildClassifier;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 575
    invoke-virtual {v3}, Lcom/android/server/compat/CompatChange;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 577
    :cond_34
    invoke-virtual {v3}, Lcom/android/server/compat/CompatChange;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 579
    .end local v3    # "c":Lcom/android/server/compat/CompatChange;
    :goto_3f
    goto :goto_14

    .line 580
    :cond_40
    new-instance v2, Lcom/android/internal/compat/CompatibilityChangeConfig;

    new-instance v3, Landroid/compat/Compatibility$ChangeConfig;

    invoke-direct {v3, v0, v1}, Landroid/compat/Compatibility$ChangeConfig;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    invoke-direct {v2, v3}, Lcom/android/internal/compat/CompatibilityChangeConfig;-><init>(Landroid/compat/Compatibility$ChangeConfig;)V

    return-object v2
.end method

.method getDisabledChanges(Landroid/content/pm/ApplicationInfo;)[J
    .registers 7
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    .line 140
    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    .line 141
    .local v0, "disabled":Landroid/util/LongArray;
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/compat/CompatChange;

    .line 142
    .local v2, "c":Lcom/android/server/compat/CompatChange;
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/compat/CompatChange;->isEnabled(Landroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/AndroidBuildClassifier;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 143
    invoke-virtual {v2}, Lcom/android/server/compat/CompatChange;->getId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/util/LongArray;->add(J)V

    .line 145
    .end local v2    # "c":Lcom/android/server/compat/CompatChange;
    :cond_2a
    goto :goto_f

    .line 146
    :cond_2b
    invoke-virtual {v0}, Landroid/util/LongArray;->toArray()[J

    move-result-object v1

    .line 147
    .local v1, "sortedChanges":[J
    invoke-static {v1}, Ljava/util/Arrays;->sort([J)V

    .line 148
    return-object v1
.end method

.method getOverrideValidator()Lcom/android/internal/compat/IOverrideValidator;
    .registers 2

    .line 738
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

    return-object v0
.end method

.method initConfigFromLib(Ljava/io/File;)V
    .registers 9
    .param p1, "libraryDir"    # Ljava/io/File;

    .line 598
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "CompatConfig"

    if-eqz v0, :cond_3a

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_3a

    .line 602
    :cond_f
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v2, :cond_39

    aget-object v4, v0, v3

    .line 603
    .local v4, "f":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found a config file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-direct {p0, v4}, Lcom/android/server/compat/CompatConfig;->readConfig(Ljava/io/File;)V

    .line 602
    .end local v4    # "f":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 607
    :cond_39
    return-void

    .line 599
    :cond_3a
    :goto_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No directory "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", skipping"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    return-void
.end method

.method initOverrides(Ljava/io/File;Ljava/io/File;)V
    .registers 6
    .param p1, "dynamicOverridesFile"    # Ljava/io/File;
    .param p2, "staticOverridesFile"    # Ljava/io/File;

    .line 632
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/compat/CompatChange;

    .line 633
    .local v1, "c":Lcom/android/server/compat/CompatChange;
    invoke-virtual {v1}, Lcom/android/server/compat/CompatChange;->clearOverrides()V

    .line 634
    .end local v1    # "c":Lcom/android/server/compat/CompatChange;
    goto :goto_a

    .line 637
    :cond_1a
    invoke-direct {p0, p2}, Lcom/android/server/compat/CompatConfig;->loadOverrides(Ljava/io/File;)V

    .line 639
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFileLock:Ljava/lang/Object;

    monitor-enter v0

    .line 640
    :try_start_20
    iput-object p1, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    .line 641
    invoke-direct {p0, p1}, Lcom/android/server/compat/CompatConfig;->makeBackupFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/compat/CompatConfig;->mBackupOverridesFile:Ljava/io/File;

    .line 642
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 643
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 644
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mBackupOverridesFile:Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 646
    :cond_3a
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/android/server/compat/CompatConfig;->loadOverrides(Ljava/io/File;)V

    .line 647
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_20 .. :try_end_40} :catchall_4a

    .line 649
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 651
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 653
    :cond_49
    return-void

    .line 647
    :catchall_4a
    move-exception v1

    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z
    .registers 6
    .param p1, "changeId"    # J
    .param p3, "app"    # Landroid/content/pm/ApplicationInfo;

    .line 175
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/compat/CompatChange;

    .line 176
    .local v0, "c":Lcom/android/server/compat/CompatChange;
    if-nez v0, :cond_10

    .line 178
    const/4 v1, 0x1

    return v1

    .line 180
    :cond_10
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-virtual {v0, p3, v1}, Lcom/android/server/compat/CompatChange;->isEnabled(Landroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/AndroidBuildClassifier;)Z

    move-result v1

    return v1
.end method

.method isDisabled(J)Z
    .registers 5
    .param p1, "changeId"    # J

    .line 322
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/compat/CompatChange;

    .line 323
    .local v0, "c":Lcom/android/server/compat/CompatChange;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/server/compat/CompatChange;->getDisabled()Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method isKnownChangeId(J)Z
    .registers 5
    .param p1, "changeId"    # J

    .line 295
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isLoggingOnly(J)Z
    .registers 5
    .param p1, "changeId"    # J

    .line 314
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/compat/CompatChange;

    .line 315
    .local v0, "c":Lcom/android/server/compat/CompatChange;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/server/compat/CompatChange;->getLoggingOnly()Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method isOverridable(J)Z
    .registers 5
    .param p1, "changeId"    # J

    .line 330
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/compat/CompatChange;

    .line 331
    .local v0, "c":Lcom/android/server/compat/CompatChange;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/server/compat/CompatChange;->getOverridable()Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method synthetic lambda$registerListener$1$com-android-server-compat-CompatConfig(Ljava/util/concurrent/atomic/AtomicBoolean;JLjava/lang/Long;)Lcom/android/server/compat/CompatChange;
    .registers 6
    .param p1, "alreadyKnown"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p2, "changeId"    # J
    .param p4, "key"    # Ljava/lang/Long;

    .line 524
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 525
    invoke-direct {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    .line 526
    new-instance v0, Lcom/android/server/compat/CompatChange;

    invoke-direct {v0, p2, p3}, Lcom/android/server/compat/CompatChange;-><init>(J)V

    return-object v0
.end method

.method lookupChangeId(Ljava/lang/String;)J
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/compat/CompatChange;

    .line 159
    .local v1, "c":Lcom/android/server/compat/CompatChange;
    invoke-virtual {v1}, Lcom/android/server/compat/CompatChange;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 160
    invoke-virtual {v1}, Lcom/android/server/compat/CompatChange;->getId()J

    move-result-wide v2

    return-wide v2

    .line 162
    .end local v1    # "c":Lcom/android/server/compat/CompatChange;
    :cond_25
    goto :goto_a

    .line 163
    :cond_26
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method maxTargetSdkForChangeIdOptIn(J)I
    .registers 6
    .param p1, "changeId"    # J

    .line 303
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/compat/CompatChange;

    .line 304
    .local v0, "c":Lcom/android/server/compat/CompatChange;
    const/4 v1, -0x1

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/android/server/compat/CompatChange;->getEnableSinceTargetSdk()I

    move-result v2

    if-eq v2, v1, :cond_1c

    .line 305
    invoke-virtual {v0}, Lcom/android/server/compat/CompatChange;->getEnableSinceTargetSdk()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1

    .line 307
    :cond_1c
    return v1
.end method

.method recheckOverrides(Ljava/lang/String;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .line 749
    invoke-direct {p0, p1}, Lcom/android/server/compat/CompatConfig;->getVersionCodeOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 750
    .local v0, "versionCode":Ljava/lang/Long;
    const/4 v1, 0x0

    .line 751
    .local v1, "shouldInvalidateCache":Z
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/compat/CompatChange;

    .line 752
    .local v3, "c":Lcom/android/server/compat/CompatChange;
    iget-object v4, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

    .line 753
    invoke-virtual {v3}, Lcom/android/server/compat/CompatChange;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, p1}, Lcom/android/server/compat/OverrideValidatorImpl;->getOverrideAllowedStateForRecheck(JLjava/lang/String;)Lcom/android/internal/compat/OverrideAllowedState;

    move-result-object v4

    .line 755
    .local v4, "allowedState":Lcom/android/internal/compat/OverrideAllowedState;
    invoke-virtual {v3, p1, v4, v0}, Lcom/android/server/compat/CompatChange;->recheckOverride(Ljava/lang/String;Lcom/android/internal/compat/OverrideAllowedState;Ljava/lang/Long;)Z

    move-result v5

    or-int/2addr v1, v5

    .line 756
    .end local v3    # "c":Lcom/android/server/compat/CompatChange;
    .end local v4    # "allowedState":Lcom/android/internal/compat/OverrideAllowedState;
    goto :goto_f

    .line 757
    :cond_2b
    if-eqz v1, :cond_30

    .line 758
    invoke-direct {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V

    .line 760
    :cond_30
    return-void
.end method

.method registerContentObserver()V
    .registers 2

    .line 774
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mOverrideValidator:Lcom/android/server/compat/OverrideValidatorImpl;

    invoke-virtual {v0}, Lcom/android/server/compat/OverrideValidatorImpl;->registerContentObserver()V

    .line 775
    return-void
.end method

.method registerListener(JLcom/android/server/compat/CompatChange$ChangeListener;)Z
    .registers 8
    .param p1, "changeId"    # J
    .param p3, "listener"    # Lcom/android/server/compat/CompatChange$ChangeListener;

    .line 522
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 523
    .local v0, "alreadyKnown":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/android/server/compat/CompatConfig$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/compat/CompatConfig;Ljava/util/concurrent/atomic/AtomicBoolean;J)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/compat/CompatChange;

    .line 528
    .local v1, "c":Lcom/android/server/compat/CompatChange;
    invoke-virtual {v1, p3}, Lcom/android/server/compat/CompatChange;->registerListener(Lcom/android/server/compat/CompatChange$ChangeListener;)V

    .line 529
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    return v2
.end method

.method declared-synchronized removeAllPackageOverrides(Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;)V
    .registers 6
    .param p1, "overridesToRemoveByPackage"    # Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;

    monitor-enter p0

    .line 395
    const/4 v0, 0x0

    .line 397
    .local v0, "shouldInvalidateCache":Z
    :try_start_2
    iget-object v1, p1, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;->packageNameToOverridesToRemove:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 398
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;->packageNameToOverridesToRemove:Ljava/util/Map;

    .line 399
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;

    .line 398
    invoke-direct {p0, v3, v2}, Lcom/android/server/compat/CompatConfig;->removePackageOverridesWithoutSaving(Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;Ljava/lang/String;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 401
    .end local v2    # "packageName":Ljava/lang/String;
    goto :goto_c

    .line 402
    .end local p0    # "this":Lcom/android/server/compat/CompatConfig;
    :cond_26
    if-eqz v0, :cond_2e

    .line 403
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 404
    invoke-direct {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V
    :try_end_2e
    .catchall {:try_start_2 .. :try_end_2e} :catchall_30

    .line 406
    :cond_2e
    monitor-exit p0

    return-void

    .line 394
    .end local v0    # "shouldInvalidateCache":Z
    .end local p1    # "overridesToRemoveByPackage":Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;
    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized removeOverride(JLjava/lang/String;)Z
    .registers 5
    .param p1, "changeId"    # J
    .param p3, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 345
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/compat/CompatConfig;->removeOverrideUnsafe(JLjava/lang/String;)Z

    move-result v0

    .line 346
    .local v0, "overrideExists":Z
    if-eqz v0, :cond_d

    .line 347
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 348
    invoke-direct {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 350
    .end local p0    # "this":Lcom/android/server/compat/CompatConfig;
    :cond_d
    monitor-exit p0

    return v0

    .line 344
    .end local v0    # "overrideExists":Z
    .end local p1    # "changeId":J
    .end local p3    # "packageName":Ljava/lang/String;
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized removePackageOverrides(Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;Ljava/lang/String;)V
    .registers 4
    .param p1, "overridesToRemove"    # Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;
    .param p2, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 442
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/compat/CompatConfig;->removePackageOverridesWithoutSaving(Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;Ljava/lang/String;)Z

    move-result v0

    .line 444
    .local v0, "shouldInvalidateCache":Z
    if-eqz v0, :cond_d

    .line 445
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 446
    invoke-direct {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 448
    .end local p0    # "this":Lcom/android/server/compat/CompatConfig;
    :cond_d
    monitor-exit p0

    return-void

    .line 441
    .end local v0    # "shouldInvalidateCache":Z
    .end local p1    # "overridesToRemove":Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;
    .end local p2    # "packageName":Ljava/lang/String;
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized removePackageOverrides(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 418
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/compat/CompatConfig;->getVersionCodeOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 419
    .local v0, "versionCode":Ljava/lang/Long;
    const/4 v1, 0x0

    .line 420
    .local v1, "shouldInvalidateCache":Z
    iget-object v2, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/compat/CompatChange;

    .line 421
    .local v3, "change":Lcom/android/server/compat/CompatChange;
    invoke-direct {p0, v3, p1, v0}, Lcom/android/server/compat/CompatConfig;->removeOverrideUnsafe(Lcom/android/server/compat/CompatChange;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result v4

    or-int/2addr v1, v4

    .line 422
    .end local v3    # "change":Lcom/android/server/compat/CompatChange;
    goto :goto_10

    .line 423
    .end local p0    # "this":Lcom/android/server/compat/CompatConfig;
    :cond_22
    if-eqz v1, :cond_2a

    .line 424
    invoke-virtual {p0}, Lcom/android/server/compat/CompatConfig;->saveOverrides()V

    .line 425
    invoke-direct {p0}, Lcom/android/server/compat/CompatConfig;->invalidateCache()V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    .line 427
    :cond_2a
    monitor-exit p0

    return-void

    .line 417
    .end local v0    # "versionCode":Ljava/lang/Long;
    .end local v1    # "shouldInvalidateCache":Z
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method saveOverrides()V
    .registers 8

    .line 691
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFileLock:Ljava/lang/Object;

    monitor-enter v0

    .line 692
    :try_start_3
    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    if-eqz v1, :cond_d2

    iget-object v1, p0, Lcom/android/server/compat/CompatConfig;->mBackupOverridesFile:Ljava/io/File;

    if-nez v1, :cond_d

    goto/16 :goto_d2

    .line 696
    :cond_d
    new-instance v1, Lcom/android/server/compat/overrides/Overrides;

    invoke-direct {v1}, Lcom/android/server/compat/overrides/Overrides;-><init>()V

    .line 697
    .local v1, "overrides":Lcom/android/server/compat/overrides/Overrides;
    invoke-virtual {v1}, Lcom/android/server/compat/overrides/Overrides;->getChangeOverrides()Ljava/util/List;

    move-result-object v2

    .line 698
    .local v2, "changeOverridesList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/compat/overrides/ChangeOverrides;>;"
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/compat/CompatChange;

    .line 699
    .local v4, "c":Lcom/android/server/compat/CompatChange;
    invoke-virtual {v4}, Lcom/android/server/compat/CompatChange;->saveOverrides()Lcom/android/server/compat/overrides/ChangeOverrides;

    move-result-object v5

    .line 700
    .local v5, "changeOverrides":Lcom/android/server/compat/overrides/ChangeOverrides;
    if-eqz v5, :cond_35

    .line 701
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 703
    .end local v4    # "c":Lcom/android/server/compat/CompatChange;
    .end local v5    # "changeOverrides":Lcom/android/server/compat/overrides/ChangeOverrides;
    :cond_35
    goto :goto_20

    .line 706
    :cond_36
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 707
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mBackupOverridesFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 708
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_7e

    .line 710
    :cond_4c
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/compat/CompatConfig;->mBackupOverridesFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_7e

    .line 711
    const-string v3, "CompatConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t rename file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/compat/CompatConfig;->mBackupOverridesFile:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_3 .. :try_end_7d} :catchall_d4

    return-void

    .line 720
    :cond_7e
    :goto_7e
    :try_start_7e
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_83} :catch_b3
    .catchall {:try_start_7e .. :try_end_83} :catchall_d4

    .line 724
    nop

    .line 725
    :try_start_84
    new-instance v3, Ljava/io/PrintWriter;

    iget-object v4, p0, Lcom/android/server/compat/CompatConfig;->mOverridesFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_8b} :catch_a1
    .catchall {:try_start_84 .. :try_end_8b} :catchall_d4

    .line 726
    .local v3, "out":Ljava/io/PrintWriter;
    :try_start_8b
    new-instance v4, Lcom/android/server/compat/overrides/XmlWriter;

    invoke-direct {v4, v3}, Lcom/android/server/compat/overrides/XmlWriter;-><init>(Ljava/io/PrintWriter;)V

    .line 727
    .local v4, "writer":Lcom/android/server/compat/overrides/XmlWriter;
    invoke-static {v4, v1}, Lcom/android/server/compat/overrides/XmlWriter;->write(Lcom/android/server/compat/overrides/XmlWriter;Lcom/android/server/compat/overrides/Overrides;)V
    :try_end_93
    .catchall {:try_start_8b .. :try_end_93} :catchall_97

    .line 728
    .end local v4    # "writer":Lcom/android/server/compat/overrides/XmlWriter;
    :try_start_93
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_96} :catch_a1
    .catchall {:try_start_93 .. :try_end_96} :catchall_d4

    .line 730
    .end local v3    # "out":Ljava/io/PrintWriter;
    goto :goto_ab

    .line 725
    .restart local v3    # "out":Ljava/io/PrintWriter;
    :catchall_97
    move-exception v4

    :try_start_98
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_9c

    goto :goto_a0

    :catchall_9c
    move-exception v5

    :try_start_9d
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "overrides":Lcom/android/server/compat/overrides/Overrides;
    .end local v2    # "changeOverridesList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/compat/overrides/ChangeOverrides;>;"
    .end local p0    # "this":Lcom/android/server/compat/CompatConfig;
    :goto_a0
    throw v4
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a1} :catch_a1
    .catchall {:try_start_9d .. :try_end_a1} :catchall_d4

    .line 728
    .end local v3    # "out":Ljava/io/PrintWriter;
    .restart local v1    # "overrides":Lcom/android/server/compat/overrides/Overrides;
    .restart local v2    # "changeOverridesList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/compat/overrides/ChangeOverrides;>;"
    .restart local p0    # "this":Lcom/android/server/compat/CompatConfig;
    :catch_a1
    move-exception v3

    .line 729
    .local v3, "e":Ljava/io/IOException;
    :try_start_a2
    const-string v4, "CompatConfig"

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    .end local v3    # "e":Ljava/io/IOException;
    :goto_ab
    iget-object v3, p0, Lcom/android/server/compat/CompatConfig;->mBackupOverridesFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 734
    nop

    .end local v1    # "overrides":Lcom/android/server/compat/overrides/Overrides;
    .end local v2    # "changeOverridesList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/compat/overrides/ChangeOverrides;>;"
    monitor-exit v0

    .line 735
    return-void

    .line 721
    .restart local v1    # "overrides":Lcom/android/server/compat/overrides/Overrides;
    .restart local v2    # "changeOverridesList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/compat/overrides/ChangeOverrides;>;"
    :catch_b3
    move-exception v3

    .line 722
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v4, "CompatConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not create override config file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    monitor-exit v0

    return-void

    .line 693
    .end local v1    # "overrides":Lcom/android/server/compat/overrides/Overrides;
    .end local v2    # "changeOverridesList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/compat/overrides/ChangeOverrides;>;"
    .end local v3    # "e":Ljava/io/IOException;
    :cond_d2
    :goto_d2
    monitor-exit v0

    return-void

    .line 734
    :catchall_d4
    move-exception v1

    monitor-exit v0
    :try_end_d6
    .catchall {:try_start_a2 .. :try_end_d6} :catchall_d4

    throw v1
.end method

.method willChangeBeEnabled(JLjava/lang/String;)Z
    .registers 6
    .param p1, "changeId"    # J
    .param p3, "packageName"    # Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/compat/CompatChange;

    .line 193
    .local v0, "c":Lcom/android/server/compat/CompatChange;
    if-nez v0, :cond_10

    .line 195
    const/4 v1, 0x1

    return v1

    .line 197
    :cond_10
    invoke-virtual {v0, p3}, Lcom/android/server/compat/CompatChange;->willBeEnabled(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method
