.class public Lmiui/stepcounter/StepProvider;
.super Landroid/content/ContentProvider;
.source "StepProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/stepcounter/StepProvider$Injector;,
        Lmiui/stepcounter/StepProvider$DBHelper;
    }
.end annotation


# static fields
.field private static final blacklist DB_CREATE:Ljava/lang/String; = "CREATE TABLE StepsTable (_id INTEGER PRIMARY KEY AUTOINCREMENT, _begin_time INTEGER NOT NULL, _end_time INTEGER NOT NULL, _mode INTEGER NOT NULL, _steps INTEGER NOT NULL);"

.field private static final blacklist DB_NAME:Ljava/lang/String; = "Steps.db"

.field private static final blacklist DB_SEQUENCE_TABLE:Ljava/lang/String; = "sqlite_sequence"

.field private static final blacklist DB_TABLE:Ljava/lang/String; = "StepsTable"

.field private static final blacklist DB_VERSION:I = 0x7

.field private static final blacklist QUERY_DELAY:I = 0xea60

.field private static final blacklist TAG:Ljava/lang/String; = "StepProvider"

.field private static final blacklist USER_AUTHORITY_PREFIX:Ljava/lang/String; = "0@"

.field private static final blacklist mRestoreLock:Ljava/lang/Object;

.field private static blacklist sDEBUG:Z

.field public static final blacklist sStepsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDbHelper:Lmiui/stepcounter/StepProvider$DBHelper;

.field private blacklist mInjector:Lmiui/stepcounter/StepProvider$Injector;

.field private blacklist mLastQueryTimeInMills:J

.field private blacklist mResolver:Landroid/content/ContentResolver;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mmergeDataBaseFromPowerKeeper(Lmiui/stepcounter/StepProvider;)V
    .registers 1

    invoke-direct {p0}, Lmiui/stepcounter/StepProvider;->mergeDataBaseFromPowerKeeper()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lmiui/stepcounter/StepProvider;->sDEBUG:Z

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiui/stepcounter/StepProvider;->mRestoreLock:Ljava/lang/Object;

    .line 59
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lmiui/stepcounter/StepProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 60
    const-string v1, "com.miui.providers.steps"

    const-string v2, "item"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    const-string v2, "item/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    const-string v2, "pos/#"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    const-string v2, "item_latest"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/stepcounter/StepProvider;->sStepsProjectionMap:Ljava/util/HashMap;

    .line 70
    const-string v1, "_id"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v1, "_begin_time"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v1, "_end_time"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v1, "_mode"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v1, "_steps"

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 35
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/stepcounter/StepProvider;->mDbHelper:Lmiui/stepcounter/StepProvider$DBHelper;

    .line 78
    iput-object v0, p0, Lmiui/stepcounter/StepProvider;->mResolver:Landroid/content/ContentResolver;

    .line 79
    iput-object v0, p0, Lmiui/stepcounter/StepProvider;->mContext:Landroid/content/Context;

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/stepcounter/StepProvider;->mLastQueryTimeInMills:J

    return-void
.end method

.method private blacklist addOwnerUserIdForUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;

    .line 441
    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 443
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 444
    .local v0, "builder":Landroid/net/Uri$Builder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 445
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 447
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :cond_2f
    return-object p1
.end method

.method private blacklist canInsertSqlite()Z
    .registers 5

    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lmiui/stepcounter/StepProvider;->mLastQueryTimeInMills:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 333
    .local v0, "can":Z
    :goto_11
    if-eqz v0, :cond_19

    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lmiui/stepcounter/StepProvider;->mLastQueryTimeInMills:J

    .line 336
    :cond_19
    return v0
.end method

.method private blacklist getItemCount()Landroid/os/Bundle;
    .registers 6

    .line 340
    const-string v0, "StepProvider"

    const-string v1, "StepProvider.getItemCount"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lmiui/stepcounter/StepProvider;->mDbHelper:Lmiui/stepcounter/StepProvider$DBHelper;

    invoke-virtual {v0}, Lmiui/stepcounter/StepProvider$DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 342
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "select count(*) from StepsTable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 344
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 345
    .local v2, "count":I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 346
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 349
    :cond_20
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 350
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v4, "KEY_ITEM_COUNT"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 352
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 354
    return-object v3
.end method

.method private blacklist mergeDataBaseFromPowerKeeper()V
    .registers 27

    .line 384
    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM StepsTable ORDER BY _id ASC"

    const-string v2, "/data/data/com.miui.powerkeeper/databases/Steps.db"

    .line 385
    .local v2, "oldFilePath":Ljava/lang/String;
    const-string v3, "/data/data/com.miui.powerkeeper/databases/Steps.db-journal"

    .line 386
    .local v3, "oldFileJournalPath":Ljava/lang/String;
    const-string v4, "StepProvider"

    const-string v5, "mergeDataBaseFromPowerKeeper"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 388
    .local v5, "oldFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1b

    return-void

    .line 389
    :cond_1b
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v6, "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v7, 0x0

    .line 393
    .local v7, "oldDB":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x1

    const/4 v9, 0x0

    :try_start_23
    invoke-static {v2, v9, v8}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_27} :catch_13d

    move-object v7, v10

    .line 394
    :try_start_28
    invoke-virtual {v7, v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2c} :catch_134

    .line 398
    .local v10, "oldCursor":Landroid/database/Cursor;
    nop

    .line 399
    const-wide v11, 0x7fffffffffffffffL

    .line 400
    .local v11, "minBeginTime":J
    const-wide/16 v13, 0x0

    .line 401
    .local v13, "maxEndTime":J
    :goto_34
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    const-string v9, "_steps"

    const-string v8, "_mode"

    move-object/from16 v19, v5

    .end local v5    # "oldFile":Ljava/io/File;
    .local v19, "oldFile":Ljava/io/File;
    const-string v5, "_end_time"

    move-object/from16 v20, v3

    .end local v3    # "oldFileJournalPath":Ljava/lang/String;
    .local v20, "oldFileJournalPath":Ljava/lang/String;
    const-string v3, "_begin_time"

    move-object/from16 v21, v2

    .end local v2    # "oldFilePath":Ljava/lang/String;
    .local v21, "oldFilePath":Ljava/lang/String;
    if-eqz v15, :cond_a0

    .line 402
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 403
    .local v15, "values":Landroid/content/ContentValues;
    move-object/from16 v23, v0

    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 404
    .local v0, "beginTime":J
    move-object/from16 v24, v6

    move-object/from16 v25, v7

    const/4 v2, 0x2

    .end local v6    # "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v7    # "oldDB":Landroid/database/sqlite/SQLiteDatabase;
    .local v24, "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .local v25, "oldDB":Landroid/database/sqlite/SQLiteDatabase;
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 405
    .local v6, "endTime":J
    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    .line 406
    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 407
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v15, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 408
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v15, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 409
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 410
    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v15, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 411
    move-object/from16 v2, v24

    .end local v24    # "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .local v2, "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    .end local v0    # "beginTime":J
    .end local v6    # "endTime":J
    .end local v15    # "values":Landroid/content/ContentValues;
    move-object/from16 v1, p0

    move-object v6, v2

    move-object/from16 v5, v19

    move-object/from16 v3, v20

    move-object/from16 v2, v21

    move-object/from16 v0, v23

    move-object/from16 v7, v25

    const/4 v8, 0x1

    const/4 v9, 0x0

    goto :goto_34

    .line 413
    .end local v2    # "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v25    # "oldDB":Landroid/database/sqlite/SQLiteDatabase;
    .local v6, "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v7    # "oldDB":Landroid/database/sqlite/SQLiteDatabase;
    :cond_a0
    move-object/from16 v23, v0

    move-object v2, v6

    move-object/from16 v25, v7

    .end local v6    # "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v7    # "oldDB":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v25    # "oldDB":Landroid/database/sqlite/SQLiteDatabase;
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 414
    invoke-virtual/range {v25 .. v25}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 415
    move-object/from16 v1, p0

    iget-object v0, v1, Lmiui/stepcounter/StepProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/stepcounter/StepProvider$DBHelper;->getInstance(Landroid/content/Context;)Lmiui/stepcounter/StepProvider$DBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/stepcounter/StepProvider$DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 416
    .local v0, "curDB":Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v6, v23

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 417
    .local v6, "curCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_10f

    .line 418
    const-string v7, "mergeDataBaseFromPowerKeeper: need merge"

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :goto_c5
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_10c

    .line 420
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 421
    .local v4, "values":Landroid/content/ContentValues;
    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 422
    .local v15, "beginTime":J
    const/4 v7, 0x2

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 423
    .local v22, "endTime":J
    cmp-long v24, v22, v11

    if-lez v24, :cond_e2

    cmp-long v24, v15, v13

    if-ltz v24, :cond_10b

    .line 424
    :cond_e2
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 425
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 426
    const/4 v7, 0x3

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 427
    const/4 v7, 0x4

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 428
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    .end local v4    # "values":Landroid/content/ContentValues;
    .end local v15    # "beginTime":J
    .end local v22    # "endTime":J
    :cond_10b
    goto :goto_c5

    .line 431
    :cond_10c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 433
    :cond_10f
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 434
    iget-object v3, v1, Lmiui/stepcounter/StepProvider;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lmiui/stepcounter/StepProvider;->restoreStepsLocked(Ljava/util/ArrayList;Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_12f

    .line 435
    new-instance v3, Ljava/io/File;

    move-object/from16 v5, v21

    .end local v21    # "oldFilePath":Ljava/lang/String;
    .local v5, "oldFilePath":Ljava/lang/String;
    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 436
    new-instance v3, Ljava/io/File;

    move-object/from16 v8, v20

    .end local v20    # "oldFileJournalPath":Ljava/lang/String;
    .local v8, "oldFileJournalPath":Ljava/lang/String;
    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_133

    .line 434
    .end local v5    # "oldFilePath":Ljava/lang/String;
    .end local v8    # "oldFileJournalPath":Ljava/lang/String;
    .restart local v20    # "oldFileJournalPath":Ljava/lang/String;
    .restart local v21    # "oldFilePath":Ljava/lang/String;
    :cond_12f
    move-object/from16 v8, v20

    move-object/from16 v5, v21

    .line 438
    .end local v20    # "oldFileJournalPath":Ljava/lang/String;
    .end local v21    # "oldFilePath":Ljava/lang/String;
    .restart local v5    # "oldFilePath":Ljava/lang/String;
    .restart local v8    # "oldFileJournalPath":Ljava/lang/String;
    :goto_133
    return-void

    .line 395
    .end local v0    # "curDB":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "oldFileJournalPath":Ljava/lang/String;
    .end local v10    # "oldCursor":Landroid/database/Cursor;
    .end local v11    # "minBeginTime":J
    .end local v13    # "maxEndTime":J
    .end local v19    # "oldFile":Ljava/io/File;
    .end local v25    # "oldDB":Landroid/database/sqlite/SQLiteDatabase;
    .local v2, "oldFilePath":Ljava/lang/String;
    .restart local v3    # "oldFileJournalPath":Ljava/lang/String;
    .local v5, "oldFile":Ljava/io/File;
    .local v6, "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v7    # "oldDB":Landroid/database/sqlite/SQLiteDatabase;
    :catch_134
    move-exception v0

    move-object v8, v3

    move-object/from16 v19, v5

    move-object/from16 v25, v7

    move-object v5, v2

    move-object v2, v6

    .end local v3    # "oldFileJournalPath":Ljava/lang/String;
    .end local v6    # "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v7    # "oldDB":Landroid/database/sqlite/SQLiteDatabase;
    .local v2, "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .local v5, "oldFilePath":Ljava/lang/String;
    .restart local v8    # "oldFileJournalPath":Ljava/lang/String;
    .restart local v19    # "oldFile":Ljava/io/File;
    .restart local v25    # "oldDB":Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_143

    .end local v8    # "oldFileJournalPath":Ljava/lang/String;
    .end local v19    # "oldFile":Ljava/io/File;
    .end local v25    # "oldDB":Landroid/database/sqlite/SQLiteDatabase;
    .local v2, "oldFilePath":Ljava/lang/String;
    .restart local v3    # "oldFileJournalPath":Ljava/lang/String;
    .local v5, "oldFile":Ljava/io/File;
    .restart local v6    # "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v7    # "oldDB":Landroid/database/sqlite/SQLiteDatabase;
    :catch_13d
    move-exception v0

    move-object v8, v3

    move-object/from16 v19, v5

    move-object v5, v2

    move-object v2, v6

    .line 396
    .end local v3    # "oldFileJournalPath":Ljava/lang/String;
    .end local v6    # "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .local v0, "e":Ljava/lang/Exception;
    .local v2, "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .local v5, "oldFilePath":Ljava/lang/String;
    .restart local v8    # "oldFileJournalPath":Ljava/lang/String;
    .restart local v19    # "oldFile":Ljava/io/File;
    :goto_143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "open database failed\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return-void
.end method

.method public static blacklist restoreStepsLocked(Ljava/util/ArrayList;Landroid/content/Context;)Z
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .line 83
    .local p0, "valuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    sget-object v0, Lmiui/stepcounter/StepProvider;->mRestoreLock:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_3
    invoke-static {p1}, Lmiui/stepcounter/StepProvider$DBHelper;->getInstance(Landroid/content/Context;)Lmiui/stepcounter/StepProvider$DBHelper;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/stepcounter/StepProvider$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b5

    .line 86
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    :try_start_c
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 87
    const-string v3, "DELETE FROM StepsTable"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 88
    const-string v3, "DELETE FROM sqlite_sequence"

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1d
    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_96

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 90
    .local v4, "values":Landroid/content/ContentValues;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .local v5, "sql":Ljava/lang/StringBuilder;
    const-string v6, "INSERT INTO StepsTable ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    if-eqz v4, :cond_40

    invoke-virtual {v4}, Landroid/content/ContentValues;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_40

    .line 94
    invoke-virtual {v4}, Landroid/content/ContentValues;->size()I

    move-result v6

    goto :goto_41

    :cond_40
    move v6, v2

    .line 95
    .local v6, "size":I
    :goto_41
    if-lez v6, :cond_1d

    .line 96
    new-array v7, v6, [Ljava/lang/Object;

    .line 97
    .local v7, "bindArgs":[Ljava/lang/Object;
    const/4 v8, 0x0

    .line 98
    .local v8, "i":I
    invoke-virtual {v4}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_71

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 99
    .local v10, "colName":Ljava/lang/String;
    if-lez v8, :cond_5f

    const-string v11, ","

    goto :goto_61

    :cond_5f
    const-string v11, ""

    :goto_61
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    add-int/lit8 v11, v8, 0x1

    .end local v8    # "i":I
    .local v11, "i":I
    invoke-virtual {v4, v10}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v7, v8

    .line 102
    .end local v10    # "colName":Ljava/lang/String;
    move v8, v11

    goto :goto_4e

    .line 103
    .end local v11    # "i":I
    .restart local v8    # "i":I
    :cond_71
    const/16 v9, 0x29

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    const-string v10, " VALUES ("

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const/4 v8, 0x0

    :goto_7c
    if-ge v8, v6, :cond_8b

    .line 106
    if-lez v8, :cond_83

    const-string v10, ",?"

    goto :goto_85

    :cond_83
    const-string v10, "?"

    :goto_85
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    add-int/lit8 v8, v8, 0x1

    goto :goto_7c

    .line 111
    .end local v8    # "i":I
    :cond_8b
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    .end local v4    # "values":Landroid/content/ContentValues;
    .end local v5    # "sql":Ljava/lang/StringBuilder;
    .end local v6    # "size":I
    .end local v7    # "bindArgs":[Ljava/lang/Object;
    goto :goto_1d

    .line 114
    :cond_96
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_99} :catch_a2
    .catchall {:try_start_c .. :try_end_99} :catchall_a0

    .line 119
    :try_start_99
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 120
    nop

    .line 121
    monitor-exit v0
    :try_end_9e
    .catchall {:try_start_99 .. :try_end_9e} :catchall_b5

    const/4 v0, 0x1

    return v0

    .line 119
    :catchall_a0
    move-exception v2

    goto :goto_b0

    .line 115
    :catch_a2
    move-exception v3

    .line 116
    .local v3, "e":Ljava/lang/Exception;
    :try_start_a3
    const-string v4, "StepProvider"

    const-string v5, "restore failed "

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_aa
    .catchall {:try_start_a3 .. :try_end_aa} :catchall_a0

    .line 117
    nop

    .line 119
    :try_start_ab
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v0

    .line 117
    return v2

    .line 119
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_b0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 120
    nop

    .end local p0    # "valuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local p1    # "context":Landroid/content/Context;
    throw v2

    .line 122
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0    # "valuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local p1    # "context":Landroid/content/Context;
    :catchall_b5
    move-exception v1

    monitor-exit v0
    :try_end_b7
    .catchall {:try_start_ab .. :try_end_b7} :catchall_b5

    throw v1
.end method

.method public static blacklist updateDebug(Z)V
    .registers 1
    .param p0, "enable"    # Z

    .line 496
    sput-boolean p0, Lmiui/stepcounter/StepProvider;->sDEBUG:Z

    .line 497
    return-void
.end method


# virtual methods
.method public whitelist call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "request"    # Ljava/lang/String;
    .param p3, "args"    # Landroid/os/Bundle;

    .line 320
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_39

    .line 321
    sget-boolean v0, Lmiui/stepcounter/StepProvider;->sDEBUG:Z

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call, userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StepProvider"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_26
    invoke-virtual {p0}, Lmiui/stepcounter/StepProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/stepcounter/StepSqlite;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lmiui/stepcounter/StepProvider;->addOwnerUserIdForUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 324
    :cond_39
    const-string v0, "METHOD_GET_ITEM_COUNT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 325
    invoke-direct {p0}, Lmiui/stepcounter/StepProvider;->getItemCount()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 328
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error method call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 229
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "StepProvider"

    if-eqz v0, :cond_37

    .line 230
    sget-boolean v0, Lmiui/stepcounter/StepProvider;->sDEBUG:Z

    if-eqz v0, :cond_26

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete, userId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_26
    invoke-virtual {p0}, Lmiui/stepcounter/StepProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, p1}, Lmiui/stepcounter/StepProvider;->addOwnerUserIdForUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 235
    :cond_37
    const/4 v0, 0x0

    .line 237
    .local v0, "count":I
    :try_start_38
    iget-object v2, p0, Lmiui/stepcounter/StepProvider;->mDbHelper:Lmiui/stepcounter/StepProvider$DBHelper;

    invoke-virtual {v2}, Lmiui/stepcounter/StepProvider$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 238
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lmiui/stepcounter/StepProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3
    :try_end_44
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_38 .. :try_end_44} :catch_ba

    const-string v4, "StepsTable"

    packed-switch v3, :pswitch_data_d6

    .line 251
    :try_start_49
    new-instance v3, Ljava/lang/IllegalArgumentException;

    goto :goto_a3

    .line 244
    :pswitch_4c
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 245
    .local v3, "id":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 246
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_86

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " and ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x29

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_88

    :cond_86
    const-string v6, ""

    :goto_88
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 245
    invoke-virtual {v2, v4, v5, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    move v0, v4

    .line 248
    goto :goto_9c

    .line 240
    .end local v3    # "id":Ljava/lang/String;
    :pswitch_96
    invoke-virtual {v2, v4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move v0, v3

    .line 241
    nop

    .line 254
    :goto_9c
    iget-object v3, p0, Lmiui/stepcounter/StepProvider;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 257
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_d5

    .line 251
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_a3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error Uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "count":I
    .end local p0    # "this":Lmiui/stepcounter/StepProvider;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "selection":Ljava/lang/String;
    .end local p3    # "selectionArgs":[Ljava/lang/String;
    throw v3
    :try_end_ba
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_49 .. :try_end_ba} :catch_ba

    .line 255
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v0    # "count":I
    .restart local p0    # "this":Lmiui/stepcounter/StepProvider;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "selection":Ljava/lang/String;
    .restart local p3    # "selectionArgs":[Ljava/lang/String;
    :catch_ba
    move-exception v2

    .line 256
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteException e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_d5
    return v0

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_96
        :pswitch_4c
    .end packed-switch
.end method

.method public whitelist getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;

    .line 150
    sget-object v0, Lmiui/stepcounter/StepProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_28

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :pswitch_22
    const-string v0, "vnd.android.cursor.item/vnd.com.miui.steps"

    return-object v0

    .line 153
    :pswitch_25
    const-string v0, "vnd.android.cursor.dir/vnd.com.miui.steps"

    return-object v0

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_25
        :pswitch_22
        :pswitch_22
        :pswitch_25
    .end packed-switch
.end method

.method public whitelist insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 164
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "StepProvider"

    if-eqz v0, :cond_37

    .line 165
    sget-boolean v0, Lmiui/stepcounter/StepProvider;->sDEBUG:Z

    if-eqz v0, :cond_26

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert, userId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_26
    invoke-virtual {p0}, Lmiui/stepcounter/StepProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, p1}, Lmiui/stepcounter/StepProvider;->addOwnerUserIdForUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 170
    :cond_37
    sget-object v0, Lmiui/stepcounter/StepProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a0

    .line 173
    const/4 v0, 0x0

    .line 175
    .local v0, "newUri":Landroid/net/Uri;
    :try_start_41
    iget-object v2, p0, Lmiui/stepcounter/StepProvider;->mDbHelper:Lmiui/stepcounter/StepProvider$DBHelper;

    invoke-virtual {v2}, Lmiui/stepcounter/StepProvider$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 177
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "StepsTable"

    const-string v4, "_id"

    invoke-virtual {v2, v3, v4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 178
    .local v3, "id":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_61

    .line 182
    invoke-static {p1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    move-object v0, v5

    .line 183
    iget-object v5, p0, Lmiui/stepcounter/StepProvider;->mResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 186
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "id":J
    goto :goto_9f

    .line 179
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3    # "id":J
    :cond_61
    new-instance v5, Landroid/database/sqlite/SQLiteException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to insert "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "newUri":Landroid/net/Uri;
    .end local p0    # "this":Lmiui/stepcounter/StepProvider;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "values":Landroid/content/ContentValues;
    throw v5
    :try_end_84
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_41 .. :try_end_84} :catch_84

    .line 184
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "id":J
    .restart local v0    # "newUri":Landroid/net/Uri;
    .restart local p0    # "this":Lmiui/stepcounter/StepProvider;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "values":Landroid/content/ContentValues;
    :catch_84
    move-exception v2

    .line 185
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteException e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_9f
    return-object v0

    .line 171
    .end local v0    # "newUri":Landroid/net/Uri;
    :cond_a0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onCreate()Z
    .registers 4

    .line 127
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "StepProvider"

    if-nez v0, :cond_36

    .line 128
    invoke-virtual {p0}, Lmiui/stepcounter/StepProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmiui/stepcounter/StepProvider;->mContext:Landroid/content/Context;

    .line 129
    invoke-static {v0}, Lmiui/stepcounter/StepProvider$DBHelper;->getInstance(Landroid/content/Context;)Lmiui/stepcounter/StepProvider$DBHelper;

    move-result-object v0

    iput-object v0, p0, Lmiui/stepcounter/StepProvider;->mDbHelper:Lmiui/stepcounter/StepProvider$DBHelper;

    .line 130
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lmiui/stepcounter/StepProvider$1;

    invoke-direct {v2, p0}, Lmiui/stepcounter/StepProvider$1;-><init>(Lmiui/stepcounter/StepProvider;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 135
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 136
    iget-object v0, p0, Lmiui/stepcounter/StepProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lmiui/stepcounter/StepProvider;->mResolver:Landroid/content/ContentResolver;

    .line 137
    new-instance v0, Lmiui/stepcounter/StepProvider$Injector;

    invoke-direct {v0}, Lmiui/stepcounter/StepProvider$Injector;-><init>()V

    iput-object v0, p0, Lmiui/stepcounter/StepProvider;->mInjector:Lmiui/stepcounter/StepProvider$Injector;

    .line 139
    const-string v0, "StepProvider Create"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    .line 141
    :cond_36
    sget-boolean v0, Lmiui/stepcounter/StepProvider;->sDEBUG:Z

    if-eqz v0, :cond_54

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate, userId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_54
    :goto_54
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 22
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 265
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    if-eqz v2, :cond_12

    const-string v3, "_begin_time >= ? AND _end_time <= ? AND (_mode = 2 OR _mode = 3)"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 266
    const-string v2, "_begin_time >= ? AND _end_time <= ? AND (_mode = 2 OR _mode = 3 OR _mode = 4)"

    .line 268
    .end local p3    # "selection":Ljava/lang/String;
    .local v2, "selection":Ljava/lang/String;
    :cond_12
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const-string v12, "StepProvider"

    if-eqz v3, :cond_50

    .line 269
    sget-boolean v3, Lmiui/stepcounter/StepProvider;->sDEBUG:Z

    if-eqz v3, :cond_38

    .line 270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query, userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_38
    invoke-virtual/range {p0 .. p0}, Lmiui/stepcounter/StepProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct/range {p0 .. p1}, Lmiui/stepcounter/StepProvider;->addOwnerUserIdForUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v5, p2

    move-object v6, v2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    return-object v3

    .line 274
    :cond_50
    iget-object v3, v0, Lmiui/stepcounter/StepProvider;->mInjector:Lmiui/stepcounter/StepProvider$Injector;

    invoke-static {v3}, Lmiui/stepcounter/StepProvider$Injector;->-$$Nest$mhaveStepSensor(Lmiui/stepcounter/StepProvider$Injector;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_74

    .line 275
    sget-object v3, Lmiui/stepcounter/StepProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/4 v5, 0x4

    if-ne v3, v5, :cond_68

    .line 276
    iget-object v3, v0, Lmiui/stepcounter/StepProvider;->mInjector:Lmiui/stepcounter/StepProvider$Injector;

    invoke-static {v3, v4}, Lmiui/stepcounter/StepProvider$Injector;->-$$Nest$mgetLatestData(Lmiui/stepcounter/StepProvider$Injector;Z)V

    goto :goto_74

    .line 277
    :cond_68
    invoke-direct/range {p0 .. p0}, Lmiui/stepcounter/StepProvider;->canInsertSqlite()Z

    move-result v3

    if-eqz v3, :cond_74

    .line 278
    iget-object v3, v0, Lmiui/stepcounter/StepProvider;->mInjector:Lmiui/stepcounter/StepProvider$Injector;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lmiui/stepcounter/StepProvider$Injector;->-$$Nest$mgetLatestData(Lmiui/stepcounter/StepProvider$Injector;Z)V

    .line 281
    :cond_74
    :goto_74
    iget-object v3, v0, Lmiui/stepcounter/StepProvider;->mDbHelper:Lmiui/stepcounter/StepProvider$DBHelper;

    invoke-virtual {v3}, Lmiui/stepcounter/StepProvider$DBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    .line 282
    .local v13, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    move-object v14, v3

    .line 283
    .local v14, "sqlBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v3, 0x0

    .line 285
    .local v3, "limit":Ljava/lang/String;
    sget-object v5, Lmiui/stepcounter/StepProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const-string v6, "StepsTable"

    packed-switch v5, :pswitch_data_124

    .line 307
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error Uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 300
    :pswitch_a5
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 301
    .local v4, "pos":Ljava/lang/String;
    invoke-virtual {v14, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 302
    sget-object v5, Lmiui/stepcounter/StepProvider;->sStepsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v14, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 303
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", 1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 304
    move-object v15, v3

    goto :goto_ff

    .line 293
    .end local v4    # "pos":Ljava/lang/String;
    :pswitch_cc
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 294
    .local v4, "id":Ljava/lang/String;
    invoke-virtual {v14, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 295
    sget-object v5, Lmiui/stepcounter/StepProvider;->sStepsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v14, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 296
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 297
    goto :goto_fe

    .line 288
    .end local v4    # "id":Ljava/lang/String;
    :pswitch_f5
    invoke-virtual {v14, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 289
    sget-object v4, Lmiui/stepcounter/StepProvider;->sStepsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v14, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 290
    nop

    .line 310
    :goto_fe
    move-object v15, v3

    .end local v3    # "limit":Ljava/lang/String;
    .local v15, "limit":Ljava/lang/String;
    :goto_ff
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 311
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10b

    const-string v3, "_id asc"

    move-object v10, v3

    goto :goto_10d

    :cond_10b
    move-object/from16 v10, p5

    .line 310
    :goto_10d
    move-object v3, v14

    move-object v4, v13

    move-object/from16 v5, p2

    move-object v6, v2

    move-object/from16 v7, p4

    move-object v11, v15

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 312
    .local v3, "cursor":Landroid/database/Cursor;
    iget-object v4, v0, Lmiui/stepcounter/StepProvider;->mResolver:Landroid/content/ContentResolver;

    invoke-interface {v3, v4, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 314
    const-string v4, "StepProvider Query"

    invoke-static {v12, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-object v3

    :pswitch_data_124
    .packed-switch 0x1
        :pswitch_f5
        :pswitch_cc
        :pswitch_a5
        :pswitch_f5
    .end packed-switch
.end method

.method public whitelist update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 192
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "StepProvider"

    if-eqz v0, :cond_37

    .line 193
    sget-boolean v0, Lmiui/stepcounter/StepProvider;->sDEBUG:Z

    if-eqz v0, :cond_26

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update, userId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_26
    invoke-virtual {p0}, Lmiui/stepcounter/StepProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, p1}, Lmiui/stepcounter/StepProvider;->addOwnerUserIdForUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 198
    :cond_37
    const/4 v0, 0x0

    .line 200
    .local v0, "count":I
    :try_start_38
    iget-object v2, p0, Lmiui/stepcounter/StepProvider;->mDbHelper:Lmiui/stepcounter/StepProvider$DBHelper;

    invoke-virtual {v2}, Lmiui/stepcounter/StepProvider$DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 201
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lmiui/stepcounter/StepProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3
    :try_end_44
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_38 .. :try_end_44} :catch_d6

    const-string v4, "StepsTable"

    packed-switch v3, :pswitch_data_f2

    .line 216
    :try_start_49
    new-instance v3, Ljava/lang/IllegalArgumentException;

    goto/16 :goto_bf

    .line 208
    :pswitch_4d
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 209
    .local v3, "id":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 210
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_87

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " and ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x29

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_89

    :cond_87
    const-string v6, ""

    :goto_89
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 209
    invoke-virtual {v2, v4, p2, v5, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    move v0, v4

    .line 212
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update Steps.ITEM_ID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    goto :goto_b8

    .line 203
    .end local v3    # "id":Ljava/lang/String;
    :pswitch_ad
    invoke-virtual {v2, v4, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move v0, v3

    .line 204
    const-string v3, "update Steps.ITEM"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    nop

    .line 219
    :goto_b8
    iget-object v3, p0, Lmiui/stepcounter/StepProvider;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 222
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_f1

    .line 216
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_bf
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error Uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "count":I
    .end local p0    # "this":Lmiui/stepcounter/StepProvider;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "values":Landroid/content/ContentValues;
    .end local p3    # "selection":Ljava/lang/String;
    .end local p4    # "selectionArgs":[Ljava/lang/String;
    throw v3
    :try_end_d6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_49 .. :try_end_d6} :catch_d6

    .line 220
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v0    # "count":I
    .restart local p0    # "this":Lmiui/stepcounter/StepProvider;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "values":Landroid/content/ContentValues;
    .restart local p3    # "selection":Ljava/lang/String;
    .restart local p4    # "selectionArgs":[Ljava/lang/String;
    :catch_d6
    move-exception v2

    .line 221
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLiteException e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_f1
    return v0

    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_ad
        :pswitch_4d
    .end packed-switch
.end method
