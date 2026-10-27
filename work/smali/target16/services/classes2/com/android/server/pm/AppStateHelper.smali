.class public Lcom/android/server/pm/AppStateHelper;
.super Ljava/lang/Object;
.source "AppStateHelper.java"


# static fields
.field public static final ACTIVE_NETWORK_DURATION_MILLIS:J


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$8B_hj9B1hv-457DfjQiyoDndm2U(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/util/ArraySet;Lcom/android/server/pm/pkg/PackageStateInternal;)V
    .registers 6

    .line 209
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p4

    if-nez p4, :cond_7

    goto :goto_30

    .line 213
    :cond_7
    invoke-interface {p4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUsesLibrariesSorted()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/server/pm/AppStateHelper;->containsAny([Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 214
    invoke-interface {p4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUsesOptionalLibrariesSorted()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/server/pm/AppStateHelper;->containsAny([Ljava/lang/String;Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_31

    .line 215
    invoke-interface {p4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUsesStaticLibrariesSorted()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/pm/AppStateHelper;->containsAny([Ljava/lang/String;Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_31

    .line 216
    invoke-interface {p4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUsesSdkLibrariesSorted()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/server/pm/AppStateHelper;->containsAny([Ljava/lang/String;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_30

    goto :goto_31

    :cond_30
    :goto_30
    return-void

    .line 217
    :cond_31
    :goto_31
    invoke-interface {p4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 47
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/pm/AppStateHelper;->ACTIVE_NETWORK_DURATION_MILLIS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/server/pm/AppStateHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static containsAny([Ljava/lang/String;Ljava/util/List;)Z
    .registers 9

    .line 161
    array-length v0, p0

    .line 162
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_8
    if-ge v3, v0, :cond_24

    if-ge v4, v1, :cond_24

    .line 164
    aget-object v5, p0, v3

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    if-gez v5, :cond_21

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_24
    return v2
.end method

.method public static isPackageLoaded(Landroid/app/ActivityManager$RunningAppProcessInfo;Ljava/lang/String;)Z
    .registers 3

    .line 59
    iget-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object p0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgDeps:[Ljava/lang/String;

    .line 60
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final addLibraryDependency(Landroid/util/ArraySet;Ljava/util/List;)V
    .registers 8

    .line 177
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 181
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 182
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1b
    :goto_1b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 183
    invoke-virtual {p0, v3}, Landroid/content/pm/PackageManagerInternal;->getAndroidPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v3

    if-nez v3, :cond_2e

    goto :goto_1b

    .line 187
    :cond_2e
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 188
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3e

    .line 190
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_3e
    invoke-interface {v3}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 194
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 198
    :cond_48
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5b

    .line 199
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5b

    .line 200
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5b

    return-void

    .line 204
    :cond_5b
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 205
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 206
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 208
    new-instance p2, Lcom/android/server/pm/AppStateHelper$$ExternalSyntheticLambda0;

    invoke-direct {p2, v0, v1, v2, p1}, Lcom/android/server/pm/AppStateHelper$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/util/ArraySet;)V

    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManagerInternal;->forEachPackageState(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getDependencyPackages(Ljava/util/List;)Ljava/util/List;
    .registers 10

    .line 289
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 291
    iget-object v1, p0, Lcom/android/server/pm/AppStateHelper;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/ActivityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 292
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 293
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_27
    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 294
    invoke-static {v2, v4}, Lcom/android/server/pm/AppStateHelper;->isPackageLoaded(Landroid/app/ActivityManager$RunningAppProcessInfo;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3a

    goto :goto_27

    .line 297
    :cond_3a
    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_3e
    if-ge v6, v5, :cond_27

    aget-object v7, v4, v6

    .line 298
    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3e

    .line 303
    :cond_48
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    .line 304
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_54
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 305
    invoke-virtual {v1, v3}, Landroid/app/ActivityManagerInternal;->getClientPackages(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    goto :goto_54

    .line 308
    :cond_68
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/AppStateHelper;->addLibraryDependency(Landroid/util/ArraySet;Ljava/util/List;)V

    .line 310
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final getImportance(Ljava/lang/String;)I
    .registers 3

    .line 67
    iget-object p0, p0, Lcom/android/server/pm/AppStateHelper;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 68
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final hasActiveAudio(Ljava/lang/String;)Z
    .registers 3

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppStateHelper;->hasAudioFocus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppStateHelper;->isRecordingAudio(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public final hasActiveNetwork(Ljava/util/List;)Z
    .registers 4

    const/4 v0, 0x1

    .line 227
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/AppStateHelper;->hasActiveNetwork(Ljava/util/List;I)Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x0

    .line 228
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/AppStateHelper;->hasActiveNetwork(Ljava/util/List;I)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_10

    :cond_f
    return v1

    :cond_10
    :goto_10
    return v0
.end method

.method public final hasActiveNetwork(Ljava/util/List;I)Z
    .registers 11

    .line 135
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 136
    iget-object p0, p0, Lcom/android/server/pm/AppStateHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/app/usage/NetworkStatsManager;

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 138
    sget-wide v2, Lcom/android/server/pm/AppStateHelper;->ACTIVE_NETWORK_DURATION_MILLIS:J

    sub-long v4, v6, v2

    const/4 v3, 0x0

    move v2, p2

    .line 139
    :try_start_19
    invoke-virtual/range {v1 .. v7}, Landroid/app/usage/NetworkStatsManager;->querySummary(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats;

    move-result-object p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1d} :catch_65

    .line 140
    :try_start_1d
    new-instance p2, Landroid/app/usage/NetworkStats$Bucket;

    invoke-direct {p2}, Landroid/app/usage/NetworkStats$Bucket;-><init>()V

    .line 141
    :cond_22
    :goto_22
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->hasNextBucket()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 142
    invoke-virtual {p0, p2}, Landroid/app/usage/NetworkStats;->getNextBucket(Landroid/app/usage/NetworkStats$Bucket;)Z

    .line 143
    invoke-virtual {p2}, Landroid/app/usage/NetworkStats$Bucket;->getUid()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    goto :goto_22

    .line 147
    :cond_3a
    invoke-virtual {p2}, Landroid/app/usage/NetworkStats$Bucket;->getRxPackets()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_50

    invoke-virtual {p2}, Landroid/app/usage/NetworkStats$Bucket;->getTxPackets()J

    move-result-wide v1
    :try_end_48
    .catchall {:try_start_1d .. :try_end_48} :catchall_4d

    cmp-long v1, v1, v3

    if-lez v1, :cond_22

    goto :goto_50

    :catchall_4d
    move-exception v0

    move-object p1, v0

    goto :goto_59

    :cond_50
    :goto_50
    const/4 p1, 0x1

    .line 151
    :try_start_51
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->close()V

    return p1

    :cond_55
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_58} :catch_65

    goto :goto_65

    :goto_59
    if-eqz p0, :cond_64

    .line 139
    :try_start_5b
    invoke-virtual {p0}, Landroid/app/usage/NetworkStats;->close()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_5f

    goto :goto_64

    :catchall_5f
    move-exception v0

    move-object p0, v0

    :try_start_61
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_64
    :goto_64
    throw p1
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_65} :catch_65

    :catch_65
    :goto_65
    const/4 p0, 0x0

    return p0
.end method

.method public final hasAudioFocus(Ljava/lang/String;)Z
    .registers 3

    .line 75
    iget-object p0, p0, Lcom/android/server/pm/AppStateHelper;->mContext:Landroid/content/Context;

    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 77
    :try_start_a
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->hasAudioFocus(Ljava/lang/String;)Z

    move-result p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_e} :catch_f

    return p0

    :catch_f
    const/4 p0, 0x0

    return p0
.end method

.method public hasForegroundApp(Ljava/util/List;)Z
    .registers 3

    .line 248
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 249
    invoke-virtual {p0, v0}, Lcom/android/server/pm/AppStateHelper;->isAppForeground(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public hasInteractingApp(Ljava/util/List;)Z
    .registers 5

    .line 235
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 236
    invoke-virtual {p0, v1}, Lcom/android/server/pm/AppStateHelper;->hasActiveAudio(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 237
    invoke-virtual {p0, v1}, Lcom/android/server/pm/AppStateHelper;->isAppTopVisible(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1c
    const/4 p0, 0x1

    return p0

    .line 241
    :cond_1e
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppStateHelper;->hasActiveNetwork(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public hasTopVisibleApp(Ljava/util/List;)Z
    .registers 3

    .line 260
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 261
    invoke-virtual {p0, v0}, Lcom/android/server/pm/AppStateHelper;->isAppTopVisible(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public final hasVoiceCall()Z
    .registers 3

    .line 87
    iget-object p0, p0, Lcom/android/server/pm/AppStateHelper;->mContext:Landroid/content/Context;

    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const/4 v0, 0x0

    .line 89
    :try_start_b
    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    move-result p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_19

    const/4 v1, 0x2

    if-eq p0, v1, :cond_17

    const/4 v1, 0x3

    if-ne p0, v1, :cond_16

    goto :goto_17

    :cond_16
    return v0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0

    :catch_19
    return v0
.end method

.method public final isAppForeground(Ljava/lang/String;)Z
    .registers 2

    .line 117
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppStateHelper;->getImportance(Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0x7d

    if-gt p0, p1, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isAppTopVisible(Ljava/lang/String;)Z
    .registers 2

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppStateHelper;->getImportance(Ljava/lang/String;)I

    move-result p0

    const/16 p1, 0x64

    if-gt p0, p1, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isInCall()Z
    .registers 5

    .line 273
    const-string v0, "debug.pm.gentle_update_test.is_in_call"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    return v2

    .line 279
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/AppStateHelper;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telecom/TelecomManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 280
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {p0}, Lcom/android/server/pm/AppStateHelper;->hasVoiceCall()Z

    move-result p0

    if-eqz p0, :cond_22

    goto :goto_23

    :cond_22
    return v1

    :cond_23
    :goto_23
    return v2
.end method

.method public final isRecordingAudio(Ljava/lang/String;)Z
    .registers 3

    .line 101
    iget-object p0, p0, Lcom/android/server/pm/AppStateHelper;->mContext:Landroid/content/Context;

    const-class v0, Landroid/media/AudioManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 103
    :try_start_a
    invoke-virtual {p0}, Landroid/media/AudioManager;->getActiveRecordingConfigurations()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioRecordingConfiguration;

    .line 104
    invoke-virtual {v0}, Landroid/media/AudioRecordingConfiguration;->getClientPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_26} :catch_2a

    if-eqz v0, :cond_12

    const/4 p0, 0x1

    return p0

    :catch_2a
    :cond_2a
    const/4 p0, 0x0

    return p0
.end method
