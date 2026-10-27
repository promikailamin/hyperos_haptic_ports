.class public final Lcom/android/server/compat/CompatChange;
.super Lcom/android/internal/compat/CompatibilityChangeInfo;
.source "CompatChange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/compat/CompatChange$ChangeListener;
    }
.end annotation


# static fields
.field static final CTS_SYSTEM_API_CHANGEID:J = 0x8e787b1L

.field static final CTS_SYSTEM_API_OVERRIDABLE_CHANGEID:J = 0xa5faf9fL


# instance fields
.field private mEvaluatedOverrides:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mListener:Lcom/android/server/compat/CompatChange$ChangeListener;

.field private mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/app/compat/PackageOverride;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .registers 13
    .param p1, "changeId"    # J

    .line 89
    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/server/compat/CompatChange;-><init>(JLjava/lang/String;IIZZLjava/lang/String;Z)V

    .line 90
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;IIZZLjava/lang/String;Z)V
    .registers 20
    .param p1, "changeId"    # J
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "enableAfterTargetSdk"    # I
    .param p5, "enableSinceTargetSdk"    # I
    .param p6, "disabled"    # Z
    .param p7, "loggingOnly"    # Z
    .param p8, "description"    # Ljava/lang/String;
    .param p9, "overridable"    # Z

    .line 113
    move-object v9, p0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/compat/CompatibilityChangeInfo;-><init>(Ljava/lang/Long;Ljava/lang/String;IIZZLjava/lang/String;Z)V

    .line 83
    const/4 v0, 0x0

    iput-object v0, v9, Lcom/android/server/compat/CompatChange;->mListener:Lcom/android/server/compat/CompatChange$ChangeListener;

    .line 117
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v9, Lcom/android/server/compat/CompatChange;->mEvaluatedOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    .line 118
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, v9, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    .line 119
    return-void
.end method

.method public constructor <init>(Lcom/android/server/compat/config/Change;)V
    .registers 12
    .param p1, "change"    # Lcom/android/server/compat/config/Change;

    .line 96
    invoke-virtual {p1}, Lcom/android/server/compat/config/Change;->getId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/android/server/compat/config/Change;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/compat/config/Change;->getEnableAfterTargetSdk()I

    move-result v4

    .line 97
    invoke-virtual {p1}, Lcom/android/server/compat/config/Change;->getEnableSinceTargetSdk()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/server/compat/config/Change;->getDisabled()Z

    move-result v6

    invoke-virtual {p1}, Lcom/android/server/compat/config/Change;->getLoggingOnly()Z

    move-result v7

    .line 98
    invoke-virtual {p1}, Lcom/android/server/compat/config/Change;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/compat/config/Change;->getOverridable()Z

    move-result v9

    .line 96
    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/server/compat/CompatChange;-><init>(JLjava/lang/String;IIZZLjava/lang/String;Z)V

    .line 99
    return-void
.end method

.method private addPackageOverrideInternal(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "pname"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 138
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getLoggingOnly()Z

    move-result v0

    if-nez v0, :cond_13

    .line 142
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mEvaluatedOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-direct {p0, p1}, Lcom/android/server/compat/CompatChange;->notifyListener(Ljava/lang/String;)V

    .line 144
    return-void

    .line 139
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t add overrides for a logging only change "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 140
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized notifyListener(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 393
    :try_start_1
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mListener:Lcom/android/server/compat/CompatChange$ChangeListener;

    if-eqz v0, :cond_8

    .line 394
    invoke-interface {v0, p1}, Lcom/android/server/compat/CompatChange$ChangeListener;->onCompatChange(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 396
    .end local p0    # "this":Lcom/android/server/compat/CompatChange;
    :cond_8
    monitor-exit p0

    return-void

    .line 392
    .end local p1    # "packageName":Ljava/lang/String;
    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private removePackageOverrideInternal(Ljava/lang/String;)V
    .registers 3
    .param p1, "pname"    # Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mEvaluatedOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 148
    invoke-direct {p0, p1}, Lcom/android/server/compat/CompatChange;->notifyListener(Ljava/lang/String;)V

    .line 150
    :cond_b
    return-void
.end method


# virtual methods
.method declared-synchronized addPackageOverride(Ljava/lang/String;Landroid/app/compat/PackageOverride;Lcom/android/internal/compat/OverrideAllowedState;Ljava/lang/Long;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "override"    # Landroid/app/compat/PackageOverride;
    .param p3, "allowedState"    # Lcom/android/internal/compat/OverrideAllowedState;
    .param p4, "versionCode"    # Ljava/lang/Long;

    monitor-enter p0

    .line 163
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getLoggingOnly()Z

    move-result v0

    if-nez v0, :cond_11

    .line 167
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/compat/CompatChange;->recheckOverride(Ljava/lang/String;Lcom/android/internal/compat/OverrideAllowedState;Ljava/lang/Long;)Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_2e

    .line 169
    monitor-exit p0

    return-void

    .line 164
    .end local p0    # "this":Lcom/android/server/compat/CompatChange;
    :cond_11
    :try_start_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t add overrides for a logging only change "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 165
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_2e

    .line 162
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "override":Landroid/app/compat/PackageOverride;
    .end local p3    # "allowedState":Lcom/android/internal/compat/OverrideAllowedState;
    .end local p4    # "versionCode":Ljava/lang/Long;
    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized clearOverrides()V
    .registers 2

    monitor-enter p0

    .line 297
    :try_start_1
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 298
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mEvaluatedOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 299
    monitor-exit p0

    return-void

    .line 296
    .end local p0    # "this":Lcom/android/server/compat/CompatChange;
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method defaultValue()Z
    .registers 2

    .line 293
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getDisabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isEnabled(Landroid/content/pm/ApplicationInfo;Lcom/android/internal/compat/AndroidBuildClassifier;)Z
    .registers 7
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "buildClassifier"    # Lcom/android/internal/compat/AndroidBuildClassifier;

    .line 239
    if-nez p1, :cond_7

    .line 240
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->defaultValue()Z

    move-result v0

    return v0

    .line 242
    :cond_7
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 243
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mEvaluatedOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 244
    .local v0, "enabled":Ljava/lang/Boolean;
    if-eqz v0, :cond_1c

    .line 245
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 248
    .end local v0    # "enabled":Ljava/lang/Boolean;
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getDisabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 249
    return v1

    .line 251
    :cond_24
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getEnableSinceTargetSdk()I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v2, :cond_44

    .line 254
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {p2}, Lcom/android/internal/compat/AndroidBuildClassifier;->platformTargetSdk()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 255
    .local v0, "compareSdk":I
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-eq v0, v2, :cond_3c

    .line 256
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 258
    :cond_3c
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getEnableSinceTargetSdk()I

    move-result v2

    if-lt v0, v2, :cond_43

    move v1, v3

    :cond_43
    return v1

    .line 260
    .end local v0    # "compareSdk":I
    :cond_44
    return v3
.end method

.method declared-synchronized loadOverrides(Lcom/android/server/compat/overrides/ChangeOverrides;)V
    .registers 8
    .param p1, "changeOverrides"    # Lcom/android/server/compat/overrides/ChangeOverrides;

    monitor-enter p0

    .line 303
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/compat/overrides/ChangeOverrides;->getDeferred()Lcom/android/server/compat/overrides/ChangeOverrides$Deferred;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 304
    invoke-virtual {p1}, Lcom/android/server/compat/overrides/ChangeOverrides;->getDeferred()Lcom/android/server/compat/overrides/ChangeOverrides$Deferred;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/compat/overrides/ChangeOverrides$Deferred;->getOverrideValue()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/compat/overrides/OverrideValue;

    .line 305
    .local v1, "override":Lcom/android/server/compat/overrides/OverrideValue;
    iget-object v2, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/android/server/compat/overrides/OverrideValue;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v4}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    .line 307
    invoke-virtual {v1}, Lcom/android/server/compat/overrides/OverrideValue;->getEnabled()Z

    move-result v5

    .line 306
    invoke-virtual {v4, v5}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v4

    .line 307
    invoke-virtual {v4}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v4

    .line 305
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    nop

    .end local v1    # "override":Lcom/android/server/compat/overrides/OverrideValue;
    goto :goto_13

    .line 312
    .end local p0    # "this":Lcom/android/server/compat/CompatChange;
    :cond_3b
    invoke-virtual {p1}, Lcom/android/server/compat/overrides/ChangeOverrides;->getValidated()Lcom/android/server/compat/overrides/ChangeOverrides$Validated;

    move-result-object v0

    if-eqz v0, :cond_86

    .line 313
    invoke-virtual {p1}, Lcom/android/server/compat/overrides/ChangeOverrides;->getValidated()Lcom/android/server/compat/overrides/ChangeOverrides$Validated;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/compat/overrides/ChangeOverrides$Validated;->getOverrideValue()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/compat/overrides/OverrideValue;

    .line 314
    .restart local v1    # "override":Lcom/android/server/compat/overrides/OverrideValue;
    iget-object v2, p0, Lcom/android/server/compat/CompatChange;->mEvaluatedOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/android/server/compat/overrides/OverrideValue;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/compat/overrides/OverrideValue;->getEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    iget-object v2, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/android/server/compat/overrides/OverrideValue;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v4}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    .line 317
    invoke-virtual {v1}, Lcom/android/server/compat/overrides/OverrideValue;->getEnabled()Z

    move-result v5

    .line 316
    invoke-virtual {v4, v5}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v4

    .line 317
    invoke-virtual {v4}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v4

    .line 315
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    nop

    .end local v1    # "override":Lcom/android/server/compat/overrides/OverrideValue;
    goto :goto_4d

    .line 322
    :cond_86
    invoke-virtual {p1}, Lcom/android/server/compat/overrides/ChangeOverrides;->getRaw()Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

    move-result-object v0

    if-eqz v0, :cond_d0

    .line 323
    invoke-virtual {p1}, Lcom/android/server/compat/overrides/ChangeOverrides;->getRaw()Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->getRawOverrideValue()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_98
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/compat/overrides/RawOverrideValue;

    .line 324
    .local v1, "override":Lcom/android/server/compat/overrides/RawOverrideValue;
    new-instance v2, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v2}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    .line 325
    invoke-virtual {v1}, Lcom/android/server/compat/overrides/RawOverrideValue;->getMinVersionCode()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/app/compat/PackageOverride$Builder;->setMinVersionCode(J)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v2

    .line 326
    invoke-virtual {v1}, Lcom/android/server/compat/overrides/RawOverrideValue;->getMaxVersionCode()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/app/compat/PackageOverride$Builder;->setMaxVersionCode(J)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v2

    .line 327
    invoke-virtual {v1}, Lcom/android/server/compat/overrides/RawOverrideValue;->getEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v2

    .line 328
    invoke-virtual {v2}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v2

    .line 329
    .local v2, "packageOverride":Landroid/app/compat/PackageOverride;
    iget-object v3, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/android/server/compat/overrides/RawOverrideValue;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ce
    .catchall {:try_start_1 .. :try_end_ce} :catchall_d2

    .line 330
    nop

    .end local v1    # "override":Lcom/android/server/compat/overrides/RawOverrideValue;
    .end local v2    # "packageOverride":Landroid/app/compat/PackageOverride;
    goto :goto_98

    .line 332
    :cond_d0
    monitor-exit p0

    return-void

    .line 302
    .end local p1    # "changeOverrides":Lcom/android/server/compat/overrides/ChangeOverrides;
    :catchall_d2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized recheckOverride(Ljava/lang/String;Lcom/android/internal/compat/OverrideAllowedState;Ljava/lang/Long;)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "allowedState"    # Lcom/android/internal/compat/OverrideAllowedState;
    .param p3, "versionCode"    # Ljava/lang/Long;

    monitor-enter p0

    .line 186
    const/4 v0, 0x0

    if-nez p1, :cond_6

    .line 187
    monitor-exit p0

    return v0

    .line 189
    :cond_6
    :try_start_6
    iget v1, p2, Lcom/android/internal/compat/OverrideAllowedState;->state:I

    const/4 v2, 0x1

    if-nez v1, :cond_d

    move v1, v2

    goto :goto_e

    :cond_d
    move v1, v0

    .line 191
    .local v1, "allowed":Z
    :goto_e
    if-eqz p3, :cond_3d

    iget-object v3, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    if-nez v1, :cond_1b

    goto :goto_3d

    .line 196
    :cond_1b
    iget-object v3, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/compat/PackageOverride;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/compat/PackageOverride;->evaluate(J)I

    move-result v3

    .line 197
    .local v3, "overrideValue":I
    packed-switch v3, :pswitch_data_46

    .end local p0    # "this":Lcom/android/server/compat/CompatChange;
    goto :goto_3b

    .line 205
    .restart local p0    # "this":Lcom/android/server/compat/CompatChange;
    :pswitch_2f
    invoke-direct {p0, p1, v0}, Lcom/android/server/compat/CompatChange;->addPackageOverrideInternal(Ljava/lang/String;Z)V

    goto :goto_3b

    .line 202
    .end local p0    # "this":Lcom/android/server/compat/CompatChange;
    :pswitch_33
    invoke-direct {p0, p1, v2}, Lcom/android/server/compat/CompatChange;->addPackageOverrideInternal(Ljava/lang/String;Z)V

    .line 203
    goto :goto_3b

    .line 199
    :pswitch_37
    invoke-direct {p0, p1}, Lcom/android/server/compat/CompatChange;->removePackageOverrideInternal(Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_6 .. :try_end_3a} :catchall_42

    .line 200
    nop

    .line 208
    :goto_3b
    monitor-exit p0

    return v2

    .line 192
    .end local v3    # "overrideValue":I
    :cond_3d
    :goto_3d
    :try_start_3d
    invoke-direct {p0, p1}, Lcom/android/server/compat/CompatChange;->removePackageOverrideInternal(Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_42

    .line 193
    monitor-exit p0

    return v0

    .line 185
    .end local v1    # "allowed":Z
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "allowedState":Lcom/android/internal/compat/OverrideAllowedState;
    .end local p3    # "versionCode":Ljava/lang/Long;
    :catchall_42
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_37
        :pswitch_33
        :pswitch_2f
    .end packed-switch
.end method

.method declared-synchronized registerListener(Lcom/android/server/compat/CompatChange$ChangeListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/android/server/compat/CompatChange$ChangeListener;

    monitor-enter p0

    .line 122
    :try_start_1
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mListener:Lcom/android/server/compat/CompatChange$ChangeListener;

    if-nez v0, :cond_9

    .line 126
    iput-object p1, p0, Lcom/android/server/compat/CompatChange;->mListener:Lcom/android/server/compat/CompatChange$ChangeListener;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_2c

    .line 127
    monitor-exit p0

    return-void

    .line 123
    .end local p0    # "this":Lcom/android/server/compat/CompatChange;
    :cond_9
    :try_start_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listener for change "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 124
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already registered."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_2c

    .line 121
    .end local p1    # "listener":Lcom/android/server/compat/CompatChange$ChangeListener;
    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized removePackageOverride(Ljava/lang/String;Lcom/android/internal/compat/OverrideAllowedState;Ljava/lang/Long;)Z
    .registers 6
    .param p1, "pname"    # Ljava/lang/String;
    .param p2, "allowedState"    # Lcom/android/internal/compat/OverrideAllowedState;
    .param p3, "versionCode"    # Ljava/lang/Long;

    monitor-enter p0

    .line 222
    :try_start_1
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 223
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getId()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1, p1}, Lcom/android/internal/compat/OverrideAllowedState;->enforce(JLjava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/compat/CompatChange;->recheckOverride(Ljava/lang/String;Lcom/android/internal/compat/OverrideAllowedState;Ljava/lang/Long;)Z
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1e

    .line 226
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 228
    .end local p0    # "this":Lcom/android/server/compat/CompatChange;
    :cond_1b
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 221
    .end local p1    # "pname":Ljava/lang/String;
    .end local p2    # "allowedState":Lcom/android/internal/compat/OverrideAllowedState;
    .end local p3    # "versionCode":Ljava/lang/Long;
    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized saveOverrides()Lcom/android/server/compat/overrides/ChangeOverrides;
    .registers 10

    monitor-enter p0

    .line 335
    :try_start_1
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_b8

    if-eqz v0, :cond_c

    .line 336
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 338
    :cond_c
    :try_start_c
    new-instance v0, Lcom/android/server/compat/overrides/ChangeOverrides;

    invoke-direct {v0}, Lcom/android/server/compat/overrides/ChangeOverrides;-><init>()V

    .line 339
    .local v0, "changeOverrides":Lcom/android/server/compat/overrides/ChangeOverrides;
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/compat/overrides/ChangeOverrides;->setChangeId(J)V

    .line 340
    new-instance v1, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;

    invoke-direct {v1}, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;-><init>()V

    .line 341
    .local v1, "rawOverrides":Lcom/android/server/compat/overrides/ChangeOverrides$Raw;
    invoke-virtual {v1}, Lcom/android/server/compat/overrides/ChangeOverrides$Raw;->getRawOverrideValue()Ljava/util/List;

    move-result-object v2

    .line 342
    .local v2, "rawList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/compat/overrides/RawOverrideValue;>;"
    iget-object v3, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_71

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 343
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/compat/PackageOverride;>;"
    new-instance v5, Lcom/android/server/compat/overrides/RawOverrideValue;

    invoke-direct {v5}, Lcom/android/server/compat/overrides/RawOverrideValue;-><init>()V

    .line 344
    .local v5, "override":Lcom/android/server/compat/overrides/RawOverrideValue;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/server/compat/overrides/RawOverrideValue;->setPackageName(Ljava/lang/String;)V

    .line 345
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/compat/PackageOverride;

    invoke-virtual {v6}, Landroid/app/compat/PackageOverride;->getMinVersionCode()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/server/compat/overrides/RawOverrideValue;->setMinVersionCode(J)V

    .line 346
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/compat/PackageOverride;

    invoke-virtual {v6}, Landroid/app/compat/PackageOverride;->getMaxVersionCode()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/server/compat/overrides/RawOverrideValue;->setMaxVersionCode(J)V

    .line 347
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/compat/PackageOverride;

    invoke-virtual {v6}, Landroid/app/compat/PackageOverride;->isEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/compat/overrides/RawOverrideValue;->setEnabled(Z)V

    .line 348
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    nop

    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/compat/PackageOverride;>;"
    .end local v5    # "override":Lcom/android/server/compat/overrides/RawOverrideValue;
    goto :goto_2b

    .line 350
    .end local p0    # "this":Lcom/android/server/compat/CompatChange;
    :cond_71
    invoke-virtual {v0, v1}, Lcom/android/server/compat/overrides/ChangeOverrides;->setRaw(Lcom/android/server/compat/overrides/ChangeOverrides$Raw;)V

    .line 352
    new-instance v3, Lcom/android/server/compat/overrides/ChangeOverrides$Validated;

    invoke-direct {v3}, Lcom/android/server/compat/overrides/ChangeOverrides$Validated;-><init>()V

    .line 353
    .local v3, "validatedOverrides":Lcom/android/server/compat/overrides/ChangeOverrides$Validated;
    invoke-virtual {v3}, Lcom/android/server/compat/overrides/ChangeOverrides$Validated;->getOverrideValue()Ljava/util/List;

    move-result-object v4

    .line 354
    .local v4, "validatedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/compat/overrides/OverrideValue;>;"
    iget-object v5, p0, Lcom/android/server/compat/CompatChange;->mEvaluatedOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_87
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 355
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    new-instance v7, Lcom/android/server/compat/overrides/OverrideValue;

    invoke-direct {v7}, Lcom/android/server/compat/overrides/OverrideValue;-><init>()V

    .line 356
    .local v7, "override":Lcom/android/server/compat/overrides/OverrideValue;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/server/compat/overrides/OverrideValue;->setPackageName(Ljava/lang/String;)V

    .line 357
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/server/compat/overrides/OverrideValue;->setEnabled(Z)V

    .line 358
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    nop

    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v7    # "override":Lcom/android/server/compat/overrides/OverrideValue;
    goto :goto_87

    .line 360
    :cond_b3
    invoke-virtual {v0, v3}, Lcom/android/server/compat/overrides/ChangeOverrides;->setValidated(Lcom/android/server/compat/overrides/ChangeOverrides$Validated;)V
    :try_end_b6
    .catchall {:try_start_c .. :try_end_b6} :catchall_b8

    .line 361
    monitor-exit p0

    return-object v0

    .line 334
    .end local v0    # "changeOverrides":Lcom/android/server/compat/overrides/ChangeOverrides;
    .end local v1    # "rawOverrides":Lcom/android/server/compat/overrides/ChangeOverrides$Raw;
    .end local v2    # "rawList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/compat/overrides/RawOverrideValue;>;"
    .end local v3    # "validatedOverrides":Lcom/android/server/compat/overrides/ChangeOverrides$Validated;
    .end local v4    # "validatedList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/compat/overrides/OverrideValue;>;"
    :catchall_b8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChangeId("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 368
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 369
    const-string v1, "; name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getEnableSinceTargetSdk()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_36

    .line 372
    const-string v1, "; enableSinceTargetSdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getEnableSinceTargetSdk()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 374
    :cond_36
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getDisabled()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 375
    const-string v1, "; disabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    :cond_41
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getLoggingOnly()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 378
    const-string v1, "; loggingOnly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    :cond_4c
    iget-object v1, p0, Lcom/android/server/compat/CompatChange;->mEvaluatedOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5f

    .line 381
    const-string v1, "; packageOverrides="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/compat/CompatChange;->mEvaluatedOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 383
    :cond_5f
    iget-object v1, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_72

    .line 384
    const-string v1, "; rawOverrides="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 386
    :cond_72
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->getOverridable()Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 387
    const-string v1, "; overridable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    :cond_7d
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method willBeEnabled(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 270
    if-nez p1, :cond_7

    .line 271
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->defaultValue()Z

    move-result v0

    return v0

    .line 273
    :cond_7
    iget-object v0, p0, Lcom/android/server/compat/CompatChange;->mRawOverrides:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/compat/PackageOverride;

    .line 274
    .local v0, "override":Landroid/app/compat/PackageOverride;
    if-eqz v0, :cond_22

    .line 275
    invoke-virtual {v0}, Landroid/app/compat/PackageOverride;->evaluateForAllVersions()I

    move-result v1

    packed-switch v1, :pswitch_data_28

    goto :goto_22

    .line 279
    :pswitch_19
    const/4 v1, 0x0

    return v1

    .line 277
    :pswitch_1b
    const/4 v1, 0x1

    return v1

    .line 281
    :pswitch_1d
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->defaultValue()Z

    move-result v1

    return v1

    .line 284
    :cond_22
    :goto_22
    invoke-virtual {p0}, Lcom/android/server/compat/CompatChange;->defaultValue()Z

    move-result v1

    return v1

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1b
        :pswitch_19
    .end packed-switch
.end method
