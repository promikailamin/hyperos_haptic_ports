.class public Landroid/mtp/MtpStorageManager;
.super Ljava/lang/Object;
.source "MtpStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpStorageManager$MtpNotifier;,
        Landroid/mtp/MtpStorageManager$MtpObject;,
        Landroid/mtp/MtpStorageManager$MtpOperation;,
        Landroid/mtp/MtpStorageManager$MtpObjectState;,
        Landroid/mtp/MtpStorageManager$MtpObjectObserver;
    }
.end annotation


# static fields
.field private static final greylist-max-o IN_IGNORED:I = 0x8000

.field private static final greylist-max-o IN_ISDIR:I = 0x40000000

.field private static final greylist-max-o IN_ONLYDIR:I = 0x1000000

.field private static final greylist-max-o IN_Q_OVERFLOW:I = 0x4000

.field private static final greylist-max-o TAG:Ljava/lang/String;

.field public static greylist-max-o sDebug:Z


# instance fields
.field private volatile greylist-max-o mCheckConsistency:Z

.field private greylist-max-o mConsistencyThread:Ljava/lang/Thread;

.field private greylist-max-o mMtpNotifier:Landroid/mtp/MtpStorageManager$MtpNotifier;

.field private greylist-max-o mNextObjectId:I

.field private greylist-max-o mNextStorageId:I

.field private greylist-max-o mObjects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpStorageManager$MtpObject;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mRoots:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpStorageManager$MtpObject;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mSubdirectories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mhandleAddedObject(Landroid/mtp/MtpStorageManager;Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpStorageManager;->handleAddedObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleChangedObject(Landroid/mtp/MtpStorageManager;Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpStorageManager;->handleChangedObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleRemovedObject(Landroid/mtp/MtpStorageManager;Landroid/mtp/MtpStorageManager$MtpObject;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager;->handleRemovedObject(Landroid/mtp/MtpStorageManager$MtpObject;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 51
    const-class v0, Landroid/mtp/MtpStorageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Landroid/mtp/MtpStorageManager;->sDebug:Z

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/mtp/MtpStorageManager$MtpNotifier;Ljava/util/Set;)V
    .registers 5
    .param p1, "notifier"    # Landroid/mtp/MtpStorageManager$MtpNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/mtp/MtpStorageManager$MtpNotifier;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 393
    .local p2, "subdirectories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    iput-object p1, p0, Landroid/mtp/MtpStorageManager;->mMtpNotifier:Landroid/mtp/MtpStorageManager$MtpNotifier;

    .line 395
    iput-object p2, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;

    .line 396
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    .line 397
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/mtp/MtpStorageManager;->mRoots:Ljava/util/HashMap;

    .line 398
    const/4 v0, 0x1

    iput v0, p0, Landroid/mtp/MtpStorageManager;->mNextObjectId:I

    .line 399
    iput v0, p0, Landroid/mtp/MtpStorageManager;->mNextStorageId:I

    .line 401
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/MtpStorageManager;->mCheckConsistency:Z

    .line 402
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/mtp/MtpStorageManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/mtp/MtpStorageManager$$ExternalSyntheticLambda0;-><init>(Landroid/mtp/MtpStorageManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/mtp/MtpStorageManager;->mConsistencyThread:Ljava/lang/Thread;

    .line 416
    iget-boolean v0, p0, Landroid/mtp/MtpStorageManager;->mCheckConsistency:Z

    if-eqz v0, :cond_32

    .line 417
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mConsistencyThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 418
    :cond_32
    return-void
.end method

.method private declared-synchronized greylist-max-o addObjectToCache(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)Landroid/mtp/MtpStorageManager$MtpObject;
    .registers 11
    .param p1, "parent"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "isDir"    # Z

    monitor-enter p0

    .line 656
    :try_start_1
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_54

    if-eq v0, p1, :cond_14

    .line 658
    monitor-exit p0

    return-object v1

    .line 659
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_14
    :try_start_14
    invoke-static {p1, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChild(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_54

    if-eqz v0, :cond_1c

    .line 661
    monitor-exit p0

    return-object v1

    .line 663
    .restart local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;

    if-eqz v0, :cond_30

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_54

    if-nez v0, :cond_30

    .line 665
    monitor-exit p0

    return-object v1

    .line 668
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_30
    :try_start_30
    new-instance v6, Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-direct {p0}, Landroid/mtp/MtpStorageManager;->getNextObjectId()I

    move-result v2

    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$fgetmStorage(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorage;

    move-result-object v3

    move-object v0, v6

    move-object v1, p2

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/mtp/MtpStorageManager$MtpObject;-><init>(Ljava/lang/String;ILandroid/mtp/MtpStorage;Landroid/mtp/MtpStorageManager$MtpObject;Z)V

    move-object v0, v6

    .line 669
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    iget-object v1, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$maddChild(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V
    :try_end_52
    .catchall {:try_start_30 .. :try_end_52} :catchall_54

    .line 671
    monitor-exit p0

    return-object v0

    .line 655
    .end local v0    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p1    # "parent":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p2    # "newName":Ljava/lang/String;
    .end local p3    # "isDir":Z
    :catchall_54
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized greylist-max-o generalBeginCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z
    .registers 6
    .param p1, "obj"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "newId"    # Z

    monitor-enter p0

    .line 1268
    :try_start_1
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 1269
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpOperation;->COPY:Landroid/mtp/MtpStorageManager$MtpOperation;

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetOperation(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpOperation;)V

    .line 1270
    if-eqz p2, :cond_21

    .line 1271
    invoke-direct {p0}, Landroid/mtp/MtpStorageManager;->getNextObjectId()I

    move-result v0

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetId(Landroid/mtp/MtpStorageManager$MtpObject;I)V

    .line 1272
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_21
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1275
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 1276
    .local v1, "child":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-direct {p0, v1, p2}, Landroid/mtp/MtpStorageManager;->generalBeginCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v2
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_48

    if-nez v2, :cond_44

    .line 1277
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 1276
    .end local v1    # "child":Landroid/mtp/MtpStorageManager$MtpObject;
    .restart local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_44
    goto :goto_2f

    .line 1278
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_45
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1267
    .end local p1    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p2    # "newId":Z
    :catchall_48
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized greylist-max-o generalBeginRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpOperation;)Z
    .registers 5
    .param p1, "obj"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "op"    # Landroid/mtp/MtpStorageManager$MtpOperation;

    monitor-enter p0

    .line 1258
    :try_start_1
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 1259
    invoke-static {p1, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetOperation(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpOperation;)V

    .line 1260
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1261
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 1262
    .local v1, "child":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-direct {p0, v1, p2}, Landroid/mtp/MtpStorageManager;->generalBeginRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpOperation;)Z
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_2a

    goto :goto_17

    .line 1264
    .end local v1    # "child":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_27
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1257
    .end local p1    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p2    # "op":Landroid/mtp/MtpStorageManager$MtpOperation;
    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized greylist-max-o generalBeginRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)Z
    .registers 4
    .param p1, "fromObj"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "toObj"    # Landroid/mtp/MtpStorageManager$MtpObject;

    monitor-enter p0

    .line 1244
    :try_start_1
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 1245
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p2, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 1246
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpOperation;->RENAME:Landroid/mtp/MtpStorageManager$MtpOperation;

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetOperation(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpOperation;)V

    .line 1247
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpOperation;->RENAME:Landroid/mtp/MtpStorageManager$MtpOperation;

    invoke-static {p2, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetOperation(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpOperation;)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_18

    .line 1248
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1243
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    .end local p1    # "fromObj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p2    # "toObj":Landroid/mtp/MtpStorageManager$MtpObject;
    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized greylist-max-o generalEndAddObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z
    .registers 7
    .param p1, "obj"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "succeeded"    # Z
    .param p3, "removeGlobal"    # Z

    monitor-enter p0

    .line 1165
    :try_start_1
    sget-object v0, Landroid/mtp/MtpStorageManager$1;->$SwitchMap$android$mtp$MtpStorageManager$MtpObjectState:[I

    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObjectState;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_59

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_5c

    .line 1199
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    :pswitch_11
    monitor-exit p0

    return v1

    .line 1179
    .restart local p0    # "this":Landroid/mtp/MtpStorageManager;
    :pswitch_13
    :try_start_13
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->NORMAL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 1180
    if-nez p2, :cond_56

    .line 1181
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 1183
    .local v0, "parent":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-direct {p0, p1, p3, v1}, Landroid/mtp/MtpStorageManager;->removeObjectFromCache(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v2
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_59

    if-nez v2, :cond_26

    .line 1184
    monitor-exit p0

    return v1

    .line 1185
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/mtp/MtpStorageManager;->handleAddedObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)V

    .line 1186
    .end local v0    # "parent":Landroid/mtp/MtpStorageManager$MtpObject;
    goto :goto_56

    .line 1190
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    :pswitch_32
    invoke-direct {p0, p1, p3, v1}, Landroid/mtp/MtpStorageManager;->removeObjectFromCache(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v0
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_59

    if-nez v0, :cond_3a

    .line 1191
    monitor-exit p0

    return v1

    .line 1192
    .restart local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_3a
    if-eqz p2, :cond_56

    .line 1194
    :try_start_3c
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mMtpNotifier:Landroid/mtp/MtpStorageManager$MtpNotifier;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/mtp/MtpStorageManager$MtpNotifier;->sendObjectRemoved(I)V

    goto :goto_56

    .line 1168
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    :pswitch_46
    if-eqz p2, :cond_4e

    .line 1170
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_ONESHOT_ADD:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    goto :goto_56

    .line 1173
    :cond_4e
    invoke-direct {p0, p1, p3, v1}, Landroid/mtp/MtpStorageManager;->removeObjectFromCache(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v0
    :try_end_52
    .catchall {:try_start_3c .. :try_end_52} :catchall_59

    if-nez v0, :cond_56

    .line 1174
    monitor-exit p0

    return v1

    .line 1201
    .restart local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_56
    :goto_56
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1164
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    .end local p1    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p2    # "succeeded":Z
    .end local p3    # "removeGlobal":Z
    :catchall_59
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_46
        :pswitch_32
        :pswitch_11
        :pswitch_11
        :pswitch_13
    .end packed-switch
.end method

.method private declared-synchronized greylist-max-o generalEndCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z
    .registers 11
    .param p1, "obj"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "success"    # Z
    .param p3, "addGlobal"    # Z

    monitor-enter p0

    .line 1282
    if-eqz p2, :cond_12

    if-eqz p3, :cond_12

    .line 1283
    :try_start_5
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_12
    const/4 v0, 0x1

    .line 1285
    .local v0, "ret":Z
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_49

    .line 1286
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 1287
    .local v4, "child":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-static {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetOperation(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpOperation;

    move-result-object v5

    sget-object v6, Landroid/mtp/MtpStorageManager$MtpOperation;->COPY:Landroid/mtp/MtpStorageManager$MtpOperation;

    if-ne v5, v6, :cond_48

    .line 1288
    invoke-direct {p0, v4, p2, p3}, Landroid/mtp/MtpStorageManager;->generalEndCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v5

    if-eqz v5, :cond_46

    if-eqz v0, :cond_46

    move v5, v3

    goto :goto_47

    :cond_46
    move v5, v2

    :goto_47
    move v0, v5

    .line 1289
    .end local v4    # "child":Landroid/mtp/MtpStorageManager$MtpObject;
    :cond_48
    goto :goto_28

    .line 1291
    :cond_49
    if-nez p2, :cond_50

    if-nez p3, :cond_4e

    goto :goto_50

    :cond_4e
    move v1, v2

    goto :goto_51

    :cond_50
    :goto_50
    move v1, v3

    :goto_51
    invoke-direct {p0, p1, p2, v1}, Landroid/mtp/MtpStorageManager;->generalEndAddObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v1
    :try_end_55
    .catchall {:try_start_5 .. :try_end_55} :catchall_5d

    if-eqz v1, :cond_5a

    if-eqz v0, :cond_5a

    move v2, v3

    :cond_5a
    move v0, v2

    .line 1292
    monitor-exit p0

    return v0

    .line 1281
    .end local v0    # "ret":Z
    .end local p1    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p2    # "success":Z
    .end local p3    # "addGlobal":Z
    :catchall_5d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized greylist-max-o generalEndRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z
    .registers 7
    .param p1, "obj"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "success"    # Z
    .param p3, "removeGlobal"    # Z

    monitor-enter p0

    .line 1206
    :try_start_1
    sget-object v0, Landroid/mtp/MtpStorageManager$1;->$SwitchMap$android$mtp$MtpStorageManager$MtpObjectState:[I

    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObjectState;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_57

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_5a

    .line 1238
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    :pswitch_11
    monitor-exit p0

    return v1

    .line 1218
    .restart local p0    # "this":Landroid/mtp/MtpStorageManager;
    :pswitch_13
    :try_start_13
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->NORMAL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 1219
    if-eqz p2, :cond_54

    .line 1221
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 1222
    .local v0, "parent":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-direct {p0, p1, p3, v1}, Landroid/mtp/MtpStorageManager;->removeObjectFromCache(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v2
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_57

    if-nez v2, :cond_26

    .line 1223
    monitor-exit p0

    return v1

    .line 1224
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/mtp/MtpStorageManager;->handleAddedObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)V

    .line 1225
    .end local v0    # "parent":Landroid/mtp/MtpStorageManager$MtpObject;
    goto :goto_54

    .line 1229
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    :pswitch_32
    invoke-direct {p0, p1, p3, v1}, Landroid/mtp/MtpStorageManager;->removeObjectFromCache(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v0
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_57

    if-nez v0, :cond_3a

    .line 1230
    monitor-exit p0

    return v1

    .line 1231
    .restart local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_3a
    if-nez p2, :cond_54

    .line 1233
    :try_start_3c
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mMtpNotifier:Landroid/mtp/MtpStorageManager$MtpNotifier;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/mtp/MtpStorageManager$MtpNotifier;->sendObjectRemoved(I)V

    goto :goto_54

    .line 1208
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    :pswitch_46
    if-eqz p2, :cond_4e

    .line 1210
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_ONESHOT_DEL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    goto :goto_54

    .line 1213
    :cond_4e
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpObjectState;->NORMAL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V
    :try_end_53
    .catchall {:try_start_3c .. :try_end_53} :catchall_57

    .line 1215
    nop

    .line 1240
    :cond_54
    :goto_54
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 1205
    .end local p1    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p2    # "success":Z
    .end local p3    # "removeGlobal":Z
    :catchall_57
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_46
        :pswitch_32
        :pswitch_11
        :pswitch_11
        :pswitch_13
    .end packed-switch
.end method

.method private declared-synchronized greylist-max-o generalEndRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;Z)Z
    .registers 8
    .param p1, "fromObj"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "toObj"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p3, "success"    # Z

    monitor-enter p0

    .line 1253
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_7

    move v2, v0

    goto :goto_8

    :cond_7
    move v2, v1

    :goto_8
    :try_start_8
    invoke-direct {p0, p1, p3, v2}, Landroid/mtp/MtpStorageManager;->generalEndRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v2

    .line 1254
    .local v2, "ret":Z
    invoke-direct {p0, p2, p3, p3}, Landroid/mtp/MtpStorageManager;->generalEndAddObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v3
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_18

    if-eqz v3, :cond_15

    if-eqz v2, :cond_15

    goto :goto_16

    :cond_15
    move v0, v1

    :goto_16
    monitor-exit p0

    return v0

    .line 1252
    .end local v2    # "ret":Z
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    .end local p1    # "fromObj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p2    # "toObj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p3    # "success":Z
    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized greylist-max-o getChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;
    .registers 9
    .param p1, "object"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/mtp/MtpStorageManager$MtpObject;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/mtp/MtpStorageManager$MtpObject;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 616
    const/4 v0, 0x0

    if-eqz p1, :cond_8e

    :try_start_4
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_8e

    .line 620
    :cond_c
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$misVisited(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v1

    if-nez v1, :cond_88

    .line 621
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v1

    .line 628
    .local v1, "dir":Ljava/nio/file/Path;
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 629
    sget-object v2, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    const-string v3, "Observer is not null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_23
    new-instance v2, Landroid/mtp/MtpStorageManager$MtpObjectObserver;

    invoke-direct {v2, p0, p1}, Landroid/mtp/MtpStorageManager$MtpObjectObserver;-><init>(Landroid/mtp/MtpStorageManager;Landroid/mtp/MtpStorageManager$MtpObject;)V

    invoke-static {p1, v2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetObserver(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)V

    .line 631
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_b5

    .line 632
    :try_start_32
    invoke-static {v1}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v2
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_36} :catch_72
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_32 .. :try_end_36} :catch_72
    .catchall {:try_start_32 .. :try_end_36} :catchall_b5

    .line 633
    .local v2, "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :try_start_36
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/file/Path;

    .line 634
    .local v4, "file":Ljava/nio/file/Path;
    invoke-interface {v4}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v5

    invoke-interface {v5}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v5

    .line 635
    invoke-interface {v4}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v6

    .line 634
    invoke-direct {p0, p1, v5, v6}, Landroid/mtp/MtpStorageManager;->addObjectToCache(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)Landroid/mtp/MtpStorageManager$MtpObject;
    :try_end_59
    .catchall {:try_start_36 .. :try_end_59} :catchall_66

    .line 636
    nop

    .end local v4    # "file":Ljava/nio/file/Path;
    goto :goto_3a

    .line 637
    :cond_5b
    if-eqz v2, :cond_60

    :try_start_5d
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_72
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_5d .. :try_end_60} :catch_72
    .catchall {:try_start_5d .. :try_end_60} :catchall_b5

    .line 642
    .end local v2    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :cond_60
    nop

    .line 643
    const/4 v0, 0x1

    :try_start_62
    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetVisited(Landroid/mtp/MtpStorageManager$MtpObject;Z)V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_b5

    goto :goto_88

    .line 632
    .restart local v2    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :catchall_66
    move-exception v3

    if-eqz v2, :cond_71

    :try_start_69
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_6d

    goto :goto_71

    :catchall_6d
    move-exception v4

    :try_start_6e
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "dir":Ljava/nio/file/Path;
    .end local p1    # "object":Landroid/mtp/MtpStorageManager$MtpObject;
    :cond_71
    :goto_71
    throw v3
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_72} :catch_72
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_6e .. :try_end_72} :catch_72
    .catchall {:try_start_6e .. :try_end_72} :catchall_b5

    .line 637
    .end local v2    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .restart local v1    # "dir":Ljava/nio/file/Path;
    .restart local p1    # "object":Landroid/mtp/MtpStorageManager$MtpObject;
    :catch_72
    move-exception v2

    .line 638
    .local v2, "e":Ljava/lang/Exception;
    :try_start_73
    sget-object v3, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/FileObserver;->stopWatching()V

    .line 640
    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetObserver(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)V
    :try_end_86
    .catchall {:try_start_73 .. :try_end_86} :catchall_b5

    .line 641
    monitor-exit p0

    return-object v0

    .line 645
    .end local v1    # "dir":Ljava/nio/file/Path;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_88
    :goto_88
    :try_start_88
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    move-result-object v0
    :try_end_8c
    .catchall {:try_start_88 .. :try_end_8c} :catchall_b5

    monitor-exit p0

    return-object v0

    .line 617
    :cond_8e
    :goto_8e
    :try_start_8e
    sget-object v1, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find children of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_a0

    const-string v3, "null"

    goto :goto_a8

    :cond_a0
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_a8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b3
    .catchall {:try_start_8e .. :try_end_b3} :catchall_b5

    .line 618
    monitor-exit p0

    return-object v0

    .line 615
    .end local p1    # "object":Landroid/mtp/MtpStorageManager$MtpObject;
    :catchall_b5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private greylist-max-o getNextObjectId()I
    .registers 6

    .line 548
    iget v0, p0, Landroid/mtp/MtpStorageManager;->mNextObjectId:I

    .line 550
    .local v0, "ret":I
    iget v1, p0, Landroid/mtp/MtpStorageManager;->mNextObjectId:I

    int-to-long v1, v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Landroid/mtp/MtpStorageManager;->mNextObjectId:I

    .line 551
    return v0
.end method

.method private greylist-max-o getNextStorageId()I
    .registers 3

    .line 555
    iget v0, p0, Landroid/mtp/MtpStorageManager;->mNextStorageId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/mtp/MtpStorageManager;->mNextStorageId:I

    return v0
.end method

.method private declared-synchronized blacklist getObjects(Ljava/util/List;Landroid/mtp/MtpStorageManager$MtpObject;IZ)Z
    .registers 10
    .param p2, "parent"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p3, "format"    # I
    .param p4, "rec"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/mtp/MtpStorageManager$MtpObject;",
            ">;",
            "Landroid/mtp/MtpStorageManager$MtpObject;",
            "IZ)Z"
        }
    .end annotation

    .local p1, "toAdd":Ljava/util/List;, "Ljava/util/List<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    monitor-enter p0

    .line 589
    :try_start_1
    invoke-direct {p0, p2}, Landroid/mtp/MtpStorageManager;->getChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_48

    .line 590
    .local v0, "children":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    if-nez v0, :cond_a

    .line 591
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 593
    :cond_a
    :try_start_a
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 594
    .local v2, "o":Landroid/mtp/MtpStorageManager$MtpObject;
    if-eqz p3, :cond_22

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->getFormat()I

    move-result v3

    if-ne v3, p3, :cond_25

    .line 595
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_22
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    .end local v2    # "o":Landroid/mtp/MtpStorageManager$MtpObject;
    :cond_25
    goto :goto_e

    .line 598
    :cond_26
    const/4 v1, 0x1

    .line 599
    .local v1, "ret":Z
    if-eqz p4, :cond_46

    .line 601
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 602
    .local v3, "o":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 603
    const/4 v4, 0x1

    invoke-direct {p0, p1, v3, p3, v4}, Landroid/mtp/MtpStorageManager;->getObjects(Ljava/util/List;Landroid/mtp/MtpStorageManager$MtpObject;IZ)Z

    move-result v4
    :try_end_44
    .catchall {:try_start_a .. :try_end_44} :catchall_48

    and-int/2addr v1, v4

    .line 604
    .end local v3    # "o":Landroid/mtp/MtpStorageManager$MtpObject;
    :cond_45
    goto :goto_2d

    .line 606
    :cond_46
    monitor-exit p0

    return v1

    .line 588
    .end local v0    # "children":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    .end local v1    # "ret":Z
    .end local p1    # "toAdd":Ljava/util/List;, "Ljava/util/List<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    .end local p2    # "parent":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p3    # "format":I
    .end local p4    # "rec":Z
    :catchall_48
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized greylist-max-o handleAddedObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)V
    .registers 12
    .param p1, "parent"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "isDir"    # Z

    monitor-enter p0

    .line 709
    :try_start_1
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpOperation;->NONE:Landroid/mtp/MtpStorageManager$MtpOperation;

    .line 710
    .local v0, "op":Landroid/mtp/MtpStorageManager$MtpOperation;
    invoke-static {p1, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChild(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    .line 711
    .local v1, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-eqz v1, :cond_a9

    .line 712
    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v2

    .line 713
    .local v2, "state":Landroid/mtp/MtpStorageManager$MtpObjectState;
    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetOperation(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpOperation;

    move-result-object v3

    move-object v0, v3

    .line 714
    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v3

    if-eq v3, p3, :cond_38

    sget-object v3, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_REMOVED:Landroid/mtp/MtpStorageManager$MtpObjectState;

    if-eq v2, v3, :cond_38

    .line 715
    sget-object v3, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Inconsistent directory info! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_38
    invoke-static {v1, p3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetDir(Landroid/mtp/MtpStorageManager$MtpObject;Z)V

    .line 717
    sget-object v3, Landroid/mtp/MtpStorageManager$1;->$SwitchMap$android$mtp$MtpStorageManager$MtpObjectState:[I

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObjectState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_190

    .line 732
    sget-object v3, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    goto :goto_5a

    .line 727
    :pswitch_49
    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpStorageManager;->handleChangedObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_18c

    .line 730
    :pswitch_4c
    monitor-exit p0

    return-void

    .line 723
    :pswitch_4e
    :try_start_4e
    sget-object v3, Landroid/mtp/MtpStorageManager$MtpObjectState;->NORMAL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {v1, v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 724
    goto :goto_7a

    .line 720
    :pswitch_54
    sget-object v3, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_ADDED:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {v1, v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 721
    goto :goto_7a

    .line 732
    :goto_5a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected state in add "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :goto_7a
    sget-boolean v3, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v3, :cond_a8

    .line 735
    sget-object v3, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " transitioned to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in op "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    .end local v2    # "state":Landroid/mtp/MtpStorageManager$MtpObjectState;
    :cond_a8
    goto :goto_b9

    .line 737
    :cond_a9
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpStorageManager;->addObjectToCache(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v2

    move-object v1, v2

    .line 738
    if-eqz v1, :cond_168

    .line 739
    iget-object v2, p0, Landroid/mtp/MtpStorageManager;->mMtpNotifier:Landroid/mtp/MtpStorageManager$MtpNotifier;

    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/mtp/MtpStorageManager$MtpNotifier;->sendObjectAdded(I)V

    .line 746
    :goto_b9
    if-eqz p3, :cond_166

    .line 748
    sget-object v2, Landroid/mtp/MtpStorageManager$MtpOperation;->RENAME:Landroid/mtp/MtpStorageManager$MtpOperation;
    :try_end_bd
    .catchall {:try_start_4e .. :try_end_bd} :catchall_18c

    if-ne v0, v2, :cond_c1

    .line 749
    monitor-exit p0

    return-void

    .line 752
    .restart local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_c1
    :try_start_c1
    sget-object v2, Landroid/mtp/MtpStorageManager$MtpOperation;->COPY:Landroid/mtp/MtpStorageManager$MtpOperation;

    if-ne v0, v2, :cond_cd

    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$misVisited(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v2
    :try_end_c9
    .catchall {:try_start_c1 .. :try_end_c9} :catchall_18c

    if-nez v2, :cond_cd

    .line 753
    monitor-exit p0

    return-void

    .line 755
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_cd
    :try_start_cd
    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v2

    if-eqz v2, :cond_dc

    .line 756
    sget-object v2, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    const-string v3, "Observer is not null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_da
    .catchall {:try_start_cd .. :try_end_da} :catchall_18c

    .line 757
    monitor-exit p0

    return-void

    .line 759
    :cond_dc
    :try_start_dc
    new-instance v2, Landroid/mtp/MtpStorageManager$MtpObjectObserver;

    invoke-direct {v2, p0, v1}, Landroid/mtp/MtpStorageManager$MtpObjectObserver;-><init>(Landroid/mtp/MtpStorageManager;Landroid/mtp/MtpStorageManager$MtpObject;)V

    invoke-static {v1, v2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetObserver(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)V

    .line 760
    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    .line 761
    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetVisited(Landroid/mtp/MtpStorageManager$MtpObject;Z)V
    :try_end_ef
    .catchall {:try_start_dc .. :try_end_ef} :catchall_18c

    .line 765
    :try_start_ef
    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v2
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_f7} :catch_151
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_ef .. :try_end_f7} :catch_151
    .catchall {:try_start_ef .. :try_end_f7} :catchall_18c

    .line 766
    .local v2, "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :try_start_f7
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_fb
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/file/Path;

    .line 767
    .local v4, "file":Ljava/nio/file/Path;
    sget-boolean v5, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v5, :cond_12b

    .line 768
    sget-object v5, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Manually handling event for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v7

    invoke-interface {v7}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :cond_12b
    invoke-interface {v4}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v5

    invoke-interface {v5}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v5

    .line 770
    invoke-interface {v4}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v6

    .line 769
    invoke-direct {p0, v1, v5, v6}, Landroid/mtp/MtpStorageManager;->handleAddedObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)V
    :try_end_13e
    .catchall {:try_start_f7 .. :try_end_13e} :catchall_145

    .line 771
    .end local v4    # "file":Ljava/nio/file/Path;
    goto :goto_fb

    .line 772
    :cond_13f
    if-eqz v2, :cond_144

    :try_start_141
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_144
    .catch Ljava/io/IOException; {:try_start_141 .. :try_end_144} :catch_151
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_141 .. :try_end_144} :catch_151
    .catchall {:try_start_141 .. :try_end_144} :catchall_18c

    .line 776
    .end local v2    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :cond_144
    goto :goto_166

    .line 765
    .restart local v2    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :catchall_145
    move-exception v3

    if-eqz v2, :cond_150

    :try_start_148
    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_14b
    .catchall {:try_start_148 .. :try_end_14b} :catchall_14c

    goto :goto_150

    :catchall_14c
    move-exception v4

    :try_start_14d
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "op":Landroid/mtp/MtpStorageManager$MtpOperation;
    .end local v1    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p1    # "parent":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p2    # "path":Ljava/lang/String;
    .end local p3    # "isDir":Z
    :cond_150
    :goto_150
    throw v3
    :try_end_151
    .catch Ljava/io/IOException; {:try_start_14d .. :try_end_151} :catch_151
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_14d .. :try_end_151} :catch_151
    .catchall {:try_start_14d .. :try_end_151} :catchall_18c

    .line 772
    .end local v2    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .restart local v0    # "op":Landroid/mtp/MtpStorageManager$MtpOperation;
    .restart local v1    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .restart local p1    # "parent":Landroid/mtp/MtpStorageManager$MtpObject;
    .restart local p2    # "path":Ljava/lang/String;
    .restart local p3    # "isDir":Z
    :catch_151
    move-exception v2

    .line 773
    .local v2, "e":Ljava/lang/Exception;
    :try_start_152
    sget-object v3, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/FileObserver;->stopWatching()V

    .line 775
    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetObserver(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)V
    :try_end_166
    .catchall {:try_start_152 .. :try_end_166} :catchall_18c

    .line 778
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_166
    :goto_166
    monitor-exit p0

    return-void

    .line 741
    :cond_168
    :try_start_168
    sget-boolean v2, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v2, :cond_18a

    .line 742
    sget-object v2, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "object "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already exists"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18a
    .catchall {:try_start_168 .. :try_end_18a} :catchall_18c

    .line 743
    :cond_18a
    monitor-exit p0

    return-void

    .line 708
    .end local v0    # "op":Landroid/mtp/MtpStorageManager$MtpOperation;
    .end local v1    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p1    # "parent":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p2    # "path":Ljava/lang/String;
    .end local p3    # "isDir":Z
    :catchall_18c
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_190
    .packed-switch 0x1
        :pswitch_54
        :pswitch_54
        :pswitch_4e
        :pswitch_49
        :pswitch_4c
    .end packed-switch
.end method

.method private declared-synchronized blacklist handleChangedObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)V
    .registers 10
    .param p1, "parent"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "path"    # Ljava/lang/String;

    monitor-enter p0

    .line 806
    :try_start_1
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpOperation;->NONE:Landroid/mtp/MtpStorageManager$MtpOperation;

    .line 807
    .local v0, "op":Landroid/mtp/MtpStorageManager$MtpOperation;
    invoke-static {p1, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChild(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    .line 808
    .local v1, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-eqz v1, :cond_5a

    .line 810
    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v2

    if-nez v2, :cond_7c

    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_7c

    .line 812
    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v2

    .line 813
    .local v2, "state":Landroid/mtp/MtpStorageManager$MtpObjectState;
    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetOperation(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpOperation;

    move-result-object v3

    move-object v0, v3

    .line 814
    iget-object v3, p0, Landroid/mtp/MtpStorageManager;->mMtpNotifier:Landroid/mtp/MtpStorageManager$MtpNotifier;

    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/mtp/MtpStorageManager$MtpNotifier;->sendObjectInfoChanged(I)V

    .line 815
    sget-boolean v3, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v3, :cond_59

    .line 816
    sget-object v3, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendObjectInfoChanged: id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getSize()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    .end local v2    # "state":Landroid/mtp/MtpStorageManager$MtpObjectState;
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_59
    goto :goto_7c

    .line 819
    :cond_5a
    sget-boolean v2, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v2, :cond_7c

    .line 820
    sget-object v2, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "object "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catchall {:try_start_1 .. :try_end_7c} :catchall_7e

    .line 822
    :cond_7c
    :goto_7c
    monitor-exit p0

    return-void

    .line 805
    .end local v0    # "op":Landroid/mtp/MtpStorageManager$MtpOperation;
    .end local v1    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p1    # "parent":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p2    # "path":Ljava/lang/String;
    :catchall_7e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized greylist-max-o handleRemovedObject(Landroid/mtp/MtpStorageManager$MtpObject;)V
    .registers 7
    .param p1, "obj"    # Landroid/mtp/MtpStorageManager$MtpObject;

    monitor-enter p0

    .line 781
    :try_start_1
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v0

    .line 782
    .local v0, "state":Landroid/mtp/MtpStorageManager$MtpObjectState;
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetOperation(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpOperation;

    move-result-object v1

    .line 783
    .local v1, "op":Landroid/mtp/MtpStorageManager$MtpOperation;
    sget-object v2, Landroid/mtp/MtpStorageManager$1;->$SwitchMap$android$mtp$MtpStorageManager$MtpObjectState:[I

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObjectState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_8c

    .line 799
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    :pswitch_15
    sget-object v2, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    goto :goto_3f

    .line 788
    .restart local p0    # "this":Landroid/mtp/MtpStorageManager;
    :pswitch_18
    sget-object v2, Landroid/mtp/MtpStorageManager$MtpOperation;->RENAME:Landroid/mtp/MtpStorageManager$MtpOperation;

    const/4 v4, 0x0

    if-eq v1, v2, :cond_1e

    goto :goto_1f

    :cond_1e
    move v3, v4

    :goto_1f
    invoke-direct {p0, p1, v3, v4}, Landroid/mtp/MtpStorageManager;->removeObjectFromCache(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    .line 789
    goto :goto_59

    .line 785
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    :pswitch_23
    sget-object v2, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_REMOVED:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p1, v2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 786
    goto :goto_59

    .line 794
    :pswitch_29
    invoke-direct {p0, p1, v3, v3}, Landroid/mtp/MtpStorageManager;->removeObjectFromCache(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 795
    iget-object v2, p0, Landroid/mtp/MtpStorageManager;->mMtpNotifier:Landroid/mtp/MtpStorageManager$MtpNotifier;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/mtp/MtpStorageManager$MtpNotifier;->sendObjectRemoved(I)V

    goto :goto_59

    .line 791
    :pswitch_39
    sget-object v2, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN_REMOVED:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {p1, v2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 792
    goto :goto_59

    .line 799
    :goto_3f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got unexpected object remove for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :cond_59
    :goto_59
    sget-boolean v2, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v2, :cond_87

    .line 802
    sget-object v2, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " transitioned to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in op "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catchall {:try_start_1 .. :try_end_87} :catchall_89

    .line 803
    :cond_87
    monitor-exit p0

    return-void

    .line 780
    .end local v0    # "state":Landroid/mtp/MtpStorageManager$MtpObjectState;
    .end local v1    # "op":Landroid/mtp/MtpStorageManager$MtpOperation;
    .end local p1    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    :catchall_89
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_39
        :pswitch_15
        :pswitch_15
        :pswitch_29
        :pswitch_23
        :pswitch_18
    .end packed-switch
.end method

.method private declared-synchronized greylist-max-o isSpecialSubDir(Landroid/mtp/MtpStorageManager$MtpObject;)Z
    .registers 4
    .param p1, "obj"    # Landroid/mtp/MtpStorageManager$MtpObject;

    monitor-enter p0

    .line 488
    :try_start_1
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;

    if-eqz v0, :cond_1b

    .line 489
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1e

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_1b
    const/4 v0, 0x0

    .line 488
    :goto_1c
    monitor-exit p0

    return v0

    .line 487
    .end local p1    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized greylist-max-o removeObjectFromCache(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z
    .registers 11
    .param p1, "removed"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "removeGlobal"    # Z
    .param p3, "recursive"    # Z

    monitor-enter p0

    .line 683
    :try_start_1
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1e

    .line 684
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    invoke-static {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$fgetmChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1e

    :cond_1c
    move v0, v1

    goto :goto_1f

    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_1e
    :goto_1e
    move v0, v2

    .line 685
    .local v0, "ret":Z
    :goto_1f
    if-nez v0, :cond_41

    sget-boolean v3, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v3, :cond_41

    .line 686
    sget-object v3, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to remove from parent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_41
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 688
    iget-object v3, p0, Landroid/mtp/MtpStorageManager;->mRoots:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    if-eqz v0, :cond_5b

    move v3, v2

    goto :goto_5c

    :cond_5b
    move v3, v1

    :goto_5c
    move v0, v3

    goto :goto_76

    .line 689
    :cond_5e
    if-eqz p2, :cond_76

    .line 690
    iget-object v3, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    if-eqz v0, :cond_74

    move v3, v2

    goto :goto_75

    :cond_74
    move v3, v1

    :goto_75
    move v0, v3

    .line 692
    :cond_76
    :goto_76
    if-nez v0, :cond_98

    sget-boolean v3, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v3, :cond_98

    .line 693
    sget-object v3, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to remove from global cache "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_98
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v3

    if-eqz v3, :cond_a9

    .line 695
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/FileObserver;->stopWatching()V

    .line 696
    const/4 v3, 0x0

    invoke-static {p1, v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetObserver(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)V

    .line 698
    :cond_a9
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v3

    if-eqz v3, :cond_d7

    if-eqz p3, :cond_d7

    .line 700
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 701
    .local v3, "children":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_be
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 702
    .local v5, "child":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-direct {p0, v5, p2, v2}, Landroid/mtp/MtpStorageManager;->removeObjectFromCache(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v6
    :try_end_ce
    .catchall {:try_start_1 .. :try_end_ce} :catchall_d9

    if-eqz v6, :cond_d4

    if-eqz v0, :cond_d4

    move v6, v2

    goto :goto_d5

    :cond_d4
    move v6, v1

    :goto_d5
    move v0, v6

    .line 703
    .end local v5    # "child":Landroid/mtp/MtpStorageManager$MtpObject;
    goto :goto_be

    .line 705
    .end local v3    # "children":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    :cond_d7
    monitor-exit p0

    return v0

    .line 682
    .end local v0    # "ret":Z
    .end local p1    # "removed":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p2    # "removeGlobal":Z
    .end local p3    # "recursive":Z
    :catchall_d9
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized blacklist addMtpStorage(Landroid/os/storage/StorageVolume;Ljava/util/function/Supplier;)Landroid/mtp/MtpStorage;
    .registers 12
    .param p1, "volume"    # Landroid/os/storage/StorageVolume;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/storage/StorageVolume;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroid/mtp/MtpStorage;"
        }
    .end annotation

    .local p2, "isHostWindows":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Boolean;>;"
    monitor-enter p0

    .line 465
    :try_start_1
    invoke-direct {p0}, Landroid/mtp/MtpStorageManager;->getNextStorageId()I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x1

    .line 466
    .local v0, "storageId":I
    new-instance v1, Landroid/mtp/MtpStorage;

    invoke-direct {v1, p1, v0, p2}, Landroid/mtp/MtpStorage;-><init>(Landroid/os/storage/StorageVolume;ILjava/util/function/Supplier;)V

    move-object v7, v1

    .line 467
    .local v7, "storage":Landroid/mtp/MtpStorage;
    new-instance v8, Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-virtual {v7}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v8

    move v3, v0

    move-object v4, v7

    invoke-direct/range {v1 .. v6}, Landroid/mtp/MtpStorageManager$MtpObject;-><init>(Ljava/lang/String;ILandroid/mtp/MtpStorage;Landroid/mtp/MtpStorageManager$MtpObject;Z)V

    move-object v1, v8

    .line 469
    .local v1, "root":Landroid/mtp/MtpStorageManager$MtpObject;
    iget-object v2, p0, Landroid/mtp/MtpStorageManager;->mRoots:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    .line 470
    monitor-exit p0

    return-object v7

    .line 464
    .end local v0    # "storageId":I
    .end local v1    # "root":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local v7    # "storage":Landroid/mtp/MtpStorage;
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    .end local p1    # "volume":Landroid/os/storage/StorageVolume;
    .end local p2    # "isHostWindows":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Boolean;>;"
    :catchall_2d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist-max-o beginCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)I
    .registers 7
    .param p1, "object"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "newParent"    # Landroid/mtp/MtpStorageManager$MtpObject;

    monitor-enter p0

    .line 1133
    :try_start_1
    sget-boolean v0, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v0, :cond_2f

    .line 1134
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginCopyObject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_2f
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1136
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v1
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_76

    const/4 v2, -0x1

    if-nez v1, :cond_3c

    .line 1137
    monitor-exit p0

    return v2

    .line 1138
    .restart local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_3c
    :try_start_3c
    invoke-virtual {p2}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v1

    if-eqz v1, :cond_4e

    iget-object v1, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;

    if-eqz v1, :cond_4e

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_4a
    .catchall {:try_start_3c .. :try_end_4a} :catchall_76

    if-nez v1, :cond_4e

    .line 1139
    monitor-exit p0

    return v2

    .line 1140
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_4e
    :try_start_4e
    invoke-direct {p0, p2}, Landroid/mtp/MtpStorageManager;->getChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    .line 1141
    invoke-static {p2, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChild(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_76

    if-eqz v1, :cond_59

    .line 1142
    monitor-exit p0

    return v2

    .line 1143
    .restart local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_59
    :try_start_59
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v1

    invoke-static {p1, v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mcopy(Landroid/mtp/MtpStorageManager$MtpObject;Z)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    .line 1144
    .local v1, "newObj":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-static {p2, v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$maddChild(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 1145
    invoke-static {v1, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetParent(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 1146
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Landroid/mtp/MtpStorageManager;->generalBeginCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v3
    :try_end_6c
    .catchall {:try_start_59 .. :try_end_6c} :catchall_76

    if-nez v3, :cond_70

    .line 1147
    monitor-exit p0

    return v2

    .line 1148
    :cond_70
    :try_start_70
    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v2
    :try_end_74
    .catchall {:try_start_70 .. :try_end_74} :catchall_76

    monitor-exit p0

    return v2

    .line 1132
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "newObj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    .end local p1    # "object":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p2    # "newParent":Landroid/mtp/MtpStorageManager$MtpObject;
    :catchall_76
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist-max-o beginMoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)Z
    .registers 7
    .param p1, "obj"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "newParent"    # Landroid/mtp/MtpStorageManager$MtpObject;

    monitor-enter p0

    .line 1059
    :try_start_1
    sget-boolean v0, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v0, :cond_21

    .line 1060
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginMoveObject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_21
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_84

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    .line 1062
    monitor-exit p0

    return v1

    .line 1063
    .restart local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_2a
    :try_start_2a
    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager;->isSpecialSubDir(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_84

    if-eqz v0, :cond_32

    .line 1064
    monitor-exit p0

    return v1

    .line 1065
    :cond_32
    :try_start_32
    invoke-direct {p0, p2}, Landroid/mtp/MtpStorageManager;->getChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    .line 1066
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChild(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_84

    if-eqz v0, :cond_41

    .line 1068
    monitor-exit p0

    return v1

    .line 1069
    :cond_41
    :try_start_41
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorageId()I

    move-result v0

    invoke-virtual {p2}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorageId()I

    move-result v2

    if-eq v0, v2, :cond_69

    .line 1075
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mcopy(Landroid/mtp/MtpStorageManager$MtpObject;Z)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v2

    .line 1076
    .local v2, "newObj":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-static {v2, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetParent(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 1077
    invoke-static {p2, v2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$maddChild(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 1078
    sget-object v3, Landroid/mtp/MtpStorageManager$MtpOperation;->RENAME:Landroid/mtp/MtpStorageManager$MtpOperation;

    invoke-direct {p0, p1, v3}, Landroid/mtp/MtpStorageManager;->generalBeginRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpOperation;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 1079
    invoke-direct {p0, v2, v1}, Landroid/mtp/MtpStorageManager;->generalBeginCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v3
    :try_end_62
    .catchall {:try_start_41 .. :try_end_62} :catchall_84

    if-eqz v3, :cond_66

    move v1, v0

    goto :goto_67

    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_66
    nop

    .line 1078
    :goto_67
    monitor-exit p0

    return v1

    .line 1082
    .end local v2    # "newObj":Landroid/mtp/MtpStorageManager$MtpObject;
    :cond_69
    :try_start_69
    invoke-static {p1, v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mcopy(Landroid/mtp/MtpStorageManager$MtpObject;Z)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 1083
    .local v0, "oldObj":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-static {p1, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetParent(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 1084
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$maddChild(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 1085
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$maddChild(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 1086
    invoke-direct {p0, v0, p1}, Landroid/mtp/MtpStorageManager;->generalBeginRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v1
    :try_end_82
    .catchall {:try_start_69 .. :try_end_82} :catchall_84

    monitor-exit p0

    return v1

    .line 1058
    .end local v0    # "oldObj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p1    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p2    # "newParent":Landroid/mtp/MtpStorageManager$MtpObject;
    :catchall_84
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist-max-o beginRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;)Z
    .registers 5
    .param p1, "obj"    # Landroid/mtp/MtpStorageManager$MtpObject;

    monitor-enter p0

    .line 1028
    :try_start_1
    sget-boolean v0, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v0, :cond_21

    .line 1029
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginRemoveObject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_21
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0

    if-nez v0, :cond_37

    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager;->isSpecialSubDir(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v0

    if-nez v0, :cond_37

    sget-object v0, Landroid/mtp/MtpStorageManager$MtpOperation;->DELETE:Landroid/mtp/MtpStorageManager$MtpOperation;

    .line 1031
    invoke-direct {p0, p1, v0}, Landroid/mtp/MtpStorageManager;->generalBeginRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpOperation;)Z

    move-result v0
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_3a

    if-eqz v0, :cond_37

    const/4 v0, 0x1

    goto :goto_38

    :cond_37
    const/4 v0, 0x0

    .line 1030
    :goto_38
    monitor-exit p0

    return v0

    .line 1027
    .end local p1    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    :catchall_3a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist-max-o beginRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Z
    .registers 6
    .param p1, "obj"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "newName"    # Ljava/lang/String;

    monitor-enter p0

    .line 975
    :try_start_1
    sget-boolean v0, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v0, :cond_2b

    .line 976
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginRenameObject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_2b
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_63

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    .line 978
    monitor-exit p0

    return v1

    .line 979
    .restart local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_34
    :try_start_34
    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager;->isSpecialSubDir(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v0
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_63

    if-eqz v0, :cond_3c

    .line 980
    monitor-exit p0

    return v1

    .line 981
    :cond_3c
    :try_start_3c
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChild(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_63

    if-eqz v0, :cond_48

    .line 983
    monitor-exit p0

    return v1

    .line 985
    :cond_48
    :try_start_48
    invoke-static {p1, v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mcopy(Landroid/mtp/MtpStorageManager$MtpObject;Z)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 986
    .local v0, "oldObj":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-static {p1, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetName(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)V

    .line 987
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$maddChild(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 988
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$maddChild(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 989
    invoke-direct {p0, v0, p1}, Landroid/mtp/MtpStorageManager;->generalBeginRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v1
    :try_end_61
    .catchall {:try_start_48 .. :try_end_61} :catchall_63

    monitor-exit p0

    return v1

    .line 974
    .end local v0    # "oldObj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    .end local p1    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p2    # "newName":Ljava/lang/String;
    :catchall_63
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist-max-o beginSendObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;I)I
    .registers 7
    .param p1, "parent"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "format"    # I

    monitor-enter p0

    .line 940
    :try_start_1
    sget-boolean v0, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v0, :cond_1d

    .line 941
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginSendObject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_1d
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_5a

    const/4 v1, -0x1

    if-nez v0, :cond_26

    .line 943
    monitor-exit p0

    return v1

    .line 944
    .restart local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;

    if-eqz v0, :cond_38

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_5a

    if-nez v0, :cond_38

    .line 945
    monitor-exit p0

    return v1

    .line 946
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_38
    :try_start_38
    invoke-direct {p0, p1}, Landroid/mtp/MtpStorageManager;->getChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    .line 947
    const/16 v0, 0x3001

    if-ne p3, v0, :cond_41

    const/4 v0, 0x1

    goto :goto_42

    :cond_41
    const/4 v0, 0x0

    :goto_42
    invoke-direct {p0, p1, p2, v0}, Landroid/mtp/MtpStorageManager;->addObjectToCache(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0
    :try_end_46
    .catchall {:try_start_38 .. :try_end_46} :catchall_5a

    .line 948
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez v0, :cond_4a

    .line 949
    monitor-exit p0

    return v1

    .line 950
    .restart local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_4a
    :try_start_4a
    sget-object v1, Landroid/mtp/MtpStorageManager$MtpObjectState;->FROZEN:Landroid/mtp/MtpStorageManager$MtpObjectState;

    invoke-static {v0, v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 951
    sget-object v1, Landroid/mtp/MtpStorageManager$MtpOperation;->ADD:Landroid/mtp/MtpStorageManager$MtpOperation;

    invoke-static {v0, v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetOperation(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpOperation;)V

    .line 952
    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v1
    :try_end_58
    .catchall {:try_start_4a .. :try_end_58} :catchall_5a

    monitor-exit p0

    return v1

    .line 939
    .end local v0    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    .end local p1    # "parent":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "format":I
    :catchall_5a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist-max-o checkConsistency()Z
    .registers 12

    monitor-enter p0

    .line 855
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 856
    .local v0, "objs":Ljava/util/List;, "Ljava/util/List<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    iget-object v1, p0, Landroid/mtp/MtpStorageManager;->mRoots:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 857
    iget-object v1, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 858
    const/4 v1, 0x1

    .line 859
    .local v1, "ret":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 860
    .local v3, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-static {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mexists(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v4

    if-nez v4, :cond_5a

    .line 861
    sget-object v4, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Object doesn\'t exist "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    const/4 v1, 0x0

    .line 864
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_5a
    invoke-static {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v4

    sget-object v5, Landroid/mtp/MtpStorageManager$MtpObjectState;->NORMAL:Landroid/mtp/MtpStorageManager$MtpObjectState;

    if-eq v4, v5, :cond_8d

    .line 865
    sget-object v4, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Object "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const/4 v1, 0x0

    .line 868
    :cond_8d
    invoke-static {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetOperation(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpOperation;

    move-result-object v4

    sget-object v5, Landroid/mtp/MtpStorageManager$MtpOperation;->NONE:Landroid/mtp/MtpStorageManager$MtpOperation;

    if-eq v4, v5, :cond_c0

    .line 869
    sget-object v4, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Object "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in operation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetOperation(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpOperation;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    const/4 v1, 0x0

    .line 872
    :cond_c0
    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v4

    if-nez v4, :cond_f9

    iget-object v4, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v3, :cond_f9

    .line 873
    sget-object v4, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Object "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not in map correctly"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    const/4 v1, 0x0

    .line 876
    :cond_f9
    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    if-eqz v4, :cond_1a8

    .line 877
    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v4

    if-eqz v4, :cond_13e

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    iget-object v5, p0, Landroid/mtp/MtpStorageManager;->mRoots:Ljava/util/HashMap;

    .line 878
    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v6

    invoke-virtual {v6}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v4, v5, :cond_13e

    .line 879
    sget-object v4, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Root parent is not in root mapping "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    const/4 v1, 0x0

    .line 882
    :cond_13e
    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v4

    if-nez v4, :cond_17d

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    iget-object v5, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    .line 883
    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v6

    invoke-virtual {v6}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v4, v5, :cond_17d

    .line 884
    sget-object v4, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parent is not in object mapping "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    const/4 v1, 0x0

    .line 887
    :cond_17d
    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChild(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    if-eq v4, v3, :cond_1a8

    .line 888
    sget-object v4, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Child does not exist in parent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    const/4 v1, 0x0

    .line 892
    :cond_1a8
    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v4

    if-eqz v4, :cond_31b

    .line 893
    invoke-static {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$misVisited(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v4

    invoke-static {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v5

    if-nez v5, :cond_1ba

    const/4 v5, 0x1

    goto :goto_1bb

    :cond_1ba
    const/4 v5, 0x0

    :goto_1bb
    if-ne v4, v5, :cond_1f7

    .line 894
    sget-object v4, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$misVisited(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v6

    if-eqz v6, :cond_1db

    const-string v6, ""

    goto :goto_1dd

    :cond_1db
    const-string v6, "not "

    :goto_1dd
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " visited but observer is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 895
    invoke-static {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 894
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    const/4 v1, 0x0

    .line 898
    :cond_1f7
    invoke-static {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$misVisited(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v4

    if-nez v4, :cond_224

    invoke-static {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    if-lez v4, :cond_224

    .line 899
    sget-object v4, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not visited but has children"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_223
    .catchall {:try_start_1 .. :try_end_223} :catchall_31f

    .line 900
    const/4 v1, 0x0

    .line 902
    :cond_224
    :try_start_224
    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-static {v4}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v4
    :try_end_22c
    .catch Ljava/io/IOException; {:try_start_224 .. :try_end_22c} :catch_310
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_224 .. :try_end_22c} :catch_310
    .catchall {:try_start_224 .. :try_end_22c} :catchall_31f

    .line 903
    .local v4, "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :try_start_22c
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 904
    .local v5, "files":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_235
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_291

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/file/Path;

    .line 905
    .local v7, "file":Ljava/nio/file/Path;
    invoke-static {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$misVisited(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v8

    if-eqz v8, :cond_288

    .line 906
    invoke-interface {v7}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v8

    invoke-interface {v8}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChild(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v8

    if-nez v8, :cond_288

    iget-object v8, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;

    if-eqz v8, :cond_26f

    .line 907
    invoke-virtual {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->isRoot()Z

    move-result v8

    if-eqz v8, :cond_26f

    iget-object v8, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;

    .line 908
    invoke-interface {v7}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v9

    invoke-interface {v9}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_288

    .line 909
    :cond_26f
    sget-object v8, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File exists in fs but not in children "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    const/4 v1, 0x0

    .line 912
    :cond_288
    invoke-interface {v7}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 913
    nop

    .end local v7    # "file":Ljava/nio/file/Path;
    goto :goto_235

    .line 914
    :cond_291
    invoke-static {v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_299
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2fe

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 915
    .local v7, "child":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-virtual {v7}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v8

    invoke-interface {v8}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2d0

    .line 916
    sget-object v8, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "File in children doesn\'t exist in fs "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const/4 v1, 0x0

    .line 919
    :cond_2d0
    iget-object v8, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-virtual {v7}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eq v7, v8, :cond_2fd

    .line 920
    sget-object v8, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Child is not in object map "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2fc
    .catchall {:try_start_22c .. :try_end_2fc} :catchall_304

    .line 921
    const/4 v1, 0x0

    .line 923
    .end local v7    # "child":Landroid/mtp/MtpStorageManager$MtpObject;
    :cond_2fd
    goto :goto_299

    .line 924
    .end local v5    # "files":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2fe
    if-eqz v4, :cond_303

    :try_start_300
    invoke-interface {v4}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_303
    .catch Ljava/io/IOException; {:try_start_300 .. :try_end_303} :catch_310
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_300 .. :try_end_303} :catch_310
    .catchall {:try_start_300 .. :try_end_303} :catchall_31f

    .line 927
    .end local v4    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :cond_303
    goto :goto_31b

    .line 902
    .restart local v4    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :catchall_304
    move-exception v5

    if-eqz v4, :cond_30f

    :try_start_307
    invoke-interface {v4}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_30a
    .catchall {:try_start_307 .. :try_end_30a} :catchall_30b

    goto :goto_30f

    :catchall_30b
    move-exception v6

    :try_start_30c
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "objs":Ljava/util/List;, "Ljava/util/List<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    .end local v1    # "ret":Z
    .end local v3    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    :cond_30f
    :goto_30f
    throw v5
    :try_end_310
    .catch Ljava/io/IOException; {:try_start_30c .. :try_end_310} :catch_310
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_30c .. :try_end_310} :catch_310
    .catchall {:try_start_30c .. :try_end_310} :catchall_31f

    .line 924
    .end local v4    # "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    .restart local v0    # "objs":Ljava/util/List;, "Ljava/util/List<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    .restart local v1    # "ret":Z
    .restart local v3    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    :catch_310
    move-exception v4

    .line 925
    .local v4, "e":Ljava/lang/Exception;
    :try_start_311
    sget-object v5, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31a
    .catchall {:try_start_311 .. :try_end_31a} :catchall_31f

    .line 926
    const/4 v1, 0x0

    .line 929
    .end local v3    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_31b
    :goto_31b
    goto/16 :goto_1d

    .line 930
    :cond_31d
    monitor-exit p0

    return v1

    .line 854
    .end local v0    # "objs":Ljava/util/List;, "Ljava/util/List<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    .end local v1    # "ret":Z
    :catchall_31f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized greylist-max-o close()V
    .registers 5

    monitor-enter p0

    .line 424
    :try_start_1
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 425
    .local v1, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v3

    if-eqz v3, :cond_28

    .line 426
    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/FileObserver;->stopWatching()V

    .line 427
    invoke-static {v1, v2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetObserver(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)V

    .line 429
    .end local v1    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_28
    goto :goto_b

    .line 430
    :cond_29
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mRoots:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 431
    .restart local v1    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v3

    if-eqz v3, :cond_4f

    .line 432
    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/FileObserver;->stopWatching()V

    .line 433
    invoke-static {v1, v2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetObserver(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)V

    .line 435
    .end local v1    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    :cond_4f
    goto :goto_33

    .line 438
    :cond_50
    iget-boolean v0, p0, Landroid/mtp/MtpStorageManager;->mCheckConsistency:Z

    if-eqz v0, :cond_63

    .line 439
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/MtpStorageManager;->mCheckConsistency:Z

    .line 440
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mConsistencyThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_5c
    .catchall {:try_start_1 .. :try_end_5c} :catchall_65

    .line 442
    :try_start_5c
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mConsistencyThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_61
    .catch Ljava/lang/InterruptedException; {:try_start_5c .. :try_end_61} :catch_62
    .catchall {:try_start_5c .. :try_end_61} :catchall_65

    .line 445
    goto :goto_63

    .line 443
    :catch_62
    move-exception v0

    .line 447
    :cond_63
    :goto_63
    monitor-exit p0

    return-void

    .line 423
    :catchall_65
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized greylist-max-o dump()V
    .registers 7

    monitor-enter p0

    .line 841
    :try_start_1
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 842
    .local v1, "key":I
    iget-object v2, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 843
    .local v2, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    sget-object v3, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v5

    if-nez v5, :cond_4b

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v5

    invoke-virtual {v5}, Landroid/mtp/MtpStorageManager$MtpObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_4d

    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_4b
    const-string v5, "null"

    :goto_4d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 844
    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v5

    if-eqz v5, :cond_6e

    const-string v5, "dir"

    goto :goto_70

    :cond_6e
    const-string v5, "obj"

    :goto_70
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 845
    invoke-static {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$misVisited(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v5

    if-eqz v5, :cond_83

    const-string v5, "v"

    goto :goto_85

    :cond_83
    const-string v5, "nv"

    :goto_85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 843
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catchall {:try_start_1 .. :try_end_9e} :catchall_a3

    .line 846
    nop

    .end local v1    # "key":I
    .end local v2    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    goto/16 :goto_b

    .line 847
    :cond_a1
    monitor-exit p0

    return-void

    .line 840
    :catchall_a3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized greylist-max-o endCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z
    .registers 6
    .param p1, "object"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "success"    # Z

    monitor-enter p0

    .line 1158
    :try_start_1
    sget-boolean v0, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v0, :cond_2b

    .line 1159
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endCopyObject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_2b
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/mtp/MtpStorageManager;->generalEndCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    monitor-exit p0

    return v0

    .line 1157
    .end local p1    # "object":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p2    # "success":Z
    :catchall_32
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist-max-o endMoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)Z
    .registers 11
    .param p1, "oldParent"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "newParent"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "success"    # Z

    monitor-enter p0

    .line 1099
    :try_start_1
    sget-boolean v0, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v0, :cond_1d

    .line 1100
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endMoveObject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_1d
    invoke-static {p1, p3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChild(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 1102
    .local v0, "oldObj":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-static {p2, p3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChild(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    .line 1103
    .local v1, "newObj":Landroid/mtp/MtpStorageManager$MtpObject;
    const/4 v2, 0x0

    if-eqz v0, :cond_72

    if-nez v1, :cond_2b

    goto :goto_72

    .line 1105
    :cond_2b
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorageId()I

    move-result v3

    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getStorageId()I

    move-result v4

    if-eq v3, v4, :cond_45

    .line 1106
    invoke-virtual {p0, v0, p4}, Landroid/mtp/MtpStorageManager;->endRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v3

    .line 1107
    .local v3, "ret":Z
    const/4 v4, 0x1

    invoke-direct {p0, v1, p4, v4}, Landroid/mtp/MtpStorageManager;->generalEndCopyObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v5
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_74

    if-eqz v5, :cond_43

    if-eqz v3, :cond_43

    move v2, v4

    :cond_43
    monitor-exit p0

    return v2

    .line 1109
    .end local v3    # "ret":Z
    :cond_45
    if-nez p4, :cond_6c

    .line 1112
    move-object v2, v0

    .line 1113
    .local v2, "temp":Landroid/mtp/MtpStorageManager$MtpObject;
    :try_start_48
    invoke-static {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v3

    .line 1114
    .local v3, "oldState":Landroid/mtp/MtpStorageManager$MtpObjectState;
    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetParent(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 1115
    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 1116
    move-object v0, v1

    .line 1117
    invoke-static {v0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetParent(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 1118
    invoke-static {v0, v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 1119
    move-object v1, v2

    .line 1120
    invoke-virtual {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$maddChild(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 1121
    invoke-static {p1, v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$maddChild(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 1123
    .end local v2    # "temp":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local v3    # "oldState":Landroid/mtp/MtpStorageManager$MtpObjectState;
    :cond_6c
    invoke-direct {p0, v0, v1, p4}, Landroid/mtp/MtpStorageManager;->generalEndRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v2
    :try_end_70
    .catchall {:try_start_48 .. :try_end_70} :catchall_74

    monitor-exit p0

    return v2

    .line 1104
    :cond_72
    :goto_72
    monitor-exit p0

    return v2

    .line 1098
    .end local v0    # "oldObj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local v1    # "newObj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p1    # "oldParent":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p2    # "newParent":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p3    # "name":Ljava/lang/String;
    .end local p4    # "success":Z
    :catchall_74
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist-max-o endRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z
    .registers 10
    .param p1, "obj"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "success"    # Z

    monitor-enter p0

    .line 1041
    :try_start_1
    sget-boolean v0, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v0, :cond_1d

    .line 1042
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endRemoveObject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_1d
    const/4 v0, 0x1

    .line 1044
    .local v0, "ret":Z
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_54

    .line 1045
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 1046
    .local v4, "child":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-static {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetOperation(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpOperation;

    move-result-object v5

    sget-object v6, Landroid/mtp/MtpStorageManager$MtpOperation;->DELETE:Landroid/mtp/MtpStorageManager$MtpOperation;

    if-ne v5, v6, :cond_53

    .line 1047
    invoke-virtual {p0, v4, p2}, Landroid/mtp/MtpStorageManager;->endRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v5

    if-eqz v5, :cond_51

    if-eqz v0, :cond_51

    move v5, v3

    goto :goto_52

    :cond_51
    move v5, v2

    :goto_52
    move v0, v5

    .line 1046
    .end local v4    # "child":Landroid/mtp/MtpStorageManager$MtpObject;
    :cond_53
    goto :goto_33

    .line 1049
    :cond_54
    invoke-direct {p0, p1, p2, v3}, Landroid/mtp/MtpStorageManager;->generalEndRemoveObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v1
    :try_end_58
    .catchall {:try_start_1 .. :try_end_58} :catchall_5f

    if-eqz v1, :cond_5d

    if-eqz v0, :cond_5d

    move v2, v3

    :cond_5d
    monitor-exit p0

    return v2

    .line 1040
    .end local v0    # "ret":Z
    .end local p1    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p2    # "success":Z
    :catchall_5f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist-max-o endRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)Z
    .registers 9
    .param p1, "obj"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "oldName"    # Ljava/lang/String;
    .param p3, "success"    # Z

    monitor-enter p0

    .line 1000
    :try_start_1
    sget-boolean v0, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v0, :cond_1d

    .line 1001
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endRenameObject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_1d
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getParent()Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    .line 1003
    .local v0, "parent":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-static {v0, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChild(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    .line 1004
    .local v1, "oldObj":Landroid/mtp/MtpStorageManager$MtpObject;
    if-nez p3, :cond_48

    .line 1007
    move-object v2, v1

    .line 1008
    .local v2, "temp":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-static {v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v3

    .line 1009
    .local v3, "oldState":Landroid/mtp/MtpStorageManager$MtpObjectState;
    invoke-virtual {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetName(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)V

    .line 1010
    invoke-static {p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetState(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/mtp/MtpStorageManager$MtpObjectState;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 1011
    move-object v1, p1

    .line 1012
    invoke-static {v1, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetName(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)V

    .line 1013
    invoke-static {v1, v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$msetState(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObjectState;)V

    .line 1014
    move-object p1, v2

    .line 1015
    invoke-static {v0, p1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$maddChild(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 1016
    invoke-static {v0, v1}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$maddChild(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;)V

    .line 1018
    .end local v2    # "temp":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local v3    # "oldState":Landroid/mtp/MtpStorageManager$MtpObjectState;
    :cond_48
    invoke-direct {p0, v1, p1, p3}, Landroid/mtp/MtpStorageManager;->generalEndRenameObject(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/mtp/MtpStorageManager$MtpObject;Z)Z

    move-result v2
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_4e

    monitor-exit p0

    return v2

    .line 999
    .end local v0    # "parent":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local v1    # "oldObj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p1    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p2    # "oldName":Ljava/lang/String;
    .end local p3    # "success":Z
    :catchall_4e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist-max-o endSendObject(Landroid/mtp/MtpStorageManager$MtpObject;Z)Z
    .registers 6
    .param p1, "obj"    # Landroid/mtp/MtpStorageManager$MtpObject;
    .param p2, "succeeded"    # Z

    monitor-enter p0

    .line 962
    :try_start_1
    sget-boolean v0, Landroid/mtp/MtpStorageManager;->sDebug:Z

    if-eqz v0, :cond_1d

    .line 963
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endSendObject "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_1d
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/mtp/MtpStorageManager;->generalEndAddObject(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z

    move-result v0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    monitor-exit p0

    return v0

    .line 961
    .end local p1    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p2    # "succeeded":Z
    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public greylist-max-o flushEvents()V
    .registers 3

    .line 831
    const-wide/16 v0, 0x1f4

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_6

    .line 834
    goto :goto_7

    .line 832
    :catch_6
    move-exception v0

    .line 835
    :goto_7
    return-void
.end method

.method public declared-synchronized greylist-max-o getByPath(Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;
    .registers 8
    .param p1, "path"    # Ljava/lang/String;

    monitor-enter p0

    .line 498
    const/4 v0, 0x0

    .line 499
    .local v0, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    :try_start_2
    iget-object v1, p0, Landroid/mtp/MtpStorageManager;->mRoots:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 500
    .local v2, "root":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 501
    move-object v0, v2

    .line 502
    invoke-virtual {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object p1, v3

    .line 504
    .end local v2    # "root":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_30
    goto :goto_c

    .line 505
    :cond_31
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_39
    if-ge v3, v2, :cond_63

    aget-object v4, v1, v3

    .line 506
    .local v4, "name":Ljava/lang/String;
    if-eqz v0, :cond_60

    invoke-virtual {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->isDir()Z

    move-result v5

    if-nez v5, :cond_46

    goto :goto_60

    .line 508
    :cond_46
    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 509
    goto :goto_5d

    .line 510
    :cond_4f
    invoke-static {v0}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$misVisited(Landroid/mtp/MtpStorageManager$MtpObject;)Z

    move-result v5

    if-nez v5, :cond_58

    .line 511
    invoke-direct {p0, v0}, Landroid/mtp/MtpStorageManager;->getChildren(Landroid/mtp/MtpStorageManager$MtpObject;)Ljava/util/Collection;

    .line 512
    :cond_58
    invoke-static {v0, v4}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChild(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v5
    :try_end_5c
    .catchall {:try_start_2 .. :try_end_5c} :catchall_65

    move-object v0, v5

    .line 505
    .end local v4    # "name":Ljava/lang/String;
    :goto_5d
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 507
    .restart local v4    # "name":Ljava/lang/String;
    :cond_60
    :goto_60
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 514
    .end local v4    # "name":Ljava/lang/String;
    :cond_63
    monitor-exit p0

    return-object v0

    .line 497
    .end local v0    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p1    # "path":Ljava/lang/String;
    :catchall_65
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist-max-o getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;
    .registers 6
    .param p1, "id"    # I

    monitor-enter p0

    .line 523
    const/4 v0, 0x0

    if-eqz p1, :cond_42

    const/4 v1, -0x1

    if-ne p1, v1, :cond_8

    goto :goto_42

    .line 527
    :cond_8
    :try_start_8
    iget-object v1, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 528
    sget-object v1, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doesn\'t exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_4b

    .line 529
    monitor-exit p0

    return-object v0

    .line 531
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_34
    :try_start_34
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mObjects:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpStorageManager$MtpObject;
    :try_end_40
    .catchall {:try_start_34 .. :try_end_40} :catchall_4b

    monitor-exit p0

    return-object v0

    .line 524
    :cond_42
    :goto_42
    :try_start_42
    sget-object v1, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    const-string v2, "Can\'t get root storages with getObject()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catchall {:try_start_42 .. :try_end_49} :catchall_4b

    .line 525
    monitor-exit p0

    return-object v0

    .line 522
    .end local p1    # "id":I
    :catchall_4b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getObjects(III)Ljava/util/List;
    .registers 11
    .param p1, "parent"    # I
    .param p2, "format"    # I
    .param p3, "storageId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Landroid/mtp/MtpStorageManager$MtpObject;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 566
    if-nez p1, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    .line 567
    .local v0, "recursive":Z
    :goto_6
    :try_start_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 568
    .local v1, "objs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    const/4 v2, 0x1

    .line 569
    .local v2, "ret":Z
    const/4 v3, -0x1

    if-ne p1, v3, :cond_10

    .line 570
    const/4 p1, 0x0

    .line 571
    :cond_10
    const/4 v4, 0x0

    if-ne p3, v3, :cond_36

    .line 573
    if-nez p1, :cond_36

    .line 575
    iget-object v3, p0, Landroid/mtp/MtpStorageManager;->mRoots:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/mtp/MtpStorageManager$MtpObject;

    .line 576
    .local v5, "root":Landroid/mtp/MtpStorageManager$MtpObject;
    invoke-direct {p0, v1, v5, p2, v0}, Landroid/mtp/MtpStorageManager;->getObjects(Ljava/util/List;Landroid/mtp/MtpStorageManager$MtpObject;IZ)Z

    move-result v6
    :try_end_2f
    .catchall {:try_start_6 .. :try_end_2f} :catchall_4f

    and-int/2addr v2, v6

    .line 577
    .end local v5    # "root":Landroid/mtp/MtpStorageManager$MtpObject;
    goto :goto_1f

    .line 578
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_31
    if-eqz v2, :cond_34

    move-object v4, v1

    :cond_34
    monitor-exit p0

    return-object v4

    .line 581
    :cond_36
    if-nez p1, :cond_3d

    :try_start_38
    invoke-virtual {p0, p3}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v3

    goto :goto_41

    :cond_3d
    invoke-virtual {p0, p1}, Landroid/mtp/MtpStorageManager;->getObject(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v3
    :try_end_41
    .catchall {:try_start_38 .. :try_end_41} :catchall_4f

    .line 582
    .local v3, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    :goto_41
    if-nez v3, :cond_45

    .line 583
    monitor-exit p0

    return-object v4

    .line 584
    .restart local p0    # "this":Landroid/mtp/MtpStorageManager;
    :cond_45
    :try_start_45
    invoke-direct {p0, v1, v3, p2, v0}, Landroid/mtp/MtpStorageManager;->getObjects(Ljava/util/List;Landroid/mtp/MtpStorageManager$MtpObject;IZ)Z

    move-result v5
    :try_end_49
    .catchall {:try_start_45 .. :try_end_49} :catchall_4f

    move v2, v5

    .line 585
    if-eqz v2, :cond_4d

    move-object v4, v1

    :cond_4d
    monitor-exit p0

    return-object v4

    .line 565
    .end local v0    # "recursive":Z
    .end local v1    # "objs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/mtp/MtpStorageManager$MtpObject;>;"
    .end local v2    # "ret":Z
    .end local v3    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    .end local p1    # "parent":I
    .end local p2    # "format":I
    .end local p3    # "storageId":I
    :catchall_4f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public greylist-max-o getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;
    .registers 5
    .param p1, "id"    # I

    .line 540
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mRoots:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 541
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StorageId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const/4 v0, 0x0

    return-object v0

    .line 544
    :cond_2c
    iget-object v0, p0, Landroid/mtp/MtpStorageManager;->mRoots:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpStorageManager$MtpObject;

    return-object v0
.end method

.method synthetic blacklist lambda$new$0$android-mtp-MtpStorageManager()V
    .registers 3

    .line 403
    :goto_0
    iget-boolean v0, p0, Landroid/mtp/MtpStorageManager;->mCheckConsistency:Z

    if-eqz v0, :cond_22

    .line 405
    const-wide/16 v0, 0x3a98

    :try_start_6
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_9} :catch_20

    .line 408
    nop

    .line 409
    invoke-virtual {p0}, Landroid/mtp/MtpStorageManager;->checkConsistency()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 410
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    const-string v1, "Cache is consistent"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 412
    :cond_18
    sget-object v0, Landroid/mtp/MtpStorageManager;->TAG:Ljava/lang/String;

    const-string v1, "Cache is not consistent"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 406
    :catch_20
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/InterruptedException;
    return-void

    .line 415
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_22
    return-void
.end method

.method public declared-synchronized greylist-max-o removeMtpStorage(Landroid/mtp/MtpStorage;)V
    .registers 4
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    monitor-enter p0

    .line 478
    :try_start_1
    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/mtp/MtpStorageManager;->getStorageRoot(I)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v1}, Landroid/mtp/MtpStorageManager;->removeObjectFromCache(Landroid/mtp/MtpStorageManager$MtpObject;ZZ)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 479
    monitor-exit p0

    return-void

    .line 477
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    .end local p1    # "storage":Landroid/mtp/MtpStorage;
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist-max-o setSubdirectories(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .local p1, "subDirs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-enter p0

    .line 455
    :try_start_1
    iput-object p1, p0, Landroid/mtp/MtpStorageManager;->mSubdirectories:Ljava/util/Set;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 456
    monitor-exit p0

    return-void

    .line 454
    .end local p0    # "this":Landroid/mtp/MtpStorageManager;
    .end local p1    # "subDirs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method
