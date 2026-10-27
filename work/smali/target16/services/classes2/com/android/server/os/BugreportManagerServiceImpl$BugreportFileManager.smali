.class Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;
.super Ljava/lang/Object;
.source "BugreportManagerServiceImpl.java"


# instance fields
.field public mBugreportFiles:Landroid/util/ArrayMap;

.field final mBugreportFilesToPersist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mConsentGranted:Ljava/util/Map;

.field public final mLock:Ljava/lang/Object;

.field public final mMappingFile:Landroid/util/AtomicFile;

.field public mReadBugreportMapping:Z


# direct methods
.method public static synthetic $r8$lambda$fBfJvKZPDrJ3uT2wI7dWGFbqpgw(Landroid/content/pm/PackageManager;Landroid/util/Pair;ILjava/lang/String;)Ljava/lang/Integer;
    .registers 5

    .line 177
    :try_start_0
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    .line 179
    :catch_d
    iget-object p0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p3, p0}, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->throwInvalidBugreportFileForCallerException(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    .line 181
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBugreportFiles(Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;)Landroid/util/ArrayMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mBugreportFiles:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmReadBugreportMapping(Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mReadBugreportMapping:Z

    return p0
.end method

.method public constructor <init>(Landroid/util/AtomicFile;)V
    .registers 3

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mReadBugreportMapping:Z

    .line 138
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mBugreportFiles:Landroid/util/ArrayMap;

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mConsentGranted:Ljava/util/Map;

    .line 146
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mBugreportFilesToPersist:Ljava/util/Set;

    .line 151
    iput-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mMappingFile:Landroid/util/AtomicFile;

    return-void
.end method

.method public static throwInvalidBugreportFileForCallerException(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 231
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " was not generated on behalf of calling package "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addBugreportFileForCaller(Landroid/util/Pair;Ljava/lang/String;Z)V
    .registers 6

    .line 241
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 242
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mReadBugreportMapping:Z

    if-nez v1, :cond_d

    .line 243
    invoke-virtual {p0}, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->readBugreportMappingLocked()V

    goto :goto_d

    :catchall_b
    move-exception p0

    goto :goto_25

    .line 245
    :cond_d
    :goto_d
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_b

    .line 246
    invoke-virtual {p0, p1, p2}, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->addBugreportMapping(Landroid/util/Pair;Ljava/lang/String;)V

    .line 247
    iget-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    if-eqz p3, :cond_1e

    .line 250
    :try_start_16
    iget-object p3, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mBugreportFilesToPersist:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :catchall_1c
    move-exception p0

    goto :goto_23

    .line 252
    :cond_1e
    :goto_1e
    invoke-virtual {p0}, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->writeBugreportDataLocked()V

    .line 254
    monitor-exit p1

    return-void

    :goto_23
    monitor-exit p1
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_1c

    throw p0

    .line 245
    :goto_25
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_b

    throw p0
.end method

.method public final addBugreportMapping(Landroid/util/Pair;Ljava/lang/String;)V
    .registers 6

    .line 316
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 317
    :try_start_3
    iget-object v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mBugreportFiles:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 318
    iget-object v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mBugreportFiles:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    :catchall_16
    move-exception p0

    goto :goto_25

    .line 320
    :cond_18
    :goto_18
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mBugreportFiles:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    .line 321
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 322
    monitor-exit v0

    return-void

    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_16

    throw p0
.end method

.method public canSkipConsentScreen(Ljava/lang/String;Z)Z
    .registers 11

    .line 293
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 296
    :cond_6
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_9
    iget-object v2, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mConsentGranted:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 298
    monitor-exit v0

    return v1

    :catchall_13
    move-exception p0

    goto :goto_52

    .line 300
    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 301
    iget-object v4, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mConsentGranted:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 302
    invoke-static {}, Lcom/android/server/os/BugreportManagerServiceImpl;->-$$Nest$sfgetDEFAULT_BUGREPORT_CONSENTLESS_GRACE_PERIOD_MILLIS()J

    move-result-wide v6

    add-long/2addr v4, v6

    cmp-long v2, v4, v2

    if-gez v2, :cond_39

    .line 304
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mConsentGranted:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    monitor-exit v0

    return v1

    .line 307
    :cond_39
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mConsentGranted:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p2, :cond_4f

    if-nez p0, :cond_4f

    .line 309
    monitor-exit v0

    return v1

    :cond_4f
    const/4 p0, 0x1

    .line 311
    monitor-exit v0

    return p0

    .line 312
    :goto_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_9 .. :try_end_53} :catchall_13

    throw p0
.end method

.method public ensureCallerPreviouslyGeneratedFile(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/util/Pair;ILjava/lang/String;Z)V
    .registers 9

    .line 173
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_3
    new-instance v1, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/pm/PackageManager;Landroid/util/Pair;ILjava/lang/String;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p4

    .line 184
    iget-object v1, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq p4, v1, :cond_42

    const-string p4, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p1, p4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_25

    goto :goto_42

    .line 187
    :cond_25
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " does not hold the INTERACT_ACROSS_USERS permission to access cross-user bugreports."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_40
    move-exception p0

    goto :goto_78

    .line 192
    :cond_42
    :goto_42
    iget-boolean p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mReadBugreportMapping:Z

    if-eqz p1, :cond_48

    if-eqz p6, :cond_4b

    .line 193
    :cond_48
    invoke-virtual {p0}, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->readBugreportMappingLocked()V

    .line 195
    :cond_4b
    iget-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mBugreportFiles:Landroid/util/ArrayMap;

    new-instance p4, Landroid/util/Pair;

    .line 196
    iget-object p6, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p6, Ljava/lang/String;

    invoke-direct {p4, p2, p6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    invoke-virtual {p1, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    if-eqz p1, :cond_64

    .line 198
    invoke-virtual {p1, p5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6b

    .line 199
    :cond_64
    iget-object p2, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-static {p5, p2}, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->throwInvalidBugreportFileForCallerException(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_6b
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mBugreportFilesToPersist:Ljava/util/Set;

    invoke-interface {p0, p5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_76

    .line 210
    invoke-virtual {p1, p5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 226
    :cond_76
    monitor-exit v0

    return-void

    :goto_78
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_3 .. :try_end_79} :catchall_40

    throw p0
.end method

.method public logConsentGrantedForCaller(Ljava/lang/String;ZZ)V
    .registers 7

    .line 263
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_5

    return-void

    .line 266
    :cond_5
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_23

    .line 271
    :try_start_a
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mConsentGranted:Ljava/util/Map;

    new-instance p2, Landroid/util/Pair;

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 273
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-direct {p2, v1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 271
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_62

    :catchall_21
    move-exception p0

    goto :goto_64

    :cond_23
    if-nez p3, :cond_62

    .line 275
    iget-object p2, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mConsentGranted:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4a

    .line 276
    const-string p0, "BugreportManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Previous consent from package: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " shouldhave been logged."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    monitor-exit v0

    return-void

    .line 280
    :cond_4a
    iget-object p2, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mConsentGranted:Ljava/util/Map;

    new-instance p3, Landroid/util/Pair;

    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mConsentGranted:Ljava/util/Map;

    .line 281
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    .line 282
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p3, p0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 280
    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :cond_62
    :goto_62
    monitor-exit v0

    return-void

    :goto_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_a .. :try_end_65} :catchall_21

    throw p0
.end method

.method public final readBugreportMapEntry(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .registers 6

    .line 384
    const-string v0, "calling-uid"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 385
    const-string v2, "calling-package"

    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 386
    const-string v3, "bugreport-file"

    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 387
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, p1}, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->addBugreportMapping(Landroid/util/Pair;Ljava/lang/String;)V

    return-void
.end method

.method public final readBugreportMappingLocked()V
    .registers 8

    .line 327
    const-string v0, "BugreportManagerService"

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mBugreportFiles:Landroid/util/ArrayMap;

    .line 328
    :try_start_9
    iget-object v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mMappingFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_f} :catch_7f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_f} :catch_79
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_f} :catch_79

    .line 329
    :try_start_f
    invoke-static {v1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v2

    .line 330
    const-string v3, "bugreport-data"

    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 331
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    .line 332
    :goto_1c
    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 333
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 334
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v5

    const v6, -0x6735730e

    if-eq v5, v6, :cond_43

    const v6, 0x2d69b2b7

    if-eq v5, v6, :cond_35

    goto :goto_50

    :cond_35
    const-string v5, "bugreport-map"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 336
    invoke-virtual {p0, v2}, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->readBugreportMapEntry(Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_1c

    :catchall_41
    move-exception v2

    goto :goto_6e

    .line 334
    :cond_43
    const-string/jumbo v5, "persistent-bugreport"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 339
    invoke-virtual {p0, v2}, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->readPersistentBugreportEntry(Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_1c

    .line 342
    :cond_50
    :goto_50
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown tag while reading bugreport mapping file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    :cond_65
    const/4 v2, 0x1

    .line 346
    iput-boolean v2, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mReadBugreportMapping:Z
    :try_end_68
    .catchall {:try_start_f .. :try_end_68} :catchall_41

    if-eqz v1, :cond_84

    .line 347
    :try_start_6a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6d
    .catch Ljava/io/FileNotFoundException; {:try_start_6a .. :try_end_6d} :catch_7f
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_79
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6a .. :try_end_6d} :catch_79

    return-void

    :goto_6e
    if-eqz v1, :cond_78

    .line 328
    :try_start_70
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_74

    goto :goto_78

    :catchall_74
    move-exception v1

    :try_start_75
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_78
    :goto_78
    throw v2
    :try_end_79
    .catch Ljava/io/FileNotFoundException; {:try_start_75 .. :try_end_79} :catch_7f
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_79} :catch_79
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_75 .. :try_end_79} :catch_79

    .line 350
    :catch_79
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mMappingFile:Landroid/util/AtomicFile;

    invoke-virtual {p0}, Landroid/util/AtomicFile;->delete()V

    goto :goto_84

    .line 348
    :catch_7f
    const-string p0, "Bugreport mapping file does not exist"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_84
    :goto_84
    return-void
.end method

.method public final readPersistentBugreportEntry(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .registers 4

    const/4 v0, 0x0

    .line 392
    const-string v1, "bugreport-file"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 393
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 394
    :try_start_a
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mBugreportFilesToPersist:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 395
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final writeBugreportDataLocked()V
    .registers 9

    .line 356
    const-string v0, "bugreport-data"

    iget-object v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mBugreportFiles:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mBugreportFilesToPersist:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_84

    .line 359
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mMappingFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_19} :catch_90

    .line 360
    :try_start_19
    invoke-static {v1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v2

    .line 361
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 362
    invoke-interface {v2, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 364
    iget-object v3, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mBugreportFiles:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 365
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 366
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 367
    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_30

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 368
    invoke-virtual {p0, v6, v7, v2}, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->writeBugreportMapEntry(Landroid/util/Pair;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    goto :goto_4c

    :catchall_5c
    move-exception p0

    goto :goto_85

    .line 371
    :cond_5e
    iget-object v3, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mBugreportFilesToPersist:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_64
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_74

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 372
    invoke-virtual {p0, v5, v2}, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->writePersistentBugreportEntry(Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V

    goto :goto_64

    .line 374
    :cond_74
    invoke-interface {v2, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 375
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 376
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl$BugreportFileManager;->mMappingFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_7f
    .catchall {:try_start_19 .. :try_end_7f} :catchall_5c

    if-eqz v1, :cond_84

    .line 377
    :try_start_81
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_90

    :cond_84
    :goto_84
    return-void

    :goto_85
    if-eqz v1, :cond_8f

    .line 359
    :try_start_87
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_8b

    goto :goto_8f

    :catchall_8b
    move-exception v0

    :try_start_8c
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8f
    :goto_8f
    throw p0
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_90} :catch_90

    :catch_90
    move-exception p0

    .line 378
    const-string v0, "BugreportManagerService"

    const-string v1, "Failed to write bugreport mapping file"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final writeBugreportMapEntry(Landroid/util/Pair;Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 7

    const/4 p0, 0x0

    .line 400
    const-string v0, "bugreport-map"

    invoke-interface {p3, p0, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 401
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "calling-uid"

    invoke-interface {p3, p0, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 402
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v1, "calling-package"

    invoke-interface {p3, p0, v1, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 403
    const-string p1, "bugreport-file"

    invoke-interface {p3, p0, p1, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 404
    invoke-interface {p3, p0, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final writePersistentBugreportEntry(Ljava/lang/String;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 5

    const/4 p0, 0x0

    .line 409
    const-string/jumbo v0, "persistent-bugreport"

    invoke-interface {p2, p0, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 410
    const-string v1, "bugreport-file"

    invoke-interface {p2, p0, v1, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 411
    invoke-interface {p2, p0, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
