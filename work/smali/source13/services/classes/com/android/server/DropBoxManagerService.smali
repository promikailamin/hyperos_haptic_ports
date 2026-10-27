.class public final Lcom/android/server/DropBoxManagerService;
.super Lcom/android/server/SystemService;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DropBoxManagerService$DropBoxManagerInternalImpl;,
        Lcom/android/server/DropBoxManagerService$EntryFile;,
        Lcom/android/server/DropBoxManagerService$FileList;,
        Lcom/android/server/DropBoxManagerService$SimpleEntrySource;,
        Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;,
        Lcom/android/server/DropBoxManagerService$ShellCmd;
    }
.end annotation


# static fields
.field private static final COMPRESS_THRESHOLD_BYTES:J = 0x4000L

.field private static final DEFAULT_AGE_SECONDS:I = 0x3f480

.field private static final DEFAULT_MAX_FILES:I = 0x3e8

.field private static final DEFAULT_MAX_FILES_LOWRAM:I = 0x12c

.field private static final DEFAULT_QUOTA_KB:I = 0x2800

.field private static final DEFAULT_QUOTA_PERCENT:I = 0xa

.field private static final DEFAULT_RESERVE_PERCENT:I = 0xa

.field private static final PROFILE_DUMP:Z = false

.field private static final PROTO_MAX_DATA_BYTES:I = 0x40000

.field private static final QUOTA_RESCAN_MILLIS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "DropBoxManagerService"


# instance fields
.field private mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

.field private mBlockSize:I

.field private volatile mBooted:Z

.field private mCachedQuotaBlocks:I

.field private mCachedQuotaUptimeMillis:J

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mDropBoxDir:Ljava/io/File;

.field private mFilesByTag:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/DropBoxManagerService$FileList;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

.field private mLowPriorityRateLimitPeriod:J

.field private mLowPriorityTags:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxFiles:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStatFs:Landroid/os/StatFs;

.field private final mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBooted(Lcom/android/server/DropBoxManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLowPriorityRateLimitPeriod(Lcom/android/server/DropBoxManagerService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmReceiver(Lcom/android/server/DropBoxManagerService;)Landroid/content/BroadcastReceiver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCachedQuotaUptimeMillis(Lcom/android/server/DropBoxManagerService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    return-void
.end method

.method static bridge synthetic -$$Nest$maddLowPriorityTag(Lcom/android/server/DropBoxManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/DropBoxManagerService;->addLowPriorityTag(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$minit(Lcom/android/server/DropBoxManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveLowPriorityTag(Lcom/android/server/DropBoxManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/DropBoxManagerService;->removeLowPriorityTag(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrestoreDefaults(Lcom/android/server/DropBoxManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->restoreDefaults()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetLowPriorityRateLimit(Lcom/android/server/DropBoxManagerService;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/DropBoxManagerService;->setLowPriorityRateLimit(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtrimToFit(Lcom/android/server/DropBoxManagerService;)J
    .registers 3

    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 334
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/dropbox"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V

    .line 335
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/io/File;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 346
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 117
    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    .line 119
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J

    .line 120
    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    .line 124
    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 125
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    .line 126
    iput v3, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 127
    iput-wide v1, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    .line 129
    iput-boolean v3, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    .line 134
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    .line 137
    new-instance v1, Lcom/android/server/DropBoxManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/DropBoxManagerService$1;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 159
    new-instance v1, Lcom/android/server/DropBoxManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/DropBoxManagerService$2;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    .line 347
    iput-object p2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 348
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 349
    new-instance v1, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

    invoke-direct {v1, p0, p3}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;-><init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mHandler:Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

    .line 350
    const-class v1, Lcom/android/server/DropBoxManagerInternal;

    new-instance v2, Lcom/android/server/DropBoxManagerService$DropBoxManagerInternalImpl;

    invoke-direct {v2, p0, v0}, Lcom/android/server/DropBoxManagerService$DropBoxManagerInternalImpl;-><init>(Lcom/android/server/DropBoxManagerService;Lcom/android/server/DropBoxManagerService$DropBoxManagerInternalImpl-IA;)V

    invoke-static {v1, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 351
    return-void
.end method

.method private declared-synchronized addLowPriorityTag(Ljava/lang/String;)V
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;

    monitor-enter p0

    .line 597
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 598
    monitor-exit p0

    return-void

    .line 596
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    .end local p1    # "tag":Ljava/lang/String;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private checkPermission(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingAttributionTag"    # Ljava/lang/String;

    .line 534
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.PEEK_DROPBOX_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_e

    .line 536
    return v1

    .line 540
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.READ_LOGS"

    const-string v3, "DropBoxManagerService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/app/AppOpsManager;

    const/16 v5, 0x2b

    const/4 v9, 0x0

    move v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-virtual/range {v4 .. v9}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sparse-switch v0, :sswitch_data_40

    .line 554
    const/4 v0, 0x0

    return v0

    .line 550
    :sswitch_35
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    return v1

    .line 548
    :sswitch_3f
    return v1

    :sswitch_data_40
    .sparse-switch
        0x0 -> :sswitch_3f
        0x3 -> :sswitch_35
    .end sparse-switch
.end method

.method private declared-synchronized createEntry(Ljava/io/File;Ljava/lang/String;I)J
    .registers 32
    .param p1, "temp"    # Ljava/io/File;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1077
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1083
    .local v2, "t":J
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v4, Lcom/android/server/DropBoxManagerService$EntryFile;

    const-wide/16 v5, 0x2710

    add-long/2addr v5, v2

    invoke-direct {v4, v5, v6}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 1084
    .local v0, "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    const/4 v4, 0x0

    .line 1085
    .local v4, "future":[Lcom/android/server/DropBoxManagerService$EntryFile;
    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2e

    .line 1086
    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/server/DropBoxManagerService$EntryFile;

    invoke-interface {v0, v5}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object v4, v5

    .line 1087
    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 1090
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    :cond_2e
    iget-object v5, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v5, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v5

    const-wide/16 v6, 0x1

    if-nez v5, :cond_4c

    .line 1091
    iget-object v5, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v5, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-wide v8, v5, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    add-long/2addr v8, v6

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    move-wide v2, v8

    .line 1094
    :cond_4c
    if-eqz v4, :cond_c1

    .line 1095
    array-length v5, v4

    const/4 v8, 0x0

    move-wide v13, v2

    .end local v2    # "t":J
    .local v13, "t":J
    :goto_51
    if-ge v8, v5, :cond_bd

    aget-object v2, v4, v8

    .line 1096
    .local v2, "late":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-object v3, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v9, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v10, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v9, v10

    iput v9, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1097
    iget-object v3, v1, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v9, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DropBoxManagerService$FileList;

    .line 1098
    .local v3, "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    if-eqz v3, :cond_79

    iget-object v9, v3, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v9, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_79

    .line 1099
    iget v9, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v10, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v9, v10

    iput v9, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1101
    :cond_79
    iget v9, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_a4

    .line 1102
    new-instance v15, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v9, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v2, v9}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v12, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    add-long v17, v13, v6

    .end local v13    # "t":J
    .local v17, "t":J
    iget v9, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    iget v6, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move v7, v9

    move-object v9, v15

    move-object/from16 v19, v0

    move-object v0, v15

    .end local v0    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .local v19, "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    move v15, v7

    move/from16 v16, v6

    invoke-direct/range {v9 .. v16}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    invoke-direct {v1, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    move-wide/from16 v13, v17

    const-wide/16 v9, 0x1

    goto :goto_b7

    .line 1105
    .end local v17    # "t":J
    .end local v19    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .restart local v0    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .restart local v13    # "t":J
    :cond_a4
    move-object/from16 v19, v0

    .end local v0    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .restart local v19    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    new-instance v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v6, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v7, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    const-wide/16 v9, 0x1

    add-long v11, v13, v9

    .end local v13    # "t":J
    .local v11, "t":J
    invoke-direct {v0, v6, v7, v13, v14}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-direct {v1, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    move-wide v13, v11

    .line 1095
    .end local v2    # "late":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v3    # "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    .end local v11    # "t":J
    .restart local v13    # "t":J
    :goto_b7
    add-int/lit8 v8, v8, 0x1

    move-wide v6, v9

    move-object/from16 v0, v19

    goto :goto_51

    .end local v19    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .restart local v0    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    :cond_bd
    move-object/from16 v19, v0

    .end local v0    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .restart local v19    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    move-wide v2, v13

    goto :goto_c3

    .line 1094
    .end local v13    # "t":J
    .end local v19    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .restart local v0    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .local v2, "t":J
    :cond_c1
    move-object/from16 v19, v0

    .line 1110
    .end local v0    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .restart local v19    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    :goto_c3
    if-nez p1, :cond_d2

    .line 1111
    new-instance v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v5, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v6, p2

    invoke-direct {v0, v5, v6, v2, v3}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-direct {v1, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    goto :goto_ee

    .line 1113
    :cond_d2
    move-object/from16 v6, p2

    new-instance v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v5, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget v7, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move-object/from16 v20, v0

    move-object/from16 v21, p1

    move-object/from16 v22, v5

    move-object/from16 v23, p2

    move-wide/from16 v24, v2

    move/from16 v26, p3

    move/from16 v27, v7

    invoke-direct/range {v20 .. v27}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    invoke-direct {v1, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_ee
    .catchall {:try_start_3 .. :try_end_ee} :catchall_f0

    .line 1115
    :goto_ee
    monitor-exit p0

    return-wide v2

    .line 1076
    .end local v2    # "t":J
    .end local v4    # "future":[Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v19    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .end local p1    # "temp":Ljava/io/File;
    .end local p2    # "tag":Ljava/lang/String;
    .end local p3    # "flags":I
    :catchall_f0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private dumpProtoLocked(Ljava/io/FileDescriptor;Ljava/util/ArrayList;)V
    .registers 19
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 772
    .local p2, "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v3, v0

    .line 774
    .local v3, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 775
    .local v5, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    move-object/from16 v6, p2

    invoke-direct {v1, v5, v6}, Lcom/android/server/DropBoxManagerService;->matchEntry(Lcom/android/server/DropBoxManagerService$EntryFile;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_12

    .line 777
    :cond_28
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v5, v0}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v13

    .line 778
    .local v13, "file":Ljava/io/File;
    if-eqz v13, :cond_c4

    iget v0, v5, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_37

    .line 779
    goto :goto_12

    .line 782
    :cond_37
    const-wide v7, 0x20b00000001L

    invoke-virtual {v3, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    .line 783
    .local v14, "bToken":J
    const-wide v7, 0x10300000001L

    iget-wide v9, v5, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 785
    :try_start_4a
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    iget-object v8, v5, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v9, v5, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget v12, v5, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    move-object v7, v0

    move-object v11, v13

    invoke-direct/range {v7 .. v12}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_57} :catch_a4

    move-object v7, v0

    .line 787
    .local v7, "dbe":Landroid/os/DropBoxManager$Entry;
    :try_start_58
    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_98

    move-object v8, v0

    .line 789
    .local v8, "is":Ljava/io/InputStream;
    if-eqz v8, :cond_8f

    .line 790
    const/high16 v0, 0x40000

    :try_start_61
    new-array v9, v0, [B

    .line 791
    .local v9, "buf":[B
    const/4 v10, 0x0

    .line 792
    .local v10, "readBytes":I
    const/4 v11, 0x0

    .line 793
    .local v11, "n":I
    :goto_65
    if-ltz v11, :cond_74

    add-int v12, v10, v11

    move v10, v12

    if-ge v12, v0, :cond_74

    .line 794
    sub-int v12, v0, v10

    invoke-virtual {v8, v9, v10, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    move v11, v12

    goto :goto_65

    .line 796
    :cond_74
    const-wide v0, 0x10c00000002L

    .line 797
    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v12

    .line 796
    invoke-virtual {v3, v0, v1, v12}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V
    :try_end_80
    .catchall {:try_start_61 .. :try_end_80} :catchall_81

    goto :goto_8f

    .line 784
    .end local v9    # "buf":[B
    .end local v10    # "readBytes":I
    .end local v11    # "n":I
    :catchall_81
    move-exception v0

    move-object v1, v0

    if-eqz v8, :cond_8e

    :try_start_85
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_89

    goto :goto_8e

    :catchall_89
    move-exception v0

    move-object v9, v0

    :try_start_8b
    invoke-virtual {v1, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "proto":Landroid/util/proto/ProtoOutputStream;
    .end local v5    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v7    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v13    # "file":Ljava/io/File;
    .end local v14    # "bToken":J
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8e
    :goto_8e
    throw v1

    .line 799
    .restart local v3    # "proto":Landroid/util/proto/ProtoOutputStream;
    .restart local v5    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .restart local v7    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v13    # "file":Ljava/io/File;
    .restart local v14    # "bToken":J
    .restart local p0    # "this":Lcom/android/server/DropBoxManagerService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8f
    :goto_8f
    if-eqz v8, :cond_94

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_94
    .catchall {:try_start_8b .. :try_end_94} :catchall_98

    .end local v8    # "is":Ljava/io/InputStream;
    :cond_94
    :try_start_94
    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_a4

    .line 801
    .end local v7    # "dbe":Landroid/os/DropBoxManager$Entry;
    goto :goto_bd

    .line 784
    .restart local v7    # "dbe":Landroid/os/DropBoxManager$Entry;
    :catchall_98
    move-exception v0

    move-object v1, v0

    :try_start_9a
    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_9e

    goto :goto_a3

    :catchall_9e
    move-exception v0

    move-object v8, v0

    :try_start_a0
    invoke-virtual {v1, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "proto":Landroid/util/proto/ProtoOutputStream;
    .end local v5    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v13    # "file":Ljava/io/File;
    .end local v14    # "bToken":J
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_a3
    throw v1
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a4} :catch_a4

    .line 799
    .end local v7    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v3    # "proto":Landroid/util/proto/ProtoOutputStream;
    .restart local v5    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .restart local v13    # "file":Ljava/io/File;
    .restart local v14    # "bToken":J
    .restart local p0    # "this":Lcom/android/server/DropBoxManagerService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_a4
    move-exception v0

    .line 800
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t read: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "DropBoxManagerService"

    invoke-static {v7, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 803
    .end local v0    # "e":Ljava/io/IOException;
    :goto_bd
    invoke-virtual {v3, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 804
    .end local v5    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v13    # "file":Ljava/io/File;
    .end local v14    # "bToken":J
    move-object/from16 v1, p0

    goto/16 :goto_12

    .line 778
    .restart local v5    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .restart local v13    # "file":Ljava/io/File;
    :cond_c4
    move-object/from16 v1, p0

    goto/16 :goto_12

    .line 806
    .end local v5    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v13    # "file":Ljava/io/File;
    :cond_c8
    move-object/from16 v6, p2

    invoke-virtual {v3}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 807
    return-void
.end method

.method private declared-synchronized enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    .registers 5
    .param p1, "entry"    # Lcom/android/server/DropBoxManagerService$EntryFile;

    monitor-enter p0

    .line 1058
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1059
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1064
    invoke-virtual {p1}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v0

    if-eqz v0, :cond_45

    iget v0, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    if-lez v0, :cond_45

    .line 1065
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    .line 1066
    .local v0, "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    if-nez v0, :cond_39

    .line 1067
    new-instance v1, Lcom/android/server/DropBoxManagerService$FileList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$FileList-IA;)V

    move-object v0, v1

    .line 1068
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    :cond_39
    iget-object v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1071
    iget v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_47

    .line 1073
    .end local v0    # "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    :cond_45
    monitor-exit p0

    return-void

    .line 1057
    .end local p1    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :catchall_47
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getLowPriorityResourceConfigs()V
    .registers 6

    .line 1234
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J

    .line 1237
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1239
    .local v0, "lowPrioritytags":[Ljava/lang/String;
    array-length v1, v0

    .line 1240
    .local v1, "size":I
    if-nez v1, :cond_20

    .line 1241
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    .line 1242
    return-void

    .line 1244
    :cond_20
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    .line 1245
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_28
    if-ge v2, v1, :cond_34

    .line 1246
    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1245
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 1248
    .end local v2    # "i":I
    :cond_34
    return-void
.end method

.method private declared-synchronized init()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1018
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    if-nez v0, :cond_61

    .line 1019
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_31

    .line 1020
    :cond_16
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t mkdir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_da

    .line 1023
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    :cond_31
    :goto_31
    :try_start_31
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 1024
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I
    :try_end_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_31 .. :try_end_44} :catch_45
    .catchall {:try_start_31 .. :try_end_44} :catchall_da

    .line 1027
    goto :goto_61

    .line 1025
    :catch_45
    move-exception v0

    .line 1026
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_46
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t statfs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1030
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_61
    :goto_61
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    if-nez v0, :cond_d8

    .line 1031
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1032
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_bd

    .line 1034
    new-instance v1, Lcom/android/server/DropBoxManagerService$FileList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$FileList-IA;)V

    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 1035
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    .line 1038
    array-length v1, v0

    const/4 v2, 0x0

    :goto_7e
    if-ge v2, v1, :cond_d8

    aget-object v3, v0, v2

    .line 1039
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_aa

    .line 1040
    const-string v4, "DropBoxManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cleaning temp file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1042
    goto :goto_ba

    .line 1045
    :cond_aa
    new-instance v4, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget v5, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    invoke-direct {v4, v3, v5}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;I)V

    .line 1047
    .local v4, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    invoke-virtual {v4}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v5

    if-eqz v5, :cond_ba

    .line 1050
    invoke-direct {p0, v4}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    .line 1038
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :cond_ba
    :goto_ba
    add-int/lit8 v2, v2, 0x1

    goto :goto_7e

    .line 1032
    :cond_bd
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t list files: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_d8
    .catchall {:try_start_46 .. :try_end_d8} :catchall_da

    .line 1054
    .end local v0    # "files":[Ljava/io/File;
    :cond_d8
    monitor-exit p0

    return-void

    .line 1017
    :catchall_da
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private logDropboxDropped(ILjava/lang/String;J)V
    .registers 6
    .param p1, "reason"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "entryAge"    # J

    .line 516
    const/16 v0, 0x1ab

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;J)V

    .line 517
    return-void
.end method

.method private matchEntry(Lcom/android/server/DropBoxManagerService$EntryFile;Ljava/util/ArrayList;)Z
    .registers 9
    .param p1, "entry"    # Lcom/android/server/DropBoxManagerService$EntryFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/DropBoxManagerService$EntryFile;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 761
    .local p2, "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-wide v0, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-static {v0, v1}, Landroid/text/format/TimeMigrationUtils;->formatMillisWithFixedFormat(J)Ljava/lang/String;

    move-result-object v0

    .line 762
    .local v0, "date":Ljava/lang/String;
    const/4 v1, 0x1

    .line 763
    .local v1, "match":Z
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 764
    .local v2, "numArgs":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v2, :cond_2c

    if-eqz v1, :cond_2c

    .line 765
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 766
    .local v4, "arg":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_27

    iget-object v5, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    goto :goto_27

    :cond_25
    const/4 v5, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v5, 0x1

    :goto_28
    move v1, v5

    .line 764
    .end local v4    # "arg":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 768
    .end local v3    # "i":I
    :cond_2c
    return v1
.end method

.method private declared-synchronized removeLowPriorityTag(Ljava/lang/String;)V
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;

    monitor-enter p0

    .line 601
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 602
    monitor-exit p0

    return-void

    .line 600
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    .end local p1    # "tag":Ljava/lang/String;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized restoreDefaults()V
    .registers 2

    monitor-enter p0

    .line 605
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->getLowPriorityResourceConfigs()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 606
    monitor-exit p0

    return-void

    .line 604
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setLowPriorityRateLimit(J)V
    .registers 3
    .param p1, "period"    # J

    monitor-enter p0

    .line 593
    :try_start_1
    iput-wide p1, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 594
    monitor-exit p0

    return-void

    .line 592
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    .end local p1    # "period":J
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized trimToFit()J
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1125
    :try_start_3
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "dropbox_age_seconds"

    const v3, 0x3f480

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v2, v0

    .line 1127
    .local v2, "ageSeconds":I
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "dropbox_max_files"

    .line 1129
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1130
    const/16 v4, 0x12c

    goto :goto_1e

    :cond_1c
    const/16 v4, 0x3e8

    .line 1127
    :goto_1e
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    .line 1131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1132
    .local v3, "curTimeMillis":J
    mul-int/lit16 v0, v2, 0x3e8

    int-to-long v5, v0

    sub-long v5, v3, v5

    .line 1133
    .local v5, "cutoffMillis":J
    :goto_2d
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_92

    .line 1134
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 1135
    .local v0, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-wide v7, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    cmp-long v7, v7, v5

    if-lez v7, :cond_54

    iget-object v7, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v7, v7, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v7}, Ljava/util/TreeSet;->size()I

    move-result v7

    iget v8, v1, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    if-ge v7, v8, :cond_54

    .line 1136
    goto :goto_92

    .line 1139
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    :cond_54
    const/4 v7, 0x4

    iget-object v8, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v9, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    sub-long v9, v3, v9

    invoke-direct {v1, v7, v8, v9, v10}, Lcom/android/server/DropBoxManagerService;->logDropboxDropped(ILjava/lang/String;J)V

    .line 1144
    iget-object v7, v1, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v8, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/DropBoxManagerService$FileList;

    .line 1145
    .local v7, "tag":Lcom/android/server/DropBoxManagerService$FileList;
    if-eqz v7, :cond_79

    iget-object v8, v7, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v8, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_79

    iget v8, v7, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v9, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v8, v9

    iput v8, v7, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1146
    :cond_79
    iget-object v8, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v8, v8, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v8, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8c

    iget-object v8, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v9, v8, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v10, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v9, v10

    iput v9, v8, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1147
    :cond_8c
    iget-object v8, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0, v8}, Lcom/android/server/DropBoxManagerService$EntryFile;->deleteFile(Ljava/io/File;)V

    .line 1148
    .end local v0    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v7    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    goto :goto_2d

    .line 1155
    :cond_92
    :goto_92
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1156
    .local v7, "uptimeMillis":J
    iget-wide v9, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    const-wide/16 v11, 0x1388

    add-long/2addr v9, v11

    cmp-long v0, v7, v9

    if-lez v0, :cond_129

    .line 1157
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "dropbox_quota_percent"

    const/16 v10, 0xa

    invoke-static {v0, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v9, v0

    .line 1159
    .local v9, "quotaPercent":I
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "dropbox_reserve_percent"

    invoke-static {v0, v11, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v10, v0

    .line 1161
    .local v10, "reservePercent":I
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v11, "dropbox_quota_kb"

    const/16 v12, 0x2800

    invoke-static {v0, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v11, v0

    .line 1164
    .local v11, "quotaKb":I
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0
    :try_end_c4
    .catchall {:try_start_3 .. :try_end_c4} :catchall_21e

    move-object v12, v0

    .line 1166
    .local v12, "dirPath":Ljava/lang/String;
    :try_start_c5
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v0, v12}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V
    :try_end_ca
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c5 .. :try_end_ca} :catch_109
    .catchall {:try_start_c5 .. :try_end_ca} :catchall_21e

    .line 1169
    nop

    .line 1170
    :try_start_cb
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v13

    .line 1171
    .local v13, "available":J
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v15

    move-wide/from16 v17, v5

    .end local v5    # "cutoffMillis":J
    .local v17, "cutoffMillis":J
    int-to-long v5, v10

    mul-long/2addr v15, v5

    const-wide/16 v5, 0x64

    div-long/2addr v15, v5

    sub-long v15, v13, v15

    .line 1172
    .local v15, "nonreserved":J
    move-object/from16 v19, v12

    move-wide/from16 v20, v13

    .end local v12    # "dirPath":Ljava/lang/String;
    .end local v13    # "available":J
    .local v19, "dirPath":Ljava/lang/String;
    .local v20, "available":J
    int-to-long v12, v9

    mul-long/2addr v12, v15

    div-long/2addr v12, v5

    move-wide v5, v12

    .line 1173
    .local v5, "maxAvailableLong":J
    const-wide/32 v12, 0x7fffffff

    .line 1174
    invoke-static {v5, v6, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 1173
    move-wide/from16 v22, v5

    const-wide/16 v5, 0x0

    .end local v5    # "maxAvailableLong":J
    .local v22, "maxAvailableLong":J
    invoke-static {v5, v6, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    .line 1175
    .local v0, "maxAvailable":I
    mul-int/lit16 v5, v11, 0x400

    iget v6, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    div-int/2addr v5, v6

    .line 1176
    .local v5, "maximum":I
    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 1177
    iput-wide v7, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    goto :goto_12b

    .line 1167
    .end local v0    # "maxAvailable":I
    .end local v15    # "nonreserved":J
    .end local v17    # "cutoffMillis":J
    .end local v19    # "dirPath":Ljava/lang/String;
    .end local v20    # "available":J
    .end local v22    # "maxAvailableLong":J
    .local v5, "cutoffMillis":J
    .restart local v12    # "dirPath":Ljava/lang/String;
    :catch_109
    move-exception v0

    move-wide/from16 v17, v5

    move-object/from16 v19, v12

    .line 1168
    .end local v5    # "cutoffMillis":J
    .end local v12    # "dirPath":Ljava/lang/String;
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v17    # "cutoffMillis":J
    .restart local v19    # "dirPath":Ljava/lang/String;
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Can\'t restat: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v12, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1156
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v9    # "quotaPercent":I
    .end local v10    # "reservePercent":I
    .end local v11    # "quotaKb":I
    .end local v17    # "cutoffMillis":J
    .end local v19    # "dirPath":Ljava/lang/String;
    .restart local v5    # "cutoffMillis":J
    :cond_129
    move-wide/from16 v17, v5

    .line 1194
    .end local v5    # "cutoffMillis":J
    .restart local v17    # "cutoffMillis":J
    :goto_12b
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v5, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    if-le v0, v5, :cond_20f

    .line 1196
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .local v0, "unsqueezed":I
    const/4 v5, 0x0

    .line 1197
    .local v5, "squeezed":I
    new-instance v6, Ljava/util/TreeSet;

    iget-object v9, v1, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 1198
    .local v6, "tags":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    invoke-virtual {v6}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v10, v5

    move v5, v0

    .end local v0    # "unsqueezed":I
    .local v5, "unsqueezed":I
    .local v10, "squeezed":I
    :goto_149
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_167

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    .line 1199
    .local v0, "tag":Lcom/android/server/DropBoxManagerService$FileList;
    if-lez v10, :cond_160

    iget v11, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v12, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    sub-int/2addr v12, v5

    div-int/2addr v12, v10

    if-gt v11, v12, :cond_160

    .line 1200
    goto :goto_167

    .line 1202
    :cond_160
    iget v11, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    sub-int/2addr v5, v11

    .line 1203
    nop

    .end local v0    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    add-int/lit8 v10, v10, 0x1

    .line 1204
    goto :goto_149

    .line 1205
    :cond_167
    :goto_167
    iget v0, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    sub-int/2addr v0, v5

    div-int/2addr v0, v10

    move v9, v0

    .line 1208
    .local v9, "tagQuota":I
    invoke-virtual {v6}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_170
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_209

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    move-object v12, v0

    .line 1209
    .local v12, "tag":Lcom/android/server/DropBoxManagerService$FileList;
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v13, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    if-ge v0, v13, :cond_18c

    move-object v15, v1

    move/from16 v16, v2

    move-wide/from16 v19, v3

    goto/16 :goto_214

    .line 1210
    :cond_18c
    :goto_18c
    iget v0, v12, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    if-le v0, v9, :cond_1fd

    iget-object v0, v12, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1fd

    .line 1211
    iget-object v0, v12, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object v13, v0

    .line 1212
    .local v13, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-object v14, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;
    :try_end_1a3
    .catchall {:try_start_cb .. :try_end_1a3} :catchall_21e

    .restart local p0    # "this":Lcom/android/server/DropBoxManagerService;
    :try_start_1a3
    iget-wide v0, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J
    :try_end_1a5
    .catchall {:try_start_1a3 .. :try_end_1a5} :catchall_1f9

    sub-long v0, v3, v0

    move-object/from16 v15, p0

    move/from16 v16, v2

    const/4 v2, 0x3

    .end local v2    # "ageSeconds":I
    .local v16, "ageSeconds":I
    :try_start_1ac
    invoke-direct {v15, v2, v14, v0, v1}, Lcom/android/server/DropBoxManagerService;->logDropboxDropped(ILjava/lang/String;J)V

    .line 1217
    iget-object v0, v12, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0, v13}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1be

    iget v0, v12, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v1, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v0, v1

    iput v0, v12, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1218
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    :cond_1be
    iget-object v0, v15, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0, v13}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d1

    iget-object v0, v15, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v2, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_1d1
    .catchall {:try_start_1ac .. :try_end_1d1} :catchall_21c

    .line 1221
    :cond_1d1
    :try_start_1d1
    iget-object v0, v15, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v13, v0}, Lcom/android/server/DropBoxManagerService$EntryFile;->deleteFile(Ljava/io/File;)V

    .line 1222
    new-instance v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v1, v15, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v2, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;
    :try_end_1dc
    .catch Ljava/io/IOException; {:try_start_1d1 .. :try_end_1dc} :catch_1e9
    .catchall {:try_start_1d1 .. :try_end_1dc} :catchall_21c

    move-wide/from16 v19, v3

    .end local v3    # "curTimeMillis":J
    .local v19, "curTimeMillis":J
    :try_start_1de
    iget-wide v3, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-direct {v15, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_1e6
    .catch Ljava/io/IOException; {:try_start_1de .. :try_end_1e6} :catch_1e7
    .catchall {:try_start_1de .. :try_end_1e6} :catchall_21c

    .line 1225
    goto :goto_1f3

    .line 1223
    :catch_1e7
    move-exception v0

    goto :goto_1ec

    .end local v19    # "curTimeMillis":J
    .restart local v3    # "curTimeMillis":J
    :catch_1e9
    move-exception v0

    move-wide/from16 v19, v3

    .line 1224
    .end local v3    # "curTimeMillis":J
    .local v0, "e":Ljava/io/IOException;
    .restart local v19    # "curTimeMillis":J
    :goto_1ec
    :try_start_1ec
    const-string v1, "DropBoxManagerService"

    const-string v2, "Can\'t write tombstone file"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1226
    .end local v0    # "e":Ljava/io/IOException;
    .end local v13    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :goto_1f3
    move-object v1, v15

    move/from16 v2, v16

    move-wide/from16 v3, v19

    goto :goto_18c

    .line 1124
    .end local v5    # "unsqueezed":I
    .end local v6    # "tags":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    .end local v7    # "uptimeMillis":J
    .end local v9    # "tagQuota":I
    .end local v10    # "squeezed":I
    .end local v12    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    .end local v16    # "ageSeconds":I
    .end local v17    # "cutoffMillis":J
    .end local v19    # "curTimeMillis":J
    :catchall_1f9
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_220

    .line 1210
    .restart local v2    # "ageSeconds":I
    .restart local v3    # "curTimeMillis":J
    .restart local v5    # "unsqueezed":I
    .restart local v6    # "tags":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    .restart local v7    # "uptimeMillis":J
    .restart local v9    # "tagQuota":I
    .restart local v10    # "squeezed":I
    .restart local v12    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    .restart local v17    # "cutoffMillis":J
    :cond_1fd
    move-object v15, v1

    move/from16 v16, v2

    move-wide/from16 v19, v3

    .line 1227
    .end local v2    # "ageSeconds":I
    .end local v3    # "curTimeMillis":J
    .end local v12    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    .restart local v16    # "ageSeconds":I
    .restart local v19    # "curTimeMillis":J
    move-object v1, v15

    move/from16 v2, v16

    move-wide/from16 v3, v19

    goto/16 :goto_170

    .line 1208
    .end local v16    # "ageSeconds":I
    .end local v19    # "curTimeMillis":J
    .restart local v2    # "ageSeconds":I
    .restart local v3    # "curTimeMillis":J
    :cond_209
    move-object v15, v1

    move/from16 v16, v2

    move-wide/from16 v19, v3

    .end local v2    # "ageSeconds":I
    .end local v3    # "curTimeMillis":J
    .restart local v16    # "ageSeconds":I
    .restart local v19    # "curTimeMillis":J
    goto :goto_214

    .line 1194
    .end local v5    # "unsqueezed":I
    .end local v6    # "tags":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    .end local v9    # "tagQuota":I
    .end local v10    # "squeezed":I
    .end local v16    # "ageSeconds":I
    .end local v19    # "curTimeMillis":J
    .restart local v2    # "ageSeconds":I
    .restart local v3    # "curTimeMillis":J
    :cond_20f
    move-object v15, v1

    move/from16 v16, v2

    move-wide/from16 v19, v3

    .line 1230
    .end local v2    # "ageSeconds":I
    .end local v3    # "curTimeMillis":J
    .restart local v16    # "ageSeconds":I
    .restart local v19    # "curTimeMillis":J
    :goto_214
    iget v0, v15, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    iget v1, v15, Lcom/android/server/DropBoxManagerService;->mBlockSize:I
    :try_end_218
    .catchall {:try_start_1ec .. :try_end_218} :catchall_21c

    mul-int/2addr v0, v1

    int-to-long v0, v0

    monitor-exit p0

    return-wide v0

    .line 1124
    .end local v7    # "uptimeMillis":J
    .end local v16    # "ageSeconds":I
    .end local v17    # "cutoffMillis":J
    .end local v19    # "curTimeMillis":J
    :catchall_21c
    move-exception v0

    goto :goto_220

    :catchall_21e
    move-exception v0

    move-object v15, v1

    :goto_220
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addData(Ljava/lang/String;[BI)V
    .registers 10
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "flags"    # I

    .line 393
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v0, p2

    int-to-long v3, v0

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/DropBoxManagerService;->addEntry(Ljava/lang/String;Ljava/io/InputStream;JI)V

    .line 394
    return-void
.end method

.method public addEntry(Ljava/lang/String;Lcom/android/server/DropBoxManagerInternal$EntrySource;I)V
    .registers 15
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/android/server/DropBoxManagerInternal$EntrySource;
    .param p3, "flags"    # I

    .line 465
    const-string v0, "DropBoxManagerService"

    const/4 v1, 0x0

    .line 467
    .local v1, "temp":Ljava/io/File;
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isTagEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " flags=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 468
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 467
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    and-int/lit8 v2, p3, 0x1

    if-nez v2, :cond_ed

    .line 471
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V

    .line 474
    invoke-virtual {p0, p1}, Lcom/android/server/DropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z

    move-result v2
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_40} :catch_f5
    .catchall {:try_start_3 .. :try_end_40} :catchall_f3

    if-nez v2, :cond_4b

    .line 510
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 511
    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 474
    :cond_4a
    return-void

    .line 477
    :cond_4b
    :try_start_4b
    invoke-interface {p2}, Lcom/android/server/DropBoxManagerInternal$EntrySource;->length()J

    move-result-wide v2

    .line 478
    .local v2, "length":J
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v4

    .line 479
    .local v4, "max":J
    cmp-long v6, v2, v4

    if-lez v6, :cond_88

    .line 481
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dropping: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c0

    .line 483
    :cond_88
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "drop"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v6

    .line 484
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_b6} :catch_f5
    .catchall {:try_start_4b .. :try_end_b6} :catchall_f3

    .line 485
    .local v6, "out":Ljava/io/FileOutputStream;
    :try_start_b6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-interface {p2, v7}, Lcom/android/server/DropBoxManagerInternal$EntrySource;->writeTo(Ljava/io/FileDescriptor;)V
    :try_end_bd
    .catchall {:try_start_b6 .. :try_end_bd} :catchall_e3

    .line 486
    :try_start_bd
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 490
    .end local v6    # "out":Ljava/io/FileOutputStream;
    :goto_c0
    invoke-direct {p0, v1, p1, p3}, Lcom/android/server/DropBoxManagerService;->createEntry(Ljava/io/File;Ljava/lang/String;I)J

    move-result-wide v6

    .line 491
    .local v6, "time":J
    const/4 v1, 0x0

    .line 497
    iget-object v8, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    if-eqz v8, :cond_d5

    invoke-virtual {v8, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d5

    .line 499
    iget-object v8, p0, Lcom/android/server/DropBoxManagerService;->mHandler:Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

    invoke-virtual {v8, p1, v6, v7}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->maybeDeferBroadcast(Ljava/lang/String;J)V

    goto :goto_da

    .line 501
    :cond_d5
    iget-object v8, p0, Lcom/android/server/DropBoxManagerService;->mHandler:Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

    invoke-virtual {v8, p1, v6, v7}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->sendBroadcast(Ljava/lang/String;J)V
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_da} :catch_f5
    .catchall {:try_start_bd .. :try_end_da} :catchall_f3

    .line 510
    .end local v2    # "length":J
    .end local v4    # "max":J
    .end local v6    # "time":J
    :goto_da
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 511
    if-eqz v1, :cond_118

    :goto_df
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_118

    .line 484
    .restart local v2    # "length":J
    .restart local v4    # "max":J
    .local v6, "out":Ljava/io/FileOutputStream;
    :catchall_e3
    move-exception v7

    :try_start_e4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_e7
    .catchall {:try_start_e4 .. :try_end_e7} :catchall_e8

    goto :goto_ec

    :catchall_e8
    move-exception v8

    :try_start_e9
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "temp":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    .end local p1    # "tag":Ljava/lang/String;
    .end local p2    # "entry":Lcom/android/server/DropBoxManagerInternal$EntrySource;
    .end local p3    # "flags":I
    :goto_ec
    throw v7

    .line 469
    .end local v2    # "length":J
    .end local v4    # "max":J
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "temp":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/DropBoxManagerService;
    .restart local p1    # "tag":Ljava/lang/String;
    .restart local p2    # "entry":Lcom/android/server/DropBoxManagerInternal$EntrySource;
    .restart local p3    # "flags":I
    :cond_ed
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local v1    # "temp":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    .end local p1    # "tag":Ljava/lang/String;
    .end local p2    # "entry":Lcom/android/server/DropBoxManagerInternal$EntrySource;
    .end local p3    # "flags":I
    throw v2
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_f3} :catch_f5
    .catchall {:try_start_e9 .. :try_end_f3} :catchall_f3

    .line 510
    .restart local v1    # "temp":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/DropBoxManagerService;
    .restart local p1    # "tag":Ljava/lang/String;
    .restart local p2    # "entry":Lcom/android/server/DropBoxManagerInternal$EntrySource;
    .restart local p3    # "flags":I
    :catchall_f3
    move-exception v0

    goto :goto_119

    .line 503
    :catch_f5
    move-exception v2

    .line 504
    .local v2, "e":Ljava/io/IOException;
    :try_start_f6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t write: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 505
    const/4 v0, 0x5

    const-wide/16 v3, 0x0

    invoke-direct {p0, v0, p1, v3, v4}, Lcom/android/server/DropBoxManagerService;->logDropboxDropped(ILjava/lang/String;J)V
    :try_end_112
    .catchall {:try_start_f6 .. :try_end_112} :catchall_f3

    .line 510
    .end local v2    # "e":Ljava/io/IOException;
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 511
    if-eqz v1, :cond_118

    goto :goto_df

    .line 513
    :cond_118
    :goto_118
    return-void

    .line 510
    :goto_119
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 511
    if-eqz v1, :cond_121

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 512
    :cond_121
    throw v0
.end method

.method public addEntry(Ljava/lang/String;Ljava/io/InputStream;JI)V
    .registers 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "length"    # J
    .param p5, "flags"    # I

    .line 415
    const/4 v0, 0x0

    .line 416
    .local v0, "forceCompress":Z
    and-int/lit8 v1, p5, 0x4

    if-nez v1, :cond_e

    const-wide/16 v1, 0x4000

    cmp-long v1, p3, v1

    if-lez v1, :cond_e

    .line 418
    const/4 v0, 0x1

    .line 419
    or-int/lit8 p5, p5, 0x4

    .line 422
    :cond_e
    new-instance v1, Lcom/android/server/DropBoxManagerService$SimpleEntrySource;

    invoke-direct {v1, p2, p3, p4, v0}, Lcom/android/server/DropBoxManagerService$SimpleEntrySource;-><init>(Ljava/io/InputStream;JZ)V

    invoke-virtual {p0, p1, v1, p5}, Lcom/android/server/DropBoxManagerService;->addEntry(Ljava/lang/String;Lcom/android/server/DropBoxManagerInternal$EntrySource;I)V

    .line 423
    return-void
.end method

.method public addFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;I)V
    .registers 12
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "flags"    # I

    .line 399
    :try_start_0
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    .line 402
    .local v0, "stat":Landroid/system/StructStat;
    iget v1, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v1}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v1
    :try_end_e
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_e} :catch_38

    if-eqz v1, :cond_1f

    .line 407
    nop

    .line 409
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v4, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iget-wide v5, v0, Landroid/system/StructStat;->st_size:J

    move-object v2, p0

    move-object v3, p1

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/DropBoxManagerService;->addEntry(Ljava/lang/String;Ljava/io/InputStream;JI)V

    .line 410
    return-void

    .line 403
    :cond_1f
    :try_start_1f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " entry must be real file"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    .end local p1    # "tag":Ljava/lang/String;
    .end local p2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local p3    # "flags":I
    throw v1
    :try_end_38
    .catch Landroid/system/ErrnoException; {:try_start_1f .. :try_end_38} :catch_38

    .line 405
    .end local v0    # "stat":Landroid/system/StructStat;
    .restart local p0    # "this":Lcom/android/server/DropBoxManagerService;
    .restart local p1    # "tag":Ljava/lang/String;
    .restart local p2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local p3    # "flags":I
    :catch_38
    move-exception v0

    .line 406
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 32
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    monitor-enter p0

    .line 609
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "DropBoxManagerService"

    invoke-static {v0, v4, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_3df

    if-nez v0, :cond_15

    monitor-exit p0

    return-void

    .line 612
    :cond_15
    :try_start_15
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_3bb
    .catchall {:try_start_15 .. :try_end_18} :catchall_3df

    .line 617
    nop

    .line 621
    :try_start_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    .line 622
    .local v4, "out":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "doPrint":Z
    const/4 v5, 0x0

    .line 623
    .local v5, "doFile":Z
    const/4 v6, 0x0

    .line 624
    .local v6, "dumpProto":Z
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 625
    .local v7, "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    move/from16 v27, v5

    move v5, v0

    move v0, v8

    move v8, v6

    move/from16 v6, v27

    .local v0, "i":I
    .local v5, "doPrint":Z
    .local v6, "doFile":Z
    .local v8, "dumpProto":Z
    :goto_2f
    if-eqz v3, :cond_ce

    array-length v9, v3

    if-ge v0, v9, :cond_ce

    .line 626
    aget-object v9, v3, v0

    const-string v10, "-p"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c9

    aget-object v9, v3, v0

    const-string v10, "--print"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4a

    goto/16 :goto_c9

    .line 628
    :cond_4a
    aget-object v9, v3, v0

    const-string v10, "-f"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c7

    aget-object v9, v3, v0

    const-string v10, "--file"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5f

    goto :goto_c7

    .line 630
    :cond_5f
    aget-object v9, v3, v0

    const-string v10, "--proto"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6b

    .line 631
    const/4 v8, 0x1

    goto :goto_ca

    .line 632
    :cond_6b
    aget-object v9, v3, v0

    const-string v10, "-h"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a2

    aget-object v9, v3, v0

    const-string v10, "--help"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_80

    goto :goto_a2

    .line 641
    :cond_80
    aget-object v9, v3, v0

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9c

    .line 642
    const-string v9, "Unknown argument: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v3, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ca

    .line 644
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    :cond_9c
    aget-object v9, v3, v0

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ca

    .line 633
    :cond_a2
    :goto_a2
    const-string v9, "Dropbox (dropbox) dump options:"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 634
    const-string v9, "  [-h|--help] [-p|--print] [-f|--file] [timestamp]"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 635
    const-string v9, "    -h|--help: print this help"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 636
    const-string v9, "    -p|--print: print full contents of each entry"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 637
    const-string v9, "    -f|--file: print path of each entry\'s file"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 638
    const-string v9, "    --proto: dump data to proto"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 639
    const-string v9, "  [timestamp] optionally filters to only those entries."

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_c5
    .catchall {:try_start_19 .. :try_end_c5} :catchall_3df

    .line 640
    monitor-exit p0

    return-void

    .line 629
    :cond_c7
    :goto_c7
    const/4 v6, 0x1

    goto :goto_ca

    .line 627
    :cond_c9
    :goto_c9
    const/4 v5, 0x1

    .line 625
    :goto_ca
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2f

    .line 648
    .end local v0    # "i":I
    :cond_ce
    if-eqz v8, :cond_d7

    .line 649
    move-object/from16 v9, p1

    :try_start_d2
    invoke-direct {v1, v9, v7}, Lcom/android/server/DropBoxManagerService;->dumpProtoLocked(Ljava/io/FileDescriptor;Ljava/util/ArrayList;)V
    :try_end_d5
    .catchall {:try_start_d2 .. :try_end_d5} :catchall_3df

    .line 650
    monitor-exit p0

    return-void

    .line 653
    :cond_d7
    move-object/from16 v9, p1

    :try_start_d9
    const-string v0, "Drop box contents: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v10, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v10, v10, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v10}, Ljava/util/TreeSet;->size()I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " entries\n"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    const-string v0, "Max entries: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v10, v1, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "\n"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    const-string v0, "Low priority rate limit period: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    iget-wide v10, v1, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, " ms\n"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    const-string v0, "Low priority tags: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v10, v1, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "\n"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14c

    .line 661
    const-string v0, "Searching for:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_131
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_147

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .local v10, "a":Ljava/lang/String;
    const-string v11, " "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_131

    .line 663
    .end local v10    # "a":Ljava/lang/String;
    :cond_147
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    :cond_14c
    const/4 v0, 0x0

    .line 667
    .local v0, "numFound":I
    const-string v10, "\n"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    iget-object v10, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v10, v10, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v10}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_15a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_394

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 669
    .local v11, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    invoke-direct {v1, v11, v7}, Lcom/android/server/DropBoxManagerService;->matchEntry(Lcom/android/server/DropBoxManagerService$EntryFile;Ljava/util/ArrayList;)Z

    move-result v12

    if-nez v12, :cond_16d

    goto :goto_15a

    .line 671
    :cond_16d
    add-int/lit8 v12, v0, 0x1

    .line 672
    .end local v0    # "numFound":I
    .local v12, "numFound":I
    if-eqz v5, :cond_176

    const-string v0, "========================================\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    :cond_176
    iget-wide v13, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-static {v13, v14}, Landroid/text/format/TimeMigrationUtils;->formatMillisWithFixedFormat(J)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 675
    .local v13, "date":Ljava/lang/String;
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, " "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v14, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v14, :cond_18e

    const-string v14, "(no tag)"

    goto :goto_190

    :cond_18e
    iget-object v14, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    :goto_190
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v11, v0}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    move-object v15, v0

    .line 678
    .local v15, "file":Ljava/io/File;
    if-nez v15, :cond_1a9

    .line 679
    const-string v0, " (no file)\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    move/from16 v23, v6

    move-object/from16 v21, v7

    move/from16 v22, v8

    goto/16 :goto_38b

    .line 681
    :cond_1a9
    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    const/16 v20, 0x1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1be

    .line 682
    const-string v0, " (contents lost)\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    move/from16 v23, v6

    move-object/from16 v21, v7

    move/from16 v22, v8

    goto/16 :goto_38b

    .line 685
    :cond_1be
    const-string v0, " ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1ce

    const-string v0, "compressed "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    :cond_1ce
    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1d8

    const-string/jumbo v0, "text"

    goto :goto_1da

    :cond_1d8
    const-string v0, "data"

    :goto_1da
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v21, v7

    move/from16 v22, v8

    .end local v7    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "dumpProto":Z
    .local v21, "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v22, "dumpProto":Z
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " bytes)\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    if-nez v6, :cond_1fe

    if-eqz v5, :cond_212

    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_212

    .line 692
    :cond_1fe
    if-nez v5, :cond_205

    const-string v0, "    "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    :cond_205
    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    :cond_212
    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I
    :try_end_214
    .catchall {:try_start_d9 .. :try_end_214} :catchall_3df

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_381

    if-nez v5, :cond_221

    if-nez v6, :cond_21d

    goto :goto_221

    :cond_21d
    move/from16 v23, v6

    goto/16 :goto_383

    .line 697
    :cond_221
    :goto_221
    const/4 v7, 0x0

    .line 698
    .local v7, "dbe":Landroid/os/DropBoxManager$Entry;
    const/4 v8, 0x0

    .line 700
    .local v8, "isr":Ljava/io/InputStreamReader;
    :try_start_223
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    iget-object v14, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;
    :try_end_227
    .catch Ljava/io/IOException; {:try_start_223 .. :try_end_227} :catch_32a
    .catchall {:try_start_223 .. :try_end_227} :catchall_321

    move/from16 v23, v6

    move-object/from16 v24, v7

    .end local v6    # "doFile":Z
    .end local v7    # "dbe":Landroid/os/DropBoxManager$Entry;
    .local v23, "doFile":Z
    .local v24, "dbe":Landroid/os/DropBoxManager$Entry;
    :try_start_22b
    iget-wide v6, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J
    :try_end_22d
    .catch Ljava/io/IOException; {:try_start_22b .. :try_end_22d} :catch_319
    .catchall {:try_start_22b .. :try_end_22d} :catchall_312

    move-object/from16 v25, v8

    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .local v25, "isr":Ljava/io/InputStreamReader;
    :try_start_22f
    iget v8, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I
    :try_end_231
    .catch Ljava/io/IOException; {:try_start_22f .. :try_end_231} :catch_30a
    .catchall {:try_start_22f .. :try_end_231} :catchall_302

    move-object/from16 v16, v14

    move-object v14, v0

    move-object/from16 v26, v15

    .end local v15    # "file":Ljava/io/File;
    .local v26, "file":Ljava/io/File;
    move-object/from16 v15, v16

    move-wide/from16 v16, v6

    move-object/from16 v18, v26

    move/from16 v19, v8

    :try_start_23e
    invoke-direct/range {v14 .. v19}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_241
    .catch Ljava/io/IOException; {:try_start_23e .. :try_end_241} :catch_2fc
    .catchall {:try_start_23e .. :try_end_241} :catchall_2f2

    move-object v7, v0

    .line 703
    .end local v24    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v7    # "dbe":Landroid/os/DropBoxManager$Entry;
    const/4 v6, 0x0

    if-eqz v5, :cond_298

    .line 704
    :try_start_245
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v8, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_24e
    .catch Ljava/io/IOException; {:try_start_245 .. :try_end_24e} :catch_2ee
    .catchall {:try_start_245 .. :try_end_24e} :catchall_2e6

    .line 705
    .end local v25    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    const/16 v14, 0x1000

    :try_start_250
    new-array v14, v14, [C

    .line 706
    .local v14, "buf":[C
    const/4 v15, 0x0

    .line 708
    .local v15, "newline":Z
    :goto_253
    invoke-virtual {v8, v14}, Ljava/io/InputStreamReader;->read([C)I

    move-result v16

    move/from16 v17, v16

    .line 709
    .local v17, "n":I
    move/from16 v0, v17

    .end local v17    # "n":I
    .local v0, "n":I
    if-gtz v0, :cond_266

    .line 719
    .end local v0    # "n":I
    if-nez v15, :cond_264

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    .end local v14    # "buf":[C
    .end local v15    # "newline":Z
    :cond_264
    goto/16 :goto_2d4

    .line 710
    .restart local v0    # "n":I
    .restart local v14    # "buf":[C
    .restart local v15    # "newline":Z
    :cond_266
    invoke-virtual {v4, v14, v6, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 711
    add-int/lit8 v17, v0, -0x1

    aget-char v6, v14, v17

    move/from16 v17, v0

    const/16 v0, 0xa

    .end local v0    # "n":I
    .restart local v17    # "n":I
    if-ne v6, v0, :cond_276

    move/from16 v0, v20

    goto :goto_277

    :cond_276
    const/4 v0, 0x0

    :goto_277
    move v15, v0

    .line 714
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/high16 v6, 0x10000

    if-le v0, v6, :cond_28c

    .line 715
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 716
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_28b
    .catch Ljava/io/IOException; {:try_start_250 .. :try_end_28b} :catch_295
    .catchall {:try_start_250 .. :try_end_28b} :catchall_28f

    goto :goto_28d

    .line 714
    :cond_28c
    const/4 v0, 0x0

    .line 718
    .end local v17    # "n":I
    :goto_28d
    move v6, v0

    goto :goto_253

    .line 736
    .end local v14    # "buf":[C
    .end local v15    # "newline":Z
    :catchall_28f
    move-exception v0

    move-object v6, v0

    move-object/from16 v15, v26

    goto/16 :goto_374

    .line 732
    :catch_295
    move-exception v0

    goto/16 :goto_333

    .line 721
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v25    # "isr":Ljava/io/InputStreamReader;
    :cond_298
    move v0, v6

    const/16 v6, 0x46

    :try_start_29b
    invoke-virtual {v7, v6}, Landroid/os/DropBoxManager$Entry;->getText(I)Ljava/lang/String;

    move-result-object v8

    .line 722
    .local v8, "text":Ljava/lang/String;
    const-string v14, "    "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    if-nez v8, :cond_2ac

    .line 724
    const-string v0, "[null]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2cd

    .line 726
    :cond_2ac
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    if-ne v14, v6, :cond_2b3

    goto :goto_2b5

    :cond_2b3
    move/from16 v20, v0

    :goto_2b5
    move/from16 v0, v20

    .line 727
    .local v0, "truncated":Z
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/16 v14, 0x2f

    const/16 v15, 0xa

    invoke-virtual {v6, v15, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    if-eqz v0, :cond_2cd

    const-string v6, " ..."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    .end local v0    # "truncated":Z
    :cond_2cd
    :goto_2cd
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2d2
    .catch Ljava/io/IOException; {:try_start_29b .. :try_end_2d2} :catch_2ee
    .catchall {:try_start_29b .. :try_end_2d2} :catchall_2e6

    move-object/from16 v8, v25

    .line 736
    .end local v25    # "isr":Ljava/io/InputStreamReader;
    .local v8, "isr":Ljava/io/InputStreamReader;
    :goto_2d4
    :try_start_2d4
    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_2d7
    .catchall {:try_start_2d4 .. :try_end_2d7} :catchall_3df

    .line 737
    if-eqz v8, :cond_2e2

    .line 739
    :try_start_2d9
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_2dc
    .catch Ljava/io/IOException; {:try_start_2d9 .. :try_end_2dc} :catch_2e0
    .catchall {:try_start_2d9 .. :try_end_2dc} :catchall_3df

    .line 741
    :goto_2dc
    move-object/from16 v15, v26

    goto/16 :goto_383

    .line 740
    :catch_2e0
    move-exception v0

    goto :goto_2dc

    .line 737
    :cond_2e2
    move-object/from16 v15, v26

    goto/16 :goto_383

    .line 736
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v25    # "isr":Ljava/io/InputStreamReader;
    :catchall_2e6
    move-exception v0

    move-object v6, v0

    move-object/from16 v8, v25

    move-object/from16 v15, v26

    goto/16 :goto_374

    .line 732
    :catch_2ee
    move-exception v0

    move-object/from16 v8, v25

    goto :goto_333

    .line 736
    .end local v7    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v24    # "dbe":Landroid/os/DropBoxManager$Entry;
    :catchall_2f2
    move-exception v0

    move-object v6, v0

    move-object/from16 v7, v24

    move-object/from16 v8, v25

    move-object/from16 v15, v26

    goto/16 :goto_374

    .line 732
    :catch_2fc
    move-exception v0

    move-object/from16 v7, v24

    move-object/from16 v8, v25

    goto :goto_333

    .line 736
    .end local v26    # "file":Ljava/io/File;
    .local v15, "file":Ljava/io/File;
    :catchall_302
    move-exception v0

    move-object v6, v0

    move-object/from16 v7, v24

    move-object/from16 v8, v25

    .end local v15    # "file":Ljava/io/File;
    .restart local v26    # "file":Ljava/io/File;
    goto/16 :goto_374

    .line 732
    .end local v26    # "file":Ljava/io/File;
    .restart local v15    # "file":Ljava/io/File;
    :catch_30a
    move-exception v0

    move-object/from16 v26, v15

    move-object/from16 v7, v24

    move-object/from16 v8, v25

    .end local v15    # "file":Ljava/io/File;
    .restart local v26    # "file":Ljava/io/File;
    goto :goto_333

    .line 736
    .end local v25    # "isr":Ljava/io/InputStreamReader;
    .end local v26    # "file":Ljava/io/File;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v15    # "file":Ljava/io/File;
    :catchall_312
    move-exception v0

    move-object/from16 v25, v8

    move-object v6, v0

    move-object/from16 v7, v24

    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .end local v15    # "file":Ljava/io/File;
    .restart local v25    # "isr":Ljava/io/InputStreamReader;
    .restart local v26    # "file":Ljava/io/File;
    goto :goto_374

    .line 732
    .end local v25    # "isr":Ljava/io/InputStreamReader;
    .end local v26    # "file":Ljava/io/File;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v15    # "file":Ljava/io/File;
    :catch_319
    move-exception v0

    move-object/from16 v25, v8

    move-object/from16 v26, v15

    move-object/from16 v7, v24

    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .end local v15    # "file":Ljava/io/File;
    .restart local v25    # "isr":Ljava/io/InputStreamReader;
    .restart local v26    # "file":Ljava/io/File;
    goto :goto_333

    .line 736
    .end local v23    # "doFile":Z
    .end local v24    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v25    # "isr":Ljava/io/InputStreamReader;
    .end local v26    # "file":Ljava/io/File;
    .restart local v6    # "doFile":Z
    .restart local v7    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v15    # "file":Ljava/io/File;
    :catchall_321
    move-exception v0

    move/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object v6, v0

    .end local v6    # "doFile":Z
    .end local v7    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .end local v15    # "file":Ljava/io/File;
    .restart local v23    # "doFile":Z
    .restart local v24    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v25    # "isr":Ljava/io/InputStreamReader;
    .restart local v26    # "file":Ljava/io/File;
    goto :goto_374

    .line 732
    .end local v23    # "doFile":Z
    .end local v24    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v25    # "isr":Ljava/io/InputStreamReader;
    .end local v26    # "file":Ljava/io/File;
    .restart local v6    # "doFile":Z
    .restart local v7    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v15    # "file":Ljava/io/File;
    :catch_32a
    move-exception v0

    move/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v15

    .line 733
    .end local v6    # "doFile":Z
    .end local v15    # "file":Ljava/io/File;
    .local v0, "e":Ljava/io/IOException;
    .restart local v23    # "doFile":Z
    .restart local v26    # "file":Ljava/io/File;
    :goto_333
    :try_start_333
    const-string v6, "*** "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v14, "\n"

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    const-string v6, "DropBoxManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Can\'t read: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14
    :try_end_353
    .catchall {:try_start_333 .. :try_end_353} :catchall_370

    move-object/from16 v15, v26

    .end local v26    # "file":Ljava/io/File;
    .restart local v15    # "file":Ljava/io/File;
    :try_start_355
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_360
    .catchall {:try_start_355 .. :try_end_360} :catchall_36d

    .line 736
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v7, :cond_365

    :try_start_362
    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_365
    .catchall {:try_start_362 .. :try_end_365} :catchall_3df

    .line 737
    :cond_365
    if-eqz v8, :cond_383

    .line 739
    :try_start_367
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_36a
    .catch Ljava/io/IOException; {:try_start_367 .. :try_end_36a} :catch_36b
    .catchall {:try_start_367 .. :try_end_36a} :catchall_3df

    .line 741
    :goto_36a
    goto :goto_383

    .line 740
    :catch_36b
    move-exception v0

    goto :goto_36a

    .line 736
    :catchall_36d
    move-exception v0

    move-object v6, v0

    goto :goto_374

    .end local v15    # "file":Ljava/io/File;
    .restart local v26    # "file":Ljava/io/File;
    :catchall_370
    move-exception v0

    move-object/from16 v15, v26

    move-object v6, v0

    .end local v26    # "file":Ljava/io/File;
    .restart local v15    # "file":Ljava/io/File;
    :goto_374
    if-eqz v7, :cond_379

    :try_start_376
    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_379
    .catchall {:try_start_376 .. :try_end_379} :catchall_3df

    .line 737
    :cond_379
    if-eqz v8, :cond_380

    .line 739
    :try_start_37b
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_37e
    .catch Ljava/io/IOException; {:try_start_37b .. :try_end_37e} :catch_37f
    .catchall {:try_start_37b .. :try_end_37e} :catchall_3df

    .line 741
    goto :goto_380

    .line 740
    :catch_37f
    move-exception v0

    .line 743
    :cond_380
    :goto_380
    :try_start_380
    throw v6

    .line 696
    .end local v7    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .end local v23    # "doFile":Z
    .restart local v6    # "doFile":Z
    :cond_381
    move/from16 v23, v6

    .line 746
    .end local v6    # "doFile":Z
    .restart local v23    # "doFile":Z
    :cond_383
    :goto_383
    if-eqz v5, :cond_38a

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    .end local v11    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v13    # "date":Ljava/lang/String;
    .end local v15    # "file":Ljava/io/File;
    :cond_38a
    nop

    .line 668
    .end local v21    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "dumpProto":Z
    .end local v23    # "doFile":Z
    .restart local v6    # "doFile":Z
    .local v7, "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v8, "dumpProto":Z
    :goto_38b
    move v0, v12

    move-object/from16 v7, v21

    move/from16 v8, v22

    move/from16 v6, v23

    .end local v6    # "doFile":Z
    .end local v7    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "dumpProto":Z
    .restart local v21    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v22    # "dumpProto":Z
    .restart local v23    # "doFile":Z
    goto/16 :goto_15a

    .line 749
    .end local v12    # "numFound":I
    .end local v21    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "dumpProto":Z
    .end local v23    # "doFile":Z
    .local v0, "numFound":I
    .restart local v6    # "doFile":Z
    .restart local v7    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "dumpProto":Z
    :cond_394
    move/from16 v23, v6

    move-object/from16 v21, v7

    move/from16 v22, v8

    .end local v6    # "doFile":Z
    .end local v7    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "dumpProto":Z
    .restart local v21    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v22    # "dumpProto":Z
    .restart local v23    # "doFile":Z
    if-nez v0, :cond_3a1

    const-string v6, "(No entries found.)\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    :cond_3a1
    if-eqz v3, :cond_3a6

    array-length v6, v3

    if-nez v6, :cond_3b2

    .line 752
    :cond_3a6
    if-nez v5, :cond_3ad

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    :cond_3ad
    const-string v6, "Usage: dumpsys dropbox [--print|--file] [YYYY-mm-dd] [HH:MM:SS] [tag]\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    :cond_3b2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_3b9
    .catchall {:try_start_380 .. :try_end_3b9} :catchall_3df

    .line 758
    monitor-exit p0

    return-void

    .line 613
    .end local v0    # "numFound":I
    .end local v4    # "out":Ljava/lang/StringBuilder;
    .end local v5    # "doPrint":Z
    .end local v21    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "dumpProto":Z
    .end local v23    # "doFile":Z
    :catch_3bb
    move-exception v0

    move-object/from16 v9, p1

    move-object v4, v0

    move-object v0, v4

    .line 614
    .local v0, "e":Ljava/io/IOException;
    :try_start_3c0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t initialize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 615
    const-string v4, "DropBoxManagerService"

    const-string v5, "Can\'t init"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3dd
    .catchall {:try_start_3c0 .. :try_end_3dd} :catchall_3df

    .line 616
    monitor-exit p0

    return-void

    .line 608
    .end local v0    # "e":Ljava/io/IOException;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :catchall_3df
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNextEntry(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Landroid/os/DropBoxManager$Entry;
    .registers 22
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "millis"    # J
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callingAttributionTag"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    monitor-enter p0

    .line 560
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct {v1, v0, v3, v4}, Lcom/android/server/DropBoxManagerService;->checkPermission(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_a1

    const/4 v5, 0x0

    if-nez v0, :cond_16

    .line 561
    monitor-exit p0

    return-object v5

    .line 565
    :cond_16
    :try_start_16
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_95
    .catchall {:try_start_16 .. :try_end_19} :catchall_a1

    .line 569
    nop

    .line 571
    if-nez v2, :cond_1f

    :try_start_1c
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    goto :goto_27

    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    :cond_1f
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_a1

    :goto_27
    move-object v6, v0

    .line 572
    .local v6, "list":Lcom/android/server/DropBoxManagerService$FileList;
    if-nez v6, :cond_2c

    monitor-exit p0

    return-object v5

    .line 574
    .restart local p0    # "this":Lcom/android/server/DropBoxManagerService;
    :cond_2c
    :try_start_2c
    iget-object v0, v6, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v7, Lcom/android/server/DropBoxManagerService$EntryFile;

    const-wide/16 v8, 0x1

    add-long v8, p2, v8

    invoke-direct {v7, v8, v9}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v0, v7}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object v8, v0

    .line 575
    .local v8, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-object v0, v8, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v0, :cond_51

    goto :goto_3f

    .line 576
    :cond_51
    iget v0, v8, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_62

    .line 577
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    iget-object v5, v8, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v9, v8, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-direct {v0, v5, v9, v10}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J)V
    :try_end_60
    .catchall {:try_start_2c .. :try_end_60} :catchall_a1

    monitor-exit p0

    return-object v0

    .line 579
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    :cond_62
    :try_start_62
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v8, v0}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0
    :try_end_68
    .catchall {:try_start_62 .. :try_end_68} :catchall_a1

    move-object v15, v0

    .line 581
    .local v15, "file":Ljava/io/File;
    :try_start_69
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    iget-object v10, v8, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v11, v8, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget v14, v8, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    move-object v9, v0

    move-object v13, v15

    invoke-direct/range {v9 .. v14}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_76} :catch_78
    .catchall {:try_start_69 .. :try_end_76} :catchall_a1

    monitor-exit p0

    return-object v0

    .line 583
    :catch_78
    move-exception v0

    .line 584
    .local v0, "e":Ljava/io/IOException;
    :try_start_79
    const-string v9, "DropBoxManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can\'t read: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_91
    .catchall {:try_start_79 .. :try_end_91} :catchall_a1

    .line 587
    nop

    .end local v0    # "e":Ljava/io/IOException;
    .end local v8    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v15    # "file":Ljava/io/File;
    goto :goto_3f

    .line 589
    :cond_93
    monitor-exit p0

    return-object v5

    .line 566
    .end local v6    # "list":Lcom/android/server/DropBoxManagerService$FileList;
    :catch_95
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 567
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_98
    const-string v6, "DropBoxManagerService"

    const-string v7, "Can\'t init"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9f
    .catchall {:try_start_98 .. :try_end_9f} :catchall_a1

    .line 568
    monitor-exit p0

    return-object v5

    .line 559
    .end local v0    # "e":Ljava/io/IOException;
    .end local p1    # "tag":Ljava/lang/String;
    .end local p2    # "millis":J
    .end local p4    # "callingPackage":Ljava/lang/String;
    .end local p5    # "callingAttributionTag":Ljava/lang/String;
    :catchall_a1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getServiceStub()Lcom/android/internal/os/IDropBoxManagerService;
    .registers 2

    .line 389
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    return-object v0
.end method

.method public isTagEnabled(Ljava/lang/String;)Z
    .registers 8
    .param p1, "tag"    # Ljava/lang/String;

    .line 520
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 522
    .local v0, "token":J
    :try_start_4
    const-string v2, "disabled"

    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dropbox:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_29

    .line 525
    xor-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 522
    return v2

    .line 525
    :catchall_29
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 526
    throw v2
.end method

.method public onBootPhase(I)V
    .registers 8
    .param p1, "phase"    # I

    .line 363
    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_32

    goto :goto_30

    .line 382
    :sswitch_5
    iput-boolean v0, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    goto :goto_30

    .line 365
    :sswitch_8
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 366
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 369
    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Lcom/android/server/DropBoxManagerService$3;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/server/DropBoxManagerService$3;-><init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Handler;)V

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 378
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->getLowPriorityResourceConfigs()V

    .line 379
    nop

    .line 385
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :goto_30
    return-void

    nop

    :sswitch_data_32
    .sparse-switch
        0x1f4 -> :sswitch_8
        0x3e8 -> :sswitch_5
    .end sparse-switch
.end method

.method public onStart()V
    .registers 3

    .line 355
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    const-string v1, "dropbox"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/DropBoxManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 359
    return-void
.end method
