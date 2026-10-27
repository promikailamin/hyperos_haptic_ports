.class public final Lcom/android/server/power/WakeLockLog;
.super Ljava/lang/Object;
.source "WakeLockLog.java"


# static fields
.field public static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final LEVEL_TO_STRING:[Ljava/lang/String;

.field public static final REDUCED_TAG_PREFIXES:[Ljava/lang/String;

.field static final SYSTEM_PACKAGE_NAME:Ljava/lang/String; = "System"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDumpsysDateFormat:Ljava/text/SimpleDateFormat;

.field public final mInjector:Lcom/android/server/power/WakeLockLog$Injector;

.field public final mLock:Ljava/lang/Object;

.field public final mLog:Lcom/android/server/power/WakeLockLog$TheLog;

.field public final mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDATE_FORMAT()Ljava/text/SimpleDateFormat;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/power/WakeLockLog;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetLEVEL_TO_STRING()[Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/power/WakeLockLog;->LEVEL_TO_STRING:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 8

    .line 99
    const-string v6, "doze"

    const-string v7, "draw"

    const-string/jumbo v0, "override"

    const-string/jumbo v1, "partial"

    const-string v2, "full"

    const-string/jumbo v3, "screen-dim"

    const-string/jumbo v4, "screen-bright"

    const-string/jumbo v5, "prox"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/WakeLockLog;->LEVEL_TO_STRING:[Ljava/lang/String;

    .line 121
    const-string v0, "*gms_scheduler*/"

    const-string v1, "IntentOp:"

    const-string v2, "*job*/"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/WakeLockLog;->REDUCED_TAG_PREFIXES:[Ljava/lang/String;

    .line 124
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/power/WakeLockLog;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 142
    new-instance v0, Lcom/android/server/power/WakeLockLog$Injector;

    invoke-direct {v0}, Lcom/android/server/power/WakeLockLog$Injector;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/android/server/power/WakeLockLog;-><init>(Lcom/android/server/power/WakeLockLog$Injector;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/WakeLockLog$Injector;Landroid/content/Context;)V
    .registers 6

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/WakeLockLog;->mLock:Ljava/lang/Object;

    .line 147
    iput-object p1, p0, Lcom/android/server/power/WakeLockLog;->mInjector:Lcom/android/server/power/WakeLockLog$Injector;

    .line 148
    new-instance v0, Lcom/android/server/power/WakeLockLog$TagDatabase;

    invoke-direct {v0, p1}, Lcom/android/server/power/WakeLockLog$TagDatabase;-><init>(Lcom/android/server/power/WakeLockLog$Injector;)V

    iput-object v0, p0, Lcom/android/server/power/WakeLockLog;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    .line 149
    new-instance v1, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    invoke-direct {v1, v0}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;-><init>(Lcom/android/server/power/WakeLockLog$TagDatabase;)V

    .line 150
    new-instance v2, Lcom/android/server/power/WakeLockLog$TheLog;

    invoke-direct {v2, p1, v1, v0}, Lcom/android/server/power/WakeLockLog$TheLog;-><init>(Lcom/android/server/power/WakeLockLog$Injector;Lcom/android/server/power/WakeLockLog$EntryByteTranslator;Lcom/android/server/power/WakeLockLog$TagDatabase;)V

    iput-object v2, p0, Lcom/android/server/power/WakeLockLog;->mLog:Lcom/android/server/power/WakeLockLog$TheLog;

    .line 151
    invoke-virtual {p1}, Lcom/android/server/power/WakeLockLog$Injector;->getDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/WakeLockLog;->mDumpsysDateFormat:Ljava/text/SimpleDateFormat;

    .line 152
    iput-object p2, p0, Lcom/android/server/power/WakeLockLog;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 3

    const/4 v0, 0x1

    .line 185
    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/WakeLockLog;->dump(Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Z)V
    .registers 10

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_c5

    .line 192
    :try_start_3
    const-string v1, "Wake Lock Log"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 196
    iget-object v2, p0, Lcom/android/server/power/WakeLockLog;->mLog:Lcom/android/server/power/WakeLockLog$TheLog;

    invoke-static {v2}, Lcom/android/server/power/WakeLockLog$TheLog;->-$$Nest$fgetmSavedAcquisitions(Lcom/android/server/power/WakeLockLog$TheLog;)Ljava/util/TreeMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/WakeLockLog$LogEntry;

    add-int/lit8 v4, v4, 0x1

    .line 198
    iget-object v6, p0, Lcom/android/server/power/WakeLockLog;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lcom/android/server/power/WakeLockLog$LogEntry;->updatePackageName(Landroid/util/SparseArray;Landroid/content/pm/PackageManager;)V

    .line 199
    iget-object v6, p0, Lcom/android/server/power/WakeLockLog;->mDumpsysDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, p1, v6}, Lcom/android/server/power/WakeLockLog$LogEntry;->dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;)V

    goto :goto_1d

    :catchall_3a
    move-exception p0

    goto/16 :goto_c3

    .line 202
    :cond_3d
    new-instance v2, Lcom/android/server/power/WakeLockLog$LogEntry;

    invoke-direct {v2}, Lcom/android/server/power/WakeLockLog$LogEntry;-><init>()V

    .line 203
    iget-object v5, p0, Lcom/android/server/power/WakeLockLog;->mLog:Lcom/android/server/power/WakeLockLog$TheLog;

    invoke-virtual {v5, v2}, Lcom/android/server/power/WakeLockLog$TheLog;->getAllItems(Lcom/android/server/power/WakeLockLog$LogEntry;)Ljava/util/Iterator;

    move-result-object v2

    .line 204
    :cond_48
    :goto_48
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 210
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/WakeLockLog$LogEntry;

    if-eqz v5, :cond_48

    .line 212
    iget v6, v5, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    if-nez v6, :cond_5d

    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    :cond_5d
    add-int/lit8 v4, v4, 0x1

    .line 216
    iget-object v6, p0, Lcom/android/server/power/WakeLockLog;->mContext:Landroid/content/Context;

    .line 217
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 216
    invoke-virtual {v5, v1, v6}, Lcom/android/server/power/WakeLockLog$LogEntry;->updatePackageName(Landroid/util/SparseArray;Landroid/content/pm/PackageManager;)V

    .line 221
    iget-object v6, p0, Lcom/android/server/power/WakeLockLog;->mDumpsysDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, p1, v6}, Lcom/android/server/power/WakeLockLog$LogEntry;->dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;)V

    goto :goto_48

    .line 225
    :cond_6e
    const-string v1, "  -"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Events: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Time-Resets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Buffer, Bytes used: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/WakeLockLog;->mLog:Lcom/android/server/power/WakeLockLog$TheLog;

    invoke-virtual {v2}, Lcom/android/server/power/WakeLockLog$TheLog;->getUsedBufferSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p2, :cond_c1

    .line 229
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/WakeLockLog;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    :cond_c1
    monitor-exit v0

    return-void

    :goto_c3
    monitor-exit v0
    :try_end_c4
    .catchall {:try_start_3 .. :try_end_c4} :catchall_3a

    :try_start_c4
    throw p0
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_c5} :catch_c5

    :catch_c5
    move-exception p0

    .line 233
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception dumping wake-lock log: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final handleWakeLockEventInternal(ILjava/lang/String;IIJ)V
    .registers 11

    .line 274
    iget-object v1, p0, Lcom/android/server/power/WakeLockLog;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 275
    :try_start_3
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    const/4 v2, 0x1

    invoke-virtual {v0, p2, p3, v2}, Lcom/android/server/power/WakeLockLog$TagDatabase;->findOrCreateTag(Ljava/lang/String;IZ)Lcom/android/server/power/WakeLockLog$TagData;

    move-result-object p2

    .line 277
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog;->mLog:Lcom/android/server/power/WakeLockLog$TheLog;

    new-instance p0, Lcom/android/server/power/WakeLockLog$LogEntry;

    move p3, p1

    move v3, p4

    move-object p4, p2

    move-wide p1, p5

    move p5, v3

    invoke-direct/range {p0 .. p5}, Lcom/android/server/power/WakeLockLog$LogEntry;-><init>(JILcom/android/server/power/WakeLockLog$TagData;I)V

    invoke-virtual {v0, p0}, Lcom/android/server/power/WakeLockLog$TheLog;->addEntry(Lcom/android/server/power/WakeLockLog$LogEntry;)V

    .line 278
    monitor-exit v1

    return-void

    :catchall_1b
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1b

    throw p0
.end method

.method public onWakeLockAcquired(Ljava/lang/String;IIJ)V
    .registers 13

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    .line 164
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/WakeLockLog;->onWakeLockEvent(ILjava/lang/String;IIJ)V

    return-void
.end method

.method public final onWakeLockEvent(ILjava/lang/String;IIJ)V
    .registers 14

    if-nez p2, :cond_2d

    .line 249
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Insufficient data to log wakelock [tag: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ownerUid: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", flags: 0x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 249
    const-string p1, "PowerManagerService.WLLog"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2d
    const-wide/16 v0, -0x1

    cmp-long v0, p5, v0

    if-nez v0, :cond_39

    .line 255
    iget-object p5, p0, Lcom/android/server/power/WakeLockLog;->mInjector:Lcom/android/server/power/WakeLockLog$Injector;

    invoke-virtual {p5}, Lcom/android/server/power/WakeLockLog$Injector;->currentTimeMillis()J

    move-result-wide p5

    :cond_39
    move-wide v5, p5

    const/4 p5, 0x1

    if-ne p1, p5, :cond_43

    .line 258
    invoke-virtual {p0, p4}, Lcom/android/server/power/WakeLockLog;->translateFlagsFromPowerManager(I)I

    move-result p4

    :goto_41
    move v4, p4

    goto :goto_45

    :cond_43
    const/4 p4, 0x0

    goto :goto_41

    .line 260
    :goto_45
    invoke-virtual {p0, p2}, Lcom/android/server/power/WakeLockLog;->tagNameReducer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move v1, p1

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/WakeLockLog;->handleWakeLockEventInternal(ILjava/lang/String;IIJ)V

    return-void
.end method

.method public onWakeLockReleased(Ljava/lang/String;IJ)V
    .registers 12

    const/4 v1, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-wide v5, p3

    .line 175
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/WakeLockLog;->onWakeLockEvent(ILjava/lang/String;IIJ)V

    return-void
.end method

.method public final tagNameReducer(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return-object p0

    .line 348
    :cond_4
    sget-object v0, Lcom/android/server/power/WakeLockLog;->REDUCED_TAG_PREFIXES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_18

    aget-object v4, v0, v3

    .line 349
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    move-object p0, v4

    goto :goto_18

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_18
    :goto_18
    if-eqz p0, :cond_65

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0, p1, v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 362
    const-string p0, "/"

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 364
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v3, 0x1

    move v4, v3

    :goto_3c
    if-ge v1, p0, :cond_59

    .line 366
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    if-eq v5, v6, :cond_4d

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_4b

    goto :goto_4d

    :cond_4b
    move v6, v2

    goto :goto_4e

    :cond_4d
    :goto_4d
    move v6, v3

    :goto_4e
    if-nez v6, :cond_52

    if-eqz v4, :cond_55

    .line 370
    :cond_52
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_55
    add-int/lit8 v1, v1, 0x1

    move v4, v6

    goto :goto_3c

    .line 374
    :cond_59
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_65
    return-object p1
.end method

.method public translateFlagsFromPowerManager(I)I
    .registers 5

    const p0, 0xffff

    and-int/2addr p0, p1

    const/16 v0, 0x20

    const/4 v1, 0x1

    if-eq p0, v1, :cond_44

    const/4 v1, 0x6

    if-eq p0, v1, :cond_43

    const/16 v2, 0xa

    if-eq p0, v2, :cond_41

    const/16 v2, 0x1a

    if-eq p0, v2, :cond_3f

    if-eq p0, v0, :cond_3d

    const/16 v2, 0x40

    if-eq p0, v2, :cond_44

    const/16 v1, 0x80

    if-eq p0, v1, :cond_3b

    const/16 v1, 0x100

    const/4 v2, 0x0

    if-eq p0, v1, :cond_39

    .line 319
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported lock level for logging, flags: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PowerManagerService.WLLog"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    move v1, v2

    goto :goto_44

    :cond_3b
    const/4 v1, 0x7

    goto :goto_44

    :cond_3d
    const/4 v1, 0x5

    goto :goto_44

    :cond_3f
    const/4 v1, 0x2

    goto :goto_44

    :cond_41
    const/4 v1, 0x4

    goto :goto_44

    :cond_43
    const/4 v1, 0x3

    :cond_44
    :goto_44
    const/high16 p0, 0x10000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_4b

    or-int/lit8 v1, v1, 0x10

    :cond_4b
    const/high16 p0, 0x20000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_52

    or-int/lit8 v1, v1, 0x8

    :cond_52
    const/high16 p0, -0x80000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_5a

    or-int/lit8 p0, v1, 0x20

    return p0

    :cond_5a
    return v1
.end method
