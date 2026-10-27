.class final Lcom/android/server/power/WakeLockLog;
.super Ljava/lang/Object;
.source "WakeLockLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/WakeLockLog$Injector;,
        Lcom/android/server/power/WakeLockLog$TagData;,
        Lcom/android/server/power/WakeLockLog$TagDatabase;,
        Lcom/android/server/power/WakeLockLog$TheLog;,
        Lcom/android/server/power/WakeLockLog$EntryByteTranslator;,
        Lcom/android/server/power/WakeLockLog$LogEntry;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static DEBUG:Z = false

.field private static final FLAG_ACQUIRE_CAUSES_WAKEUP:I = 0x10

.field private static final FLAG_ON_AFTER_RELEASE:I = 0x8

.field private static final FLAG_SYSTEM_WAKELOCK:I = 0x20

.field private static final LEVEL_DOZE_WAKE_LOCK:I = 0x6

.field private static final LEVEL_DRAW_WAKE_LOCK:I = 0x7

.field private static final LEVEL_FULL_WAKE_LOCK:I = 0x2

.field private static final LEVEL_PARTIAL_WAKE_LOCK:I = 0x1

.field private static final LEVEL_PROXIMITY_SCREEN_OFF_WAKE_LOCK:I = 0x5

.field private static final LEVEL_SCREEN_BRIGHT_WAKE_LOCK:I = 0x4

.field private static final LEVEL_SCREEN_DIM_WAKE_LOCK:I = 0x3

.field private static final LEVEL_TO_STRING:[Ljava/lang/String;

.field private static final LEVEL_UNKNOWN:I = 0x0

.field private static final LOG_SIZE:I = 0x2800

.field private static final LOG_SIZE_MIN:I = 0xa

.field private static final MASK_LOWER_6_BITS:I = 0x3f

.field private static final MASK_LOWER_7_BITS:I = 0x7f

.field private static final MAX_LOG_ENTRY_BYTE_SIZE:I = 0x9

.field private static final REDUCED_TAG_PREFIXES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "PowerManagerService.WLLog"

.field private static final TAG_DATABASE_SIZE:I = 0x80

.field private static final TAG_DATABASE_SIZE_MAX:I = 0x80

.field private static final TYPE_ACQUIRE:I = 0x1

.field private static final TYPE_RELEASE:I = 0x2

.field private static final TYPE_TIME_RESET:I


# instance fields
.field private final mDumpsysDateFormat:Ljava/text/SimpleDateFormat;

.field private final mInjector:Lcom/android/server/power/WakeLockLog$Injector;

.field private final mLock:Ljava/lang/Object;

.field private final mLog:Lcom/android/server/power/WakeLockLog$TheLog;

.field private final mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;


# direct methods
.method static bridge synthetic -$$Nest$sfgetDATE_FORMAT()Ljava/text/SimpleDateFormat;
    .registers 1

    sget-object v0, Lcom/android/server/power/WakeLockLog;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/power/WakeLockLog;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetLEVEL_TO_STRING()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/power/WakeLockLog;->LEVEL_TO_STRING:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 9

    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/power/WakeLockLog;->DEBUG:Z

    .line 94
    const-string/jumbo v1, "unknown"

    const-string/jumbo v2, "partial"

    const-string v3, "full"

    const-string/jumbo v4, "screen-dim"

    const-string/jumbo v5, "screen-bright"

    const-string/jumbo v6, "prox"

    const-string v7, "doze"

    const-string v8, "draw"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/WakeLockLog;->LEVEL_TO_STRING:[Ljava/lang/String;

    .line 116
    const-string v0, "*job*/"

    const-string v1, "*gms_scheduler*/"

    const-string v2, "IntentOp:"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/WakeLockLog;->REDUCED_TAG_PREFIXES:[Ljava/lang/String;

    .line 119
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/power/WakeLockLog;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 133
    new-instance v0, Lcom/android/server/power/WakeLockLog$Injector;

    invoke-direct {v0}, Lcom/android/server/power/WakeLockLog$Injector;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/power/WakeLockLog;-><init>(Lcom/android/server/power/WakeLockLog$Injector;)V

    .line 134
    return-void
.end method

.method constructor <init>(Lcom/android/server/power/WakeLockLog$Injector;)V
    .registers 5
    .param p1, "injector"    # Lcom/android/server/power/WakeLockLog$Injector;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/WakeLockLog;->mLock:Ljava/lang/Object;

    .line 138
    iput-object p1, p0, Lcom/android/server/power/WakeLockLog;->mInjector:Lcom/android/server/power/WakeLockLog$Injector;

    .line 139
    new-instance v0, Lcom/android/server/power/WakeLockLog$TagDatabase;

    invoke-direct {v0, p1}, Lcom/android/server/power/WakeLockLog$TagDatabase;-><init>(Lcom/android/server/power/WakeLockLog$Injector;)V

    iput-object v0, p0, Lcom/android/server/power/WakeLockLog;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    .line 140
    new-instance v1, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;

    invoke-direct {v1, v0}, Lcom/android/server/power/WakeLockLog$EntryByteTranslator;-><init>(Lcom/android/server/power/WakeLockLog$TagDatabase;)V

    .line 141
    .local v1, "translator":Lcom/android/server/power/WakeLockLog$EntryByteTranslator;
    new-instance v2, Lcom/android/server/power/WakeLockLog$TheLog;

    invoke-direct {v2, p1, v1, v0}, Lcom/android/server/power/WakeLockLog$TheLog;-><init>(Lcom/android/server/power/WakeLockLog$Injector;Lcom/android/server/power/WakeLockLog$EntryByteTranslator;Lcom/android/server/power/WakeLockLog$TagDatabase;)V

    iput-object v2, p0, Lcom/android/server/power/WakeLockLog;->mLog:Lcom/android/server/power/WakeLockLog$TheLog;

    .line 142
    invoke-virtual {p1}, Lcom/android/server/power/WakeLockLog$Injector;->getDateFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/WakeLockLog;->mDumpsysDateFormat:Ljava/text/SimpleDateFormat;

    .line 143
    return-void
.end method

.method private handleWakeLockEventInternal(ILjava/lang/String;IIJ)V
    .registers 16
    .param p1, "eventType"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "ownerUid"    # I
    .param p4, "flags"    # I
    .param p5, "time"    # J

    .line 253
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/WakeLockLog;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, p3, v2}, Lcom/android/server/power/WakeLockLog$TagDatabase;->findOrCreateTag(Ljava/lang/String;IZ)Lcom/android/server/power/WakeLockLog$TagData;

    move-result-object v7

    .line 256
    .local v7, "tagData":Lcom/android/server/power/WakeLockLog$TagData;
    iget-object v1, p0, Lcom/android/server/power/WakeLockLog;->mLog:Lcom/android/server/power/WakeLockLog$TheLog;

    new-instance v2, Lcom/android/server/power/WakeLockLog$LogEntry;

    move-object v3, v2

    move-wide v4, p5

    move v6, p1

    move v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/server/power/WakeLockLog$LogEntry;-><init>(JILcom/android/server/power/WakeLockLog$TagData;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/power/WakeLockLog$TheLog;->addEntry(Lcom/android/server/power/WakeLockLog$LogEntry;)V

    .line 257
    .end local v7    # "tagData":Lcom/android/server/power/WakeLockLog$TagData;
    monitor-exit v0

    .line 258
    return-void

    .line 257
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method private onWakeLockEvent(ILjava/lang/String;II)V
    .registers 15
    .param p1, "eventType"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "ownerUid"    # I
    .param p4, "flags"    # I

    .line 228
    if-nez p2, :cond_33

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Insufficient data to log wakelock [tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ownerUid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 231
    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    const-string v1, "PowerManagerService.WLLog"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    return-void

    .line 235
    :cond_33
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog;->mInjector:Lcom/android/server/power/WakeLockLog$Injector;

    invoke-virtual {v0}, Lcom/android/server/power/WakeLockLog$Injector;->currentTimeMillis()J

    move-result-wide v8

    .line 236
    .local v8, "time":J
    const/4 v0, 0x1

    if-ne p1, v0, :cond_42

    .line 237
    invoke-virtual {p0, p4}, Lcom/android/server/power/WakeLockLog;->translateFlagsFromPowerManager(I)I

    move-result v0

    move v5, v0

    goto :goto_44

    .line 238
    :cond_42
    const/4 v0, 0x0

    move v5, v0

    :goto_44
    nop

    .line 239
    .local v5, "translatedFlags":I
    invoke-direct {p0, p2}, Lcom/android/server/power/WakeLockLog;->tagNameReducer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move v2, p1

    move v4, p3

    move-wide v6, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/WakeLockLog;->handleWakeLockEventInternal(ILjava/lang/String;IIJ)V

    .line 241
    return-void
.end method

.method private tagNameReducer(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "tag"    # Ljava/lang/String;

    .line 319
    if-nez p1, :cond_4

    .line 320
    const/4 v0, 0x0

    return-object v0

    .line 323
    :cond_4
    const/4 v0, 0x0

    .line 324
    .local v0, "reduciblePrefix":Ljava/lang/String;
    sget-object v1, Lcom/android/server/power/WakeLockLog;->REDUCED_TAG_PREFIXES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v2, :cond_19

    aget-object v5, v1, v4

    .line 325
    .local v5, "reducedTagPrefix":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 326
    move-object v0, v5

    .line 327
    goto :goto_19

    .line 324
    .end local v5    # "reducedTagPrefix":Ljava/lang/String;
    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 331
    :cond_19
    :goto_19
    if-eqz v0, :cond_65

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, p1, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 338
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const-string v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 339
    .local v2, "end":I
    const/4 v4, 0x1

    .line 340
    .local v4, "printNext":Z
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 341
    .local v5, "index":I
    :goto_3c
    if-ge v5, v2, :cond_59

    .line 342
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 343
    .local v6, "c":C
    const/16 v7, 0x2e

    if-eq v6, v7, :cond_4d

    const/16 v7, 0x2f

    if-ne v6, v7, :cond_4b

    goto :goto_4d

    :cond_4b
    move v7, v3

    goto :goto_4e

    :cond_4d
    :goto_4d
    const/4 v7, 0x1

    .line 345
    .local v7, "isMarker":Z
    :goto_4e
    if-nez v7, :cond_52

    if-eqz v4, :cond_55

    .line 346
    :cond_52
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 348
    :cond_55
    move v4, v7

    .line 341
    .end local v6    # "c":C
    .end local v7    # "isMarker":Z
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    .line 350
    :cond_59
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 353
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .end local v2    # "end":I
    .end local v4    # "printNext":Z
    .end local v5    # "index":I
    :cond_65
    return-object p1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 173
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/WakeLockLog;->dump(Ljava/io/PrintWriter;Z)V

    .line 174
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Z)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "includeTagDb"    # Z

    .line 179
    sget-boolean v0, Lcom/android/server/power/PowerDebugConfig;->DEBUG_WLL:Z

    sput-boolean v0, Lcom/android/server/power/WakeLockLog;->DEBUG:Z

    .line 181
    :try_start_4
    iget-object v0, p0, Lcom/android/server/power/WakeLockLog;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_ab

    .line 182
    :try_start_7
    const-string v1, "Wake Lock Log"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    new-instance v1, Lcom/android/server/power/WakeLockLog$LogEntry;

    invoke-direct {v1}, Lcom/android/server/power/WakeLockLog$LogEntry;-><init>()V

    .line 184
    .local v1, "tempEntry":Lcom/android/server/power/WakeLockLog$LogEntry;
    iget-object v2, p0, Lcom/android/server/power/WakeLockLog;->mLog:Lcom/android/server/power/WakeLockLog$TheLog;

    invoke-virtual {v2, v1}, Lcom/android/server/power/WakeLockLog$TheLog;->getAllItems(Lcom/android/server/power/WakeLockLog$LogEntry;)Ljava/util/Iterator;

    move-result-object v2

    .line 185
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/power/WakeLockLog$LogEntry;>;"
    const/4 v3, 0x0

    .line 186
    .local v3, "numEvents":I
    const/4 v4, 0x0

    .line 187
    .local v4, "numResets":I
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_47

    .line 188
    const/4 v5, 0x0

    .line 189
    .local v5, "address":Ljava/lang/String;
    sget-boolean v6, Lcom/android/server/power/WakeLockLog;->DEBUG:Z

    if-eqz v6, :cond_29

    .line 191
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 193
    :cond_29
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/WakeLockLog$LogEntry;

    .line 194
    .local v6, "entry":Lcom/android/server/power/WakeLockLog$LogEntry;
    if-eqz v6, :cond_46

    .line 195
    iget v7, v6, Lcom/android/server/power/WakeLockLog$LogEntry;->type:I

    if-nez v7, :cond_38

    .line 196
    add-int/lit8 v4, v4, 0x1

    goto :goto_46

    .line 198
    :cond_38
    add-int/lit8 v3, v3, 0x1

    .line 199
    sget-boolean v7, Lcom/android/server/power/WakeLockLog;->DEBUG:Z

    if-eqz v7, :cond_41

    .line 200
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 202
    :cond_41
    iget-object v7, p0, Lcom/android/server/power/WakeLockLog;->mDumpsysDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, p1, v7}, Lcom/android/server/power/WakeLockLog$LogEntry;->dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;)V

    .line 205
    .end local v5    # "address":Ljava/lang/String;
    .end local v6    # "entry":Lcom/android/server/power/WakeLockLog$LogEntry;
    :cond_46
    :goto_46
    goto :goto_19

    .line 206
    :cond_47
    const-string v5, "  -"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Events: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Time-Resets: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Buffer, Bytes used: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/WakeLockLog;->mLog:Lcom/android/server/power/WakeLockLog$TheLog;

    invoke-virtual {v6}, Lcom/android/server/power/WakeLockLog$TheLog;->getUsedBufferSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    sget-boolean v5, Lcom/android/server/power/WakeLockLog;->DEBUG:Z

    if-nez v5, :cond_8e

    if-eqz p2, :cond_a6

    .line 210
    :cond_8e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/WakeLockLog;->mTagDatabase:Lcom/android/server/power/WakeLockLog$TagDatabase;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    .end local v1    # "tempEntry":Lcom/android/server/power/WakeLockLog$LogEntry;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/power/WakeLockLog$LogEntry;>;"
    .end local v3    # "numEvents":I
    .end local v4    # "numResets":I
    :cond_a6
    monitor-exit v0

    .line 215
    goto :goto_c6

    .line 212
    :catchall_a8
    move-exception v1

    monitor-exit v0
    :try_end_aa
    .catchall {:try_start_7 .. :try_end_aa} :catchall_a8

    .end local p0    # "this":Lcom/android/server/power/WakeLockLog;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    .end local p2    # "includeTagDb":Z
    :try_start_aa
    throw v1
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_ab} :catch_ab

    .line 213
    .restart local p0    # "this":Lcom/android/server/power/WakeLockLog;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    .restart local p2    # "includeTagDb":Z
    :catch_ab
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception dumping wake-lock log: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 216
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c6
    return-void
.end method

.method public onWakeLockAcquired(Ljava/lang/String;II)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ownerUid"    # I
    .param p3, "flags"    # I

    .line 153
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/power/WakeLockLog;->onWakeLockEvent(ILjava/lang/String;II)V

    .line 154
    return-void
.end method

.method public onWakeLockReleased(Ljava/lang/String;I)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ownerUid"    # I

    .line 163
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/power/WakeLockLog;->onWakeLockEvent(ILjava/lang/String;II)V

    .line 164
    return-void
.end method

.method translateFlagsFromPowerManager(I)I
    .registers 5
    .param p1, "flags"    # I

    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, "newFlags":I
    const v1, 0xffff

    and-int/2addr v1, p1

    sparse-switch v1, :sswitch_data_46

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported lock level for logging, flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PowerManagerService.WLLog"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 289
    :sswitch_21
    const/4 v0, 0x7

    .line 290
    goto :goto_2f

    .line 286
    :sswitch_23
    const/4 v0, 0x6

    .line 287
    goto :goto_2f

    .line 292
    :sswitch_25
    const/4 v0, 0x5

    .line 293
    goto :goto_2f

    .line 283
    :sswitch_27
    const/4 v0, 0x2

    .line 284
    goto :goto_2f

    .line 280
    :sswitch_29
    const/4 v0, 0x4

    .line 281
    goto :goto_2f

    .line 277
    :sswitch_2b
    const/4 v0, 0x3

    .line 278
    goto :goto_2f

    .line 274
    :sswitch_2d
    const/4 v0, 0x1

    .line 275
    nop

    .line 298
    :goto_2f
    const/high16 v1, 0x10000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_36

    .line 299
    or-int/lit8 v0, v0, 0x10

    .line 301
    :cond_36
    const/high16 v1, 0x20000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_3d

    .line 302
    or-int/lit8 v0, v0, 0x8

    .line 304
    :cond_3d
    const/high16 v1, -0x80000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_44

    .line 305
    or-int/lit8 v0, v0, 0x20

    .line 307
    :cond_44
    return v0

    nop

    :sswitch_data_46
    .sparse-switch
        0x1 -> :sswitch_2d
        0x6 -> :sswitch_2b
        0xa -> :sswitch_29
        0x1a -> :sswitch_27
        0x20 -> :sswitch_25
        0x40 -> :sswitch_23
        0x80 -> :sswitch_21
    .end sparse-switch
.end method
