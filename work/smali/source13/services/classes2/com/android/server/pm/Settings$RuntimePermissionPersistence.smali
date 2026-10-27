.class final Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RuntimePermissionPersistence"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;
    }
.end annotation


# static fields
.field private static final INITIAL_VERSION:I = 0x0

.field private static final MAX_WRITE_PERMISSIONS_DELAY_MILLIS:J = 0x7d0L

.field private static final UPGRADE_VERSION:I = -0x1

.field private static final WRITE_PERMISSIONS_DELAY_JITTER:D = 0.3

.field private static final WRITE_PERMISSIONS_DELAY_MILLIS:J = 0x12cL

.field private static final sRandom:Ljava/util/Random;


# instance fields
.field private final mAsyncHandler:Landroid/os/Handler;

.field private mExtendedFingerprint:Ljava/lang/String;

.field private final mFingerprints:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mInvokeWriteUserStateAsyncCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLegacyPermissionStateStale:Z

.field private final mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

.field private final mLock:Ljava/lang/Object;

.field private final mPendingStatesToWrite:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/permission/persistence/RuntimePermissionsState;",
            ">;"
        }
    .end annotation
.end field

.field private final mPermissionUpgradeNeeded:Landroid/util/SparseBooleanArray;

.field private final mPersistence:Lcom/android/permission/persistence/RuntimePermissionsPersistence;

.field private final mPersistenceHandler:Landroid/os/Handler;

.field private final mPersistenceLock:Ljava/lang/Object;

.field private final mVersions:Landroid/util/SparseIntArray;

.field private final mWriteScheduled:Landroid/util/SparseBooleanArray;


# direct methods
.method static bridge synthetic -$$Nest$fgetmInvokeWriteUserStateAsyncCallback(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;)Ljava/util/function/Consumer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mInvokeWriteUserStateAsyncCallback:Ljava/util/function/Consumer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monUserRemoved(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->onUserRemoved(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 5455
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->sRandom:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Lcom/android/permission/persistence/RuntimePermissionsPersistence;Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "persistence"    # Lcom/android/permission/persistence/RuntimePermissionsPersistence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/permission/persistence/RuntimePermissionsPersistence;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 5504
    .local p2, "invokeWriteUserStateAsyncCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5461
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistenceLock:Ljava/lang/Object;

    .line 5464
    new-instance v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;

    invoke-direct {v0, p0}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$MyHandler;-><init>(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mAsyncHandler:Landroid/os/Handler;

    .line 5465
    new-instance v0, Landroid/os/Handler;

    .line 5466
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistenceHandler:Landroid/os/Handler;

    .line 5468
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    .line 5470
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    .line 5473
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    .line 5477
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mIsLegacyPermissionStateStale:Z

    .line 5482
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    .line 5486
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    .line 5490
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPermissionUpgradeNeeded:Landroid/util/SparseBooleanArray;

    .line 5494
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPendingStatesToWrite:Landroid/util/SparseArray;

    .line 5505
    iput-object p1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistence:Lcom/android/permission/persistence/RuntimePermissionsPersistence;

    .line 5506
    iput-object p2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mInvokeWriteUserStateAsyncCallback:Ljava/util/function/Consumer;

    .line 5507
    return-void
.end method

.method private getExtendedFingerprint(J)Ljava/lang/String;
    .registers 5
    .param p1, "version"    # J

    .line 5555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/content/pm/PackagePartitions;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?pc_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPermissionsFromPermissionsState(Lcom/android/server/pm/permission/LegacyPermissionState;I)Ljava/util/List;
    .registers 11
    .param p1, "permissionsState"    # Lcom/android/server/pm/permission/LegacyPermissionState;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/permission/LegacyPermissionState;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;",
            ">;"
        }
    .end annotation

    .line 5711
    nop

    .line 5712
    invoke-virtual {p1, p2}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionStates(I)Ljava/util/Collection;

    move-result-object v0

    .line 5713
    .local v0, "permissionStates":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5714
    .local v1, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 5715
    .local v3, "permissionState":Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    new-instance v4, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;

    .line 5716
    invoke-virtual {v3}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v5

    .line 5717
    invoke-virtual {v3}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->isGranted()Z

    move-result v6

    invoke-virtual {v3}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getFlags()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;-><init>(Ljava/lang/String;ZI)V

    .line 5718
    .local v4, "permission":Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5719
    .end local v3    # "permissionState":Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    .end local v4    # "permission":Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;
    goto :goto_e

    .line 5720
    :cond_2f
    return-object v1
.end method

.method private static nextWritePermissionDelayMillis()J
    .registers 8

    .line 5564
    const-wide/16 v0, 0x12c

    .line 5565
    .local v0, "delay":J
    const-wide v2, 0x3fd3333333333333L    # 0.3

    .line 5566
    .local v2, "jitter":D
    const-wide v4, -0x3fa9800000000000L    # -90.0

    const-wide v6, 0x4056800000000000L    # 90.0

    invoke-static {v4, v5, v6, v7}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->uniformRandom(DD)J

    move-result-wide v4

    const-wide/16 v6, 0x12c

    add-long/2addr v4, v6

    return-wide v4
.end method

.method private onUserRemoved(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 5724
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5726
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5728
    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPermissionUpgradeNeeded:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 5729
    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 5730
    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 5731
    monitor-exit v0

    .line 5732
    return-void

    .line 5731
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private parseLegacyPermissionsLPr(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/permission/LegacyPermissionState;I)V
    .registers 13
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "permissionsState"    # Lcom/android/server/pm/permission/LegacyPermissionState;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 5910
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5911
    :try_start_3
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 5913
    .local v1, "outerDepth":I
    :cond_7
    :goto_7
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_56

    const/4 v2, 0x3

    if-ne v3, v2, :cond_18

    .line 5914
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v1, :cond_56

    .line 5915
    :cond_18
    if-eq v3, v2, :cond_7

    const/4 v2, 0x4

    if-ne v3, v2, :cond_1e

    .line 5916
    goto :goto_7

    .line 5919
    :cond_1e
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x0

    packed-switch v6, :pswitch_data_5c

    :cond_2b
    goto :goto_35

    :pswitch_2c
    const-string v6, "item"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    move v5, v7

    :goto_35
    packed-switch v5, :pswitch_data_62

    goto :goto_55

    .line 5921
    :pswitch_39
    const-string/jumbo v2, "name"

    const/4 v5, 0x0

    invoke-interface {p1, v5, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5922
    .local v2, "name":Ljava/lang/String;
    const-string v6, "granted"

    .line 5923
    invoke-interface {p1, v5, v6, v4}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 5924
    .local v6, "granted":Z
    const-string v8, "flags"

    .line 5925
    invoke-interface {p1, v5, v8, v7}, Landroid/util/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 5926
    .local v5, "flags":I
    new-instance v7, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    invoke-direct {v7, v2, v4, v6, v5}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;-><init>(Ljava/lang/String;ZZI)V

    invoke-virtual {p2, v7, p3}, Lcom/android/server/pm/permission/LegacyPermissionState;->putPermissionState(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;I)V

    .line 5929
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "flags":I
    .end local v6    # "granted":Z
    :goto_55
    goto :goto_7

    .line 5932
    .end local v1    # "outerDepth":I
    .end local v3    # "type":I
    :cond_56
    monitor-exit v0

    .line 5933
    return-void

    .line 5932
    :catchall_58
    move-exception v1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_3 .. :try_end_5a} :catchall_58

    throw v1

    nop

    :pswitch_data_5c
    .packed-switch 0x317b13
        :pswitch_2c
    .end packed-switch

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_39
    .end packed-switch
.end method

.method private parseLegacyRuntimePermissions(Landroid/util/TypedXmlPullParser;ILcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;)V
    .registers 13
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "I",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 5856
    .local p3, "packageStates":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .local p4, "sharedUsers":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;>;"
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5857
    :try_start_3
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 5859
    .local v1, "outerDepth":I
    :cond_7
    :goto_7
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_d3

    const/4 v2, 0x3

    if-ne v3, v2, :cond_18

    .line 5860
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v1, :cond_d3

    .line 5861
    :cond_18
    if-eq v3, v2, :cond_7

    const/4 v2, 0x4

    if-ne v3, v2, :cond_1e

    .line 5862
    goto :goto_7

    .line 5865
    :cond_1e
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, -0x1

    sparse-switch v5, :sswitch_data_d8

    :cond_2a
    goto :goto_4b

    :sswitch_2b
    const-string/jumbo v4, "shared-user"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v4, 0x2

    goto :goto_4c

    :sswitch_36
    const-string/jumbo v4, "runtime-permissions"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v4, 0x0

    goto :goto_4c

    :sswitch_41
    const-string/jumbo v5, "pkg"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_4c

    :goto_4b
    move v4, v6

    :goto_4c
    const/4 v2, 0x0

    packed-switch v4, :pswitch_data_e6

    goto/16 :goto_d1

    .line 5891
    :pswitch_52
    const-string/jumbo v4, "name"

    invoke-interface {p1, v2, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5892
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p4, v2}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SharedUserSetting;

    .line 5893
    .local v4, "sus":Lcom/android/server/pm/SharedUserSetting;
    if-nez v4, :cond_7d

    .line 5894
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown shared user:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5895
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5896
    goto :goto_7

    .line 5898
    :cond_7d
    invoke-virtual {v4}, Lcom/android/server/pm/SharedUserSetting;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v5

    invoke-direct {p0, p1, v5, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parseLegacyPermissionsLPr(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/permission/LegacyPermissionState;I)V

    goto :goto_d1

    .line 5878
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "sus":Lcom/android/server/pm/SharedUserSetting;
    :pswitch_85
    const-string/jumbo v4, "name"

    invoke-interface {p1, v2, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5879
    .restart local v2    # "name":Ljava/lang/String;
    invoke-virtual {p3, v2}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 5880
    .local v4, "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    if-nez v4, :cond_b1

    .line 5881
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5882
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 5883
    goto/16 :goto_7

    .line 5885
    :cond_b1
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v5

    invoke-direct {p0, p1, v5, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parseLegacyPermissionsLPr(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/permission/LegacyPermissionState;I)V

    .line 5888
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "ps":Lcom/android/server/pm/pkg/PackageStateInternal;
    goto :goto_d1

    .line 5869
    :pswitch_b9
    const-string/jumbo v4, "version"

    invoke-interface {p1, v2, v4, v6}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 5871
    .local v4, "version":I
    iget-object v5, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 5872
    const-string v5, "fingerprint"

    invoke-interface {p1, v2, v5}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5873
    .local v2, "fingerprint":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v5, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5875
    .end local v2    # "fingerprint":Ljava/lang/String;
    .end local v4    # "version":I
    nop

    .line 5901
    :goto_d1
    goto/16 :goto_7

    .line 5904
    .end local v1    # "outerDepth":I
    .end local v3    # "type":I
    :cond_d3
    monitor-exit v0

    .line 5905
    return-void

    .line 5904
    :catchall_d5
    move-exception v1

    monitor-exit v0
    :try_end_d7
    .catchall {:try_start_3 .. :try_end_d7} :catchall_d5

    throw v1

    :sswitch_data_d8
    .sparse-switch
        0x1b1cc -> :sswitch_41
        0x98dd20f -> :sswitch_36
        0x1cf15833 -> :sswitch_2b
    .end sparse-switch

    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_b9
        :pswitch_85
        :pswitch_52
    .end packed-switch
.end method

.method private readLegacyStateForUserSync(ILjava/io/File;Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;)V
    .registers 11
    .param p1, "userId"    # I
    .param p2, "permissionsFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/io/File;",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;)V"
        }
    .end annotation

    .line 5826
    .local p3, "packageStates":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .local p4, "sharedUsers":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;>;"
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5827
    :try_start_3
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_b

    .line 5828
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_4d

    return-void

    .line 5833
    :cond_b
    :try_start_b
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, p2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_14} :catch_43
    .catchall {:try_start_b .. :try_end_14} :catchall_4d

    .line 5837
    .local v1, "in":Ljava/io/FileInputStream;
    nop

    .line 5840
    :try_start_15
    invoke-static {v1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v2

    .line 5841
    .local v2, "parser":Landroid/util/TypedXmlPullParser;
    invoke-direct {p0, v2, p1, p3, p4}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->parseLegacyRuntimePermissions(Landroid/util/TypedXmlPullParser;ILcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;)V
    :try_end_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_1c} :catch_24
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1c} :catch_24
    .catchall {:try_start_15 .. :try_end_1c} :catchall_22

    .line 5847
    .end local v2    # "parser":Landroid/util/TypedXmlPullParser;
    :try_start_1c
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5848
    nop

    .line 5849
    .end local v1    # "in":Ljava/io/FileInputStream;
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_4d

    .line 5850
    return-void

    .line 5847
    .restart local v1    # "in":Ljava/io/FileInputStream;
    :catchall_22
    move-exception v2

    goto :goto_3e

    .line 5843
    :catch_24
    move-exception v2

    .line 5844
    .local v2, "e":Ljava/lang/Exception;
    :try_start_25
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed parsing permissions file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "in":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
    .end local p1    # "userId":I
    .end local p2    # "permissionsFile":Ljava/io/File;
    .end local p3    # "packageStates":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local p4    # "sharedUsers":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;>;"
    throw v3
    :try_end_3e
    .catchall {:try_start_25 .. :try_end_3e} :catchall_22

    .line 5847
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
    .restart local p1    # "userId":I
    .restart local p2    # "permissionsFile":Ljava/io/File;
    .restart local p3    # "packageStates":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local p4    # "sharedUsers":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;>;"
    :goto_3e
    :try_start_3e
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5848
    nop

    .end local p0    # "this":Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
    .end local p1    # "userId":I
    .end local p2    # "permissionsFile":Ljava/io/File;
    .end local p3    # "packageStates":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .end local p4    # "sharedUsers":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;>;"
    throw v2

    .line 5834
    .end local v1    # "in":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
    .restart local p1    # "userId":I
    .restart local p2    # "permissionsFile":Ljava/io/File;
    .restart local p3    # "packageStates":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .restart local p4    # "sharedUsers":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;>;"
    :catch_43
    move-exception v1

    .line 5835
    .local v1, "fnfe":Ljava/io/FileNotFoundException;
    const-string v2, "PackageManager"

    const-string v3, "No permissions state"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5836
    monitor-exit v0

    return-void

    .line 5849
    .end local v1    # "fnfe":Ljava/io/FileNotFoundException;
    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_3e .. :try_end_4f} :catchall_4d

    throw v1
.end method

.method private readPermissionsState(Ljava/util/List;Lcom/android/server/pm/permission/LegacyPermissionState;I)V
    .registers 12
    .param p2, "permissionsState"    # Lcom/android/server/pm/permission/LegacyPermissionState;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;",
            ">;",
            "Lcom/android/server/pm/permission/LegacyPermissionState;",
            "I)V"
        }
    .end annotation

    .line 5812
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 5813
    .local v0, "permissionsSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_25

    .line 5814
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;

    .line 5815
    .local v2, "permission":Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;
    invoke-virtual {v2}, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v3

    .line 5816
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;->isGranted()Z

    move-result v4

    .line 5817
    .local v4, "granted":Z
    invoke-virtual {v2}, Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;->getFlags()I

    move-result v5

    .line 5818
    .local v5, "flags":I
    new-instance v6, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    const/4 v7, 0x1

    invoke-direct {v6, v3, v7, v4, v5}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;-><init>(Ljava/lang/String;ZZI)V

    invoke-virtual {p2, v6, p3}, Lcom/android/server/pm/permission/LegacyPermissionState;->putPermissionState(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;I)V

    .line 5813
    .end local v2    # "permission":Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "granted":Z
    .end local v5    # "flags":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 5821
    .end local v1    # "i":I
    :cond_25
    return-void
.end method

.method private static uniformRandom(DD)J
    .registers 8
    .param p0, "low"    # D
    .param p2, "high"    # D

    .line 5559
    sub-double v0, p2, p0

    .line 5560
    .local v0, "mag":D
    sget-object v2, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->sRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    mul-double/2addr v2, v0

    add-double/2addr v2, p0

    double-to-long v2, v2

    return-wide v2
.end method

.method private writePendingStates()V
    .registers 6

    .line 5694
    :goto_0
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5695
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPendingStatesToWrite:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_d

    .line 5696
    monitor-exit v0

    .line 5706
    return-void

    .line 5698
    :cond_d
    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPendingStatesToWrite:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 5699
    .local v1, "userId":I
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPendingStatesToWrite:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/permission/persistence/RuntimePermissionsState;

    .line 5700
    .local v3, "runtimePermissions":Lcom/android/permission/persistence/RuntimePermissionsState;
    iget-object v4, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPendingStatesToWrite:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 5701
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_33

    .line 5702
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistenceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5703
    :try_start_25
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistence:Lcom/android/permission/persistence/RuntimePermissionsPersistence;

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/android/permission/persistence/RuntimePermissionsPersistence;->writeForUser(Lcom/android/permission/persistence/RuntimePermissionsState;Landroid/os/UserHandle;)V

    .line 5704
    monitor-exit v2

    .line 5705
    .end local v1    # "userId":I
    .end local v3    # "runtimePermissions":Lcom/android/permission/persistence/RuntimePermissionsState;
    goto :goto_0

    .line 5704
    .restart local v1    # "userId":I
    .restart local v3    # "runtimePermissions":Lcom/android/permission/persistence/RuntimePermissionsState;
    :catchall_30
    move-exception v0

    monitor-exit v2
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_30

    throw v0

    .line 5701
    .end local v1    # "userId":I
    .end local v3    # "runtimePermissions":Lcom/android/permission/persistence/RuntimePermissionsState;
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v1
.end method


# virtual methods
.method public deleteUserRuntimePermissionsFile(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 5735
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistenceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5736
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistence:Lcom/android/permission/persistence/RuntimePermissionsPersistence;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/permission/persistence/RuntimePermissionsPersistence;->deleteForUser(Landroid/os/UserHandle;)V

    .line 5737
    monitor-exit v0

    .line 5738
    return-void

    .line 5737
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method getVersion(I)I
    .registers 5
    .param p1, "userId"    # I

    .line 5510
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5511
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    monitor-exit v0

    return v1

    .line 5512
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public isPermissionUpgradeNeeded(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 5523
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5524
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPermissionUpgradeNeeded:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 5525
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method synthetic lambda$writeStateForUser$0$com-android-server-pm-Settings$RuntimePermissionPersistence()V
    .registers 1

    .line 5674
    invoke-direct {p0}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePendingStates()V

    return-void
.end method

.method synthetic lambda$writeStateForUser$1$com-android-server-pm-Settings$RuntimePermissionPersistence(Ljava/lang/Object;ZZLcom/android/server/pm/permission/LegacyPermissionDataProvider;ILcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;ILjava/lang/String;Landroid/os/Handler;)V
    .registers 23
    .param p1, "pmLock"    # Ljava/lang/Object;
    .param p2, "sync"    # Z
    .param p3, "isLegacyPermissionStateStale"    # Z
    .param p4, "legacyPermissionDataProvider"    # Lcom/android/server/pm/permission/LegacyPermissionDataProvider;
    .param p5, "userId"    # I
    .param p6, "packageStates"    # Lcom/android/server/utils/WatchedArrayMap;
    .param p7, "sharedUsers"    # Lcom/android/server/utils/WatchedArrayMap;
    .param p8, "version"    # I
    .param p9, "fingerprint"    # Ljava/lang/String;
    .param p10, "pmHandler"    # Landroid/os/Handler;

    .line 5627
    move-object v1, p0

    move/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    monitor-enter p1

    .line 5628
    if-nez p2, :cond_c

    if-eqz p3, :cond_f

    .line 5629
    :cond_c
    :try_start_c
    invoke-interface/range {p4 .. p5}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->writeLegacyPermissionStateTEMP(I)V

    .line 5632
    :cond_f
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 5634
    .local v0, "packagePermissions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;>;"
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v5

    .line 5635
    .local v5, "packagesSize":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_19
    if-ge v6, v5, :cond_49

    .line 5636
    invoke-virtual {v3, v6}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 5637
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {v3, v6}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/pkg/PackageStateInternal;

    .line 5638
    .local v8, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->hasSharedUser()Z

    move-result v9

    if-nez v9, :cond_46

    .line 5639
    nop

    .line 5641
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v9

    .line 5640
    invoke-direct {p0, v9, v2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->getPermissionsFromPermissionsState(Lcom/android/server/pm/permission/LegacyPermissionState;I)Ljava/util/List;

    move-result-object v9

    .line 5642
    .local v9, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_43

    .line 5643
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->isInstallPermissionsFixed()Z

    move-result v10

    if-nez v10, :cond_43

    .line 5647
    goto :goto_46

    .line 5649
    :cond_43
    invoke-interface {v0, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5635
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v9    # "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;"
    :cond_46
    :goto_46
    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    .line 5654
    .end local v6    # "i":I
    :cond_49
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 5656
    .local v6, "sharedUserPermissions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;>;"
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v7

    .line 5657
    .local v7, "sharedUsersSize":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_53
    if-ge v8, v7, :cond_71

    .line 5658
    invoke-virtual {v4, v8}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 5659
    .local v9, "sharedUserName":Ljava/lang/String;
    invoke-virtual {v4, v8}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/SharedUserSetting;

    .line 5660
    .local v10, "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    nop

    .line 5662
    invoke-virtual {v10}, Lcom/android/server/pm/SharedUserSetting;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v11

    .line 5661
    invoke-direct {p0, v11, v2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->getPermissionsFromPermissionsState(Lcom/android/server/pm/permission/LegacyPermissionState;I)Ljava/util/List;

    move-result-object v11

    .line 5663
    .local v11, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;"
    invoke-interface {v6, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5657
    nop

    .end local v9    # "sharedUserName":Ljava/lang/String;
    .end local v10    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .end local v11    # "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;"
    add-int/lit8 v8, v8, 0x1

    goto :goto_53

    .line 5666
    .end local v8    # "i":I
    :cond_71
    new-instance v8, Lcom/android/permission/persistence/RuntimePermissionsState;
    :try_end_73
    .catchall {:try_start_c .. :try_end_73} :catchall_99

    move/from16 v9, p8

    move-object/from16 v10, p9

    :try_start_77
    invoke-direct {v8, v9, v10, v0, v6}, Lcom/android/permission/persistence/RuntimePermissionsState;-><init>(ILjava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    move-object v5, v8

    .line 5668
    .end local v0    # "packagePermissions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;>;"
    .end local v6    # "sharedUserPermissions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;>;"
    .end local v7    # "sharedUsersSize":I
    .local v5, "runtimePermissions":Lcom/android/permission/persistence/RuntimePermissionsState;
    monitor-exit p1
    :try_end_7c
    .catchall {:try_start_77 .. :try_end_7c} :catchall_a0

    .line 5669
    iget-object v6, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 5670
    :try_start_7f
    iget-object v0, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPendingStatesToWrite:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5671
    monitor-exit v6
    :try_end_85
    .catchall {:try_start_7f .. :try_end_85} :catchall_96

    .line 5672
    if-eqz p10, :cond_92

    .line 5674
    iget-object v0, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistenceHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;)V

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_95

    .line 5677
    :cond_92
    invoke-direct {p0}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writePendingStates()V

    .line 5679
    :goto_95
    return-void

    .line 5671
    :catchall_96
    move-exception v0

    :try_start_97
    monitor-exit v6
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    throw v0

    .line 5668
    .end local v5    # "runtimePermissions":Lcom/android/permission/persistence/RuntimePermissionsState;
    :catchall_99
    move-exception v0

    move/from16 v9, p8

    move-object/from16 v10, p9

    :goto_9e
    :try_start_9e
    monitor-exit p1
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_a0

    throw v0

    :catchall_a0
    move-exception v0

    goto :goto_9e
.end method

.method public readStateForUserSync(ILcom/android/server/pm/Settings$VersionInfo;Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;Ljava/io/File;)V
    .registers 27
    .param p1, "userId"    # I
    .param p2, "internalVersion"    # Lcom/android/server/pm/Settings$VersionInfo;
    .param p5, "userRuntimePermissionsFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/pm/Settings$VersionInfo;",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 5745
    .local p3, "packageSettings":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/pm/PackageSetting;>;"
    .local p4, "sharedUsers":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;>;"
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v5, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistenceLock:Ljava/lang/Object;

    monitor-enter v5

    .line 5746
    :try_start_b
    iget-object v0, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPersistence:Lcom/android/permission/persistence/RuntimePermissionsPersistence;

    invoke-static/range {p1 .. p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    invoke-interface {v0, v6}, Lcom/android/permission/persistence/RuntimePermissionsPersistence;->readForUser(Landroid/os/UserHandle;)Lcom/android/permission/persistence/RuntimePermissionsState;

    move-result-object v0

    move-object v6, v0

    .line 5747
    .local v6, "runtimePermissions":Lcom/android/permission/persistence/RuntimePermissionsState;
    monitor-exit v5
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_129

    .line 5748
    if-nez v6, :cond_22

    .line 5749
    move-object/from16 v7, p5

    invoke-direct {v1, v2, v7, v3, v4}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->readLegacyStateForUserSync(ILjava/io/File;Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;)V

    .line 5751
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writeStateForUserAsync(I)V

    .line 5752
    return-void

    .line 5754
    :cond_22
    move-object/from16 v7, p5

    iget-object v8, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 5757
    :try_start_27
    invoke-virtual {v6}, Lcom/android/permission/persistence/RuntimePermissionsState;->getVersion()I

    move-result v0

    .line 5758
    .local v0, "version":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_2f

    .line 5759
    const/4 v0, -0x1

    .line 5761
    :cond_2f
    iget-object v5, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 5763
    invoke-virtual {v6}, Lcom/android/permission/persistence/RuntimePermissionsState;->getFingerprint()Ljava/lang/String;

    move-result-object v5

    .line 5764
    .local v5, "fingerprint":Ljava/lang/String;
    iget-object v9, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v9, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5766
    move-object/from16 v9, p2

    iget v10, v9, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    const/16 v11, 0x1e

    if-ge v10, v11, :cond_47

    const/4 v10, 0x1

    goto :goto_48

    :cond_47
    const/4 v10, 0x0

    .line 5768
    .local v10, "isUpgradeToR":Z
    :goto_48
    nop

    .line 5769
    invoke-virtual {v6}, Lcom/android/permission/persistence/RuntimePermissionsState;->getPackagePermissions()Ljava/util/Map;

    move-result-object v11

    .line 5770
    .local v11, "packagePermissions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v14

    .line 5771
    .local v14, "packagesSize":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_52
    if-ge v15, v14, :cond_c4

    .line 5772
    invoke-virtual {v3, v15}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v17, v16

    .line 5773
    .local v17, "packageName":Ljava/lang/String;
    invoke-virtual {v3, v15}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v18, v16

    .line 5775
    .local v18, "packageSetting":Lcom/android/server/pm/PackageSetting;
    nop

    .line 5776
    move-object/from16 v12, v17

    .end local v17    # "packageName":Ljava/lang/String;
    .local v12, "packageName":Ljava/lang/String;
    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;

    move-object/from16 v19, v17

    .line 5777
    .local v19, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;"
    move-object/from16 v13, v19

    .end local v19    # "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;"
    .local v13, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;"
    if-eqz v13, :cond_88

    .line 5778
    nop

    .line 5779
    move/from16 v19, v0

    .end local v0    # "version":I
    .local v19, "version":I
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/pm/PackageSetting;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v0

    .line 5778
    invoke-direct {v1, v13, v0, v2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->readPermissionsState(Ljava/util/List;Lcom/android/server/pm/permission/LegacyPermissionState;I)V

    .line 5781
    move-object/from16 v0, v18

    const/4 v3, 0x1

    .end local v18    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .local v0, "packageSetting":Lcom/android/server/pm/PackageSetting;
    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageSetting;->setInstallPermissionsFixed(Z)Lcom/android/server/pm/PackageSetting;

    move-object/from16 v18, v5

    const/16 v16, 0x0

    goto :goto_b7

    .line 5782
    .end local v19    # "version":I
    .local v0, "version":I
    .restart local v18    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    :cond_88
    move/from16 v19, v0

    move-object/from16 v0, v18

    .end local v18    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .local v0, "packageSetting":Lcom/android/server/pm/PackageSetting;
    .restart local v19    # "version":I
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v3

    if-nez v3, :cond_b3

    if-nez v10, :cond_b3

    .line 5783
    const-string v3, "PackageSettings"

    move-object/from16 v18, v5

    .end local v5    # "fingerprint":Ljava/lang/String;
    .local v18, "fingerprint":Ljava/lang/String;
    const-string v5, "Missing permission state for package %s on user %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v12, v7, v16

    .line 5784
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/4 v9, 0x1

    aput-object v20, v7, v9

    .line 5783
    invoke-static {v3, v5, v7}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5785
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v3

    invoke-virtual {v3, v9, v2}, Lcom/android/server/pm/permission/LegacyPermissionState;->setMissing(ZI)V

    goto :goto_b7

    .line 5782
    .end local v18    # "fingerprint":Ljava/lang/String;
    .restart local v5    # "fingerprint":Ljava/lang/String;
    :cond_b3
    move-object/from16 v18, v5

    const/16 v16, 0x0

    .line 5771
    .end local v0    # "packageSetting":Lcom/android/server/pm/PackageSetting;
    .end local v5    # "fingerprint":Ljava/lang/String;
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;"
    .restart local v18    # "fingerprint":Ljava/lang/String;
    :goto_b7
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v9, p2

    move-object/from16 v3, p3

    move-object/from16 v7, p5

    move-object/from16 v5, v18

    move/from16 v0, v19

    goto :goto_52

    .end local v18    # "fingerprint":Ljava/lang/String;
    .end local v19    # "version":I
    .local v0, "version":I
    .restart local v5    # "fingerprint":Ljava/lang/String;
    :cond_c4
    move/from16 v19, v0

    move-object/from16 v18, v5

    .line 5789
    .end local v0    # "version":I
    .end local v5    # "fingerprint":Ljava/lang/String;
    .end local v15    # "i":I
    .restart local v18    # "fingerprint":Ljava/lang/String;
    .restart local v19    # "version":I
    nop

    .line 5790
    invoke-virtual {v6}, Lcom/android/permission/persistence/RuntimePermissionsState;->getSharedUserPermissions()Ljava/util/Map;

    move-result-object v0

    .line 5791
    .local v0, "sharedUserPermissions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;>;"
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v3

    .line 5792
    .local v3, "sharedUsersSize":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_d2
    if-ge v5, v3, :cond_122

    .line 5793
    invoke-virtual {v4, v5}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 5794
    .local v7, "sharedUserName":Ljava/lang/String;
    invoke-virtual {v4, v5}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/SharedUserSetting;

    .line 5796
    .local v9, "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    nop

    .line 5797
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 5798
    .local v12, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;"
    if-eqz v12, :cond_f5

    .line 5799
    nop

    .line 5800
    invoke-virtual {v9}, Lcom/android/server/pm/SharedUserSetting;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v13

    .line 5799
    invoke-direct {v1, v12, v13, v2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->readPermissionsState(Ljava/util/List;Lcom/android/server/pm/permission/LegacyPermissionState;I)V

    move-object/from16 v16, v0

    const/4 v13, 0x1

    goto :goto_11d

    .line 5801
    :cond_f5
    if-nez v10, :cond_11a

    .line 5802
    const-string v13, "PackageSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "sharedUserPermissions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;>;"
    .local v16, "sharedUserPermissions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;>;"
    const-string v0, "Missing permission state for shared user: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5803
    invoke-virtual {v9}, Lcom/android/server/pm/SharedUserSetting;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v0

    const/4 v13, 0x1

    invoke-virtual {v0, v13, v2}, Lcom/android/server/pm/permission/LegacyPermissionState;->setMissing(ZI)V

    goto :goto_11d

    .line 5801
    .end local v16    # "sharedUserPermissions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;>;"
    .restart local v0    # "sharedUserPermissions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;>;"
    :cond_11a
    move-object/from16 v16, v0

    const/4 v13, 0x1

    .line 5792
    .end local v0    # "sharedUserPermissions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;>;"
    .end local v7    # "sharedUserName":Ljava/lang/String;
    .end local v9    # "sharedUserSetting":Lcom/android/server/pm/SharedUserSetting;
    .end local v12    # "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;"
    .restart local v16    # "sharedUserPermissions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;>;"
    :goto_11d
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v16

    goto :goto_d2

    .end local v16    # "sharedUserPermissions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;>;"
    .restart local v0    # "sharedUserPermissions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;>;"
    :cond_122
    move-object/from16 v16, v0

    .line 5806
    .end local v0    # "sharedUserPermissions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;>;"
    .end local v3    # "sharedUsersSize":I
    .end local v5    # "i":I
    .end local v10    # "isUpgradeToR":Z
    .end local v11    # "packagePermissions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/android/permission/persistence/RuntimePermissionsState$PermissionState;>;>;"
    .end local v14    # "packagesSize":I
    .end local v18    # "fingerprint":Ljava/lang/String;
    .end local v19    # "version":I
    monitor-exit v8

    .line 5807
    return-void

    .line 5806
    :catchall_126
    move-exception v0

    monitor-exit v8
    :try_end_128
    .catchall {:try_start_27 .. :try_end_128} :catchall_126

    throw v0

    .line 5747
    .end local v6    # "runtimePermissions":Lcom/android/permission/persistence/RuntimePermissionsState;
    :catchall_129
    move-exception v0

    :try_start_12a
    monitor-exit v5
    :try_end_12b
    .catchall {:try_start_12a .. :try_end_12b} :catchall_129

    throw v0
.end method

.method public setPermissionControllerVersion(J)V
    .registers 10
    .param p1, "version"    # J

    .line 5541
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5542
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 5543
    .local v1, "numUser":I
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->getExtendedFingerprint(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mExtendedFingerprint:Ljava/lang/String;

    .line 5545
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v1, :cond_33

    .line 5546
    iget-object v3, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 5547
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5548
    .local v4, "fingerprint":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mPermissionUpgradeNeeded:Landroid/util/SparseBooleanArray;

    iget-object v6, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mExtendedFingerprint:Ljava/lang/String;

    .line 5549
    invoke-static {v6, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2c

    const/4 v6, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v6, 0x0

    .line 5548
    :goto_2d
    invoke-virtual {v5, v3, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5545
    .end local v3    # "userId":I
    .end local v4    # "fingerprint":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 5551
    .end local v1    # "numUser":I
    .end local v2    # "i":I
    :cond_33
    monitor-exit v0

    .line 5552
    return-void

    .line 5551
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method

.method setVersion(II)V
    .registers 5
    .param p1, "version"    # I
    .param p2, "userId"    # I

    .line 5516
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5517
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 5518
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writeStateForUserAsync(I)V

    .line 5519
    monitor-exit v0

    .line 5520
    return-void

    .line 5519
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public updateRuntimePermissionsFingerprint(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 5529
    iget-object v0, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5530
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mExtendedFingerprint:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 5535
    iget-object v2, p0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5536
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writeStateForUserAsync(I)V

    .line 5537
    monitor-exit v0

    .line 5538
    return-void

    .line 5531
    :cond_11
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "The version of the permission controller hasn\'t been set before trying to update the fingerprint."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
    .end local p1    # "userId":I
    throw v1

    .line 5537
    .restart local p0    # "this":Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
    .restart local p1    # "userId":I
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public writeStateForUser(ILcom/android/server/pm/permission/LegacyPermissionDataProvider;Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;Landroid/os/Handler;Ljava/lang/Object;Z)V
    .registers 24
    .param p1, "userId"    # I
    .param p2, "legacyPermissionDataProvider"    # Lcom/android/server/pm/permission/LegacyPermissionDataProvider;
    .param p5, "pmHandler"    # Landroid/os/Handler;
    .param p6, "pmLock"    # Ljava/lang/Object;
    .param p7, "sync"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/pm/permission/LegacyPermissionDataProvider;",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "+",
            "Lcom/android/server/pm/pkg/PackageStateInternal;",
            ">;",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/SharedUserSetting;",
            ">;",
            "Landroid/os/Handler;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .line 5615
    .local p3, "packageStates":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;+Lcom/android/server/pm/pkg/PackageStateInternal;>;"
    .local p4, "sharedUsers":Lcom/android/server/utils/WatchedArrayMap;, "Lcom/android/server/utils/WatchedArrayMap<Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;>;"
    move-object/from16 v13, p0

    move/from16 v14, p1

    move-object/from16 v15, p5

    iget-object v1, v13, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5616
    :try_start_9
    iget-object v0, v13, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v0, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 5617
    iget-object v0, v13, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v14}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 5619
    iget-object v0, v13, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mVersions:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v14, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    .line 5620
    .local v10, "version":I
    iget-object v0, v13, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mFingerprints:Landroid/util/SparseArray;

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    .line 5621
    .local v11, "fingerprint":Ljava/lang/String;
    iget-boolean v5, v13, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mIsLegacyPermissionStateStale:Z

    .line 5622
    .local v5, "isLegacyPermissionStateStale":Z
    iput-boolean v2, v13, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mIsLegacyPermissionStateStale:Z

    .line 5623
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_48

    .line 5625
    new-instance v0, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda1;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p6

    move/from16 v4, p7

    move-object/from16 v6, p2

    move/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v12, p5

    invoke-direct/range {v1 .. v12}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;Ljava/lang/Object;ZZLcom/android/server/pm/permission/LegacyPermissionDataProvider;ILcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;ILjava/lang/String;Landroid/os/Handler;)V

    .line 5681
    .local v0, "writer":Ljava/lang/Runnable;
    if-eqz v15, :cond_44

    .line 5683
    invoke-virtual {v15, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_47

    .line 5686
    :cond_44
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 5688
    :goto_47
    return-void

    .line 5623
    .end local v0    # "writer":Ljava/lang/Runnable;
    .end local v5    # "isLegacyPermissionStateStale":Z
    .end local v10    # "version":I
    .end local v11    # "fingerprint":Ljava/lang/String;
    :catchall_48
    move-exception v0

    :try_start_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v0
.end method

.method public writeStateForUserAsync(I)V
    .registers 20
    .param p1, "userId"    # I

    .line 5570
    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 5571
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mIsLegacyPermissionStateStale:Z

    .line 5572
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 5573
    .local v4, "currentTimeMillis":J
    invoke-static {}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->nextWritePermissionDelayMillis()J

    move-result-wide v6

    .line 5575
    .local v6, "writePermissionDelayMillis":J
    iget-object v8, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_53

    .line 5576
    iget-object v0, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5579
    iget-object v0, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    .line 5580
    invoke-virtual {v0, v2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v8

    .line 5581
    .local v8, "lastNotWrittenMutationTimeMillis":J
    sub-long v10, v4, v8

    .line 5583
    .local v10, "timeSinceLastNotWrittenMutationMillis":J
    const-wide/16 v12, 0x7d0

    cmp-long v0, v10, v12

    if-ltz v0, :cond_38

    .line 5585
    iget-object v0, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5586
    monitor-exit v3

    return-void

    .line 5590
    :cond_38
    add-long/2addr v12, v8

    sub-long/2addr v12, v4

    const-wide/16 v14, 0x0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 5592
    .local v12, "maxDelayMillis":J
    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .line 5595
    .local v14, "writeDelayMillis":J
    iget-object v0, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5596
    .local v0, "message":Landroid/os/Message;
    move-wide/from16 v16, v8

    .end local v8    # "lastNotWrittenMutationTimeMillis":J
    .local v16, "lastNotWrittenMutationTimeMillis":J
    iget-object v8, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v8, v0, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5597
    nop

    .end local v0    # "message":Landroid/os/Message;
    .end local v10    # "timeSinceLastNotWrittenMutationMillis":J
    .end local v12    # "maxDelayMillis":J
    .end local v14    # "writeDelayMillis":J
    .end local v16    # "lastNotWrittenMutationTimeMillis":J
    goto :goto_68

    .line 5598
    :cond_53
    iget-object v8, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mLastNotWrittenMutationTimesMillis:Landroid/util/SparseLongArray;

    invoke-virtual {v8, v2, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 5599
    iget-object v8, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v8, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 5600
    .local v8, "message":Landroid/os/Message;
    iget-object v9, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mAsyncHandler:Landroid/os/Handler;

    invoke-virtual {v9, v8, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5601
    iget-object v9, v1, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->mWriteScheduled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5603
    .end local v4    # "currentTimeMillis":J
    .end local v6    # "writePermissionDelayMillis":J
    .end local v8    # "message":Landroid/os/Message;
    :goto_68
    monitor-exit v3

    .line 5604
    return-void

    .line 5603
    :catchall_6a
    move-exception v0

    monitor-exit v3
    :try_end_6c
    .catchall {:try_start_8 .. :try_end_6c} :catchall_6a

    throw v0
.end method
