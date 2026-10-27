.class public Lcom/android/server/appop/AppOpHistoryDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AppOpHistoryDbHelper.java"


# instance fields
.field public final mAggregationTimeWindow:Lcom/android/server/appop/HistoricalRegistry$AggregationTimeWindow;

.field public final mDatabaseFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Lcom/android/server/appop/HistoricalRegistry$AggregationTimeWindow;I)V
    .registers 11

    .line 58
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/android/server/appop/AppOpHistoryDbHelper$AppOpHistoryDatabaseErrorHandler;

    invoke-direct {v5}, Lcom/android/server/appop/AppOpHistoryDbHelper$AppOpHistoryDatabaseErrorHandler;-><init>()V

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    .line 60
    iput-object p2, v0, Lcom/android/server/appop/AppOpHistoryDbHelper;->mDatabaseFile:Ljava/io/File;

    .line 61
    iput-object p3, v0, Lcom/android/server/appop/AppOpHistoryDbHelper;->mAggregationTimeWindow:Lcom/android/server/appop/HistoricalRegistry$AggregationTimeWindow;

    .line 62
    invoke-static {}, Lcom/android/server/appop/AppOpHistoryDbHelper;->getDatabaseOpenParams()Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteOpenHelper;->setOpenParams(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)V

    return-void
.end method

.method public static getDatabaseOpenParams()Landroid/database/sqlite/SQLiteDatabase$OpenParams;
    .registers 2

    .line 66
    new-instance v0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;-><init>()V

    const/high16 v1, 0x20000000

    .line 67
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->addOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->build()Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final bindTextOrNull(Landroid/database/sqlite/SQLiteRawStatement;ILjava/lang/String;)V
    .registers 4

    if-nez p3, :cond_6

    .line 336
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteRawStatement;->bindNull(I)V

    return-void

    .line 338
    :cond_6
    invoke-virtual {p1, p2, p3}, Landroid/database/sqlite/SQLiteRawStatement;->bindText(ILjava/lang/String;)V

    return-void
.end method

.method public execSQL(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 343
    invoke-virtual {p0, p1, v0}, Lcom/android/server/appop/AppOpHistoryDbHelper;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .line 350
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    if-nez p2, :cond_a

    .line 352
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    .line 354
    :cond_a
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getAppOpHistory()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/appop/AggregatedAppOpAccessEvent;",
            ">;"
        }
    .end annotation

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 319
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 320
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionReadOnly()V

    .line 321
    :try_start_c
    const-string v2, "SELECT uid,package_name,device_id,op_code,attribution_tag,uid_state,op_flags,attribution_flags,chain_id,access_time,access_duration,total_duration,access_count,reject_count FROM app_op_accesses"

    .line 322
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->createRawStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteRawStatement;

    move-result-object v2
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_2c

    .line 323
    :goto_12
    :try_start_12
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteRawStatement;->step()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 324
    invoke-virtual {p0, v2}, Lcom/android/server/appop/AppOpHistoryDbHelper;->readFromStatement(Landroid/database/sqlite/SQLiteRawStatement;)Lcom/android/server/appop/AggregatedAppOpAccessEvent;

    move-result-object v3

    .line 325
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :catchall_20
    move-exception p0

    goto :goto_2e

    .line 327
    :cond_22
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_20

    .line 328
    :try_start_25
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteRawStatement;->close()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_2c

    .line 329
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v0

    :catchall_2c
    move-exception p0

    goto :goto_39

    :goto_2e
    if-eqz v2, :cond_38

    .line 321
    :try_start_30
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteRawStatement;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_38

    :catchall_34
    move-exception v0

    :try_start_35
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_38
    :goto_38
    throw p0
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_2c

    .line 329
    :goto_39
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 330
    throw p0
.end method

.method public getAppOpHistory(IJJILjava/lang/String;Ljava/lang/String;Landroid/util/IntArray;IILjava/lang/String;Z)Ljava/util/List;
    .registers 27

    .line 186
    const-string v1, "AppOpHistoryDbHelper"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v7, p1

    move-wide v3, p2

    move-wide/from16 v5, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    .line 188
    invoke-static/range {v3 .. v12}, Lcom/android/server/appop/AppOpHistoryQueryHelper;->prepareConditions(JJIILjava/lang/String;Ljava/lang/String;Landroid/util/IntArray;I)Ljava/util/List;

    move-result-object p1

    .line 191
    const-string v0, "SELECT uid,package_name,device_id,op_code,attribution_tag,uid_state,op_flags,attribution_flags,chain_id,access_time,access_duration,total_duration,access_count,reject_count FROM app_op_accesses"

    move/from16 v3, p11

    move-object/from16 v4, p12

    move/from16 v5, p13

    invoke-static {v0, p1, v4, v5, v3}, Lcom/android/server/appop/AppOpHistoryQueryHelper;->buildSqlQuery(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 196
    :try_start_29
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 197
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionReadOnly()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_30} :catch_78
    .catchall {:try_start_29 .. :try_end_30} :catchall_75

    .line 198
    :try_start_30
    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->createRawStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteRawStatement;

    move-result-object v6
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_7b

    .line 199
    :try_start_34
    invoke-static {v6, p1}, Lcom/android/server/appop/AppOpHistoryQueryHelper;->bindValues(Landroid/database/sqlite/SQLiteRawStatement;Ljava/util/List;)V

    .line 201
    :goto_37
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteRawStatement;->step()Z

    move-result p1

    if-eqz p1, :cond_48

    .line 202
    invoke-virtual {p0, v6}, Lcom/android/server/appop/AppOpHistoryDbHelper;->readFromStatement(Landroid/database/sqlite/SQLiteRawStatement;)Lcom/android/server/appop/AggregatedAppOpAccessEvent;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_37

    :catchall_45
    move-exception v0

    move-object p1, v0

    goto :goto_7e

    .line 204
    :cond_48
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4b
    .catchall {:try_start_34 .. :try_end_4b} :catchall_45

    .line 205
    :try_start_4b
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteRawStatement;->close()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_7b

    .line 206
    :try_start_4e
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_78
    .catchall {:try_start_4e .. :try_end_51} :catchall_75

    .line 211
    :goto_51
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 212
    iget-object p1, p0, Lcom/android/server/appop/AppOpHistoryDbHelper;->mDatabaseFile:Ljava/io/File;

    .line 214
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-object p1, p0, Lcom/android/server/appop/AppOpHistoryDbHelper;->mAggregationTimeWindow:Lcom/android/server/appop/HistoricalRegistry$AggregationTimeWindow;

    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpHistoryDbHelper;->getDatabaseType(Lcom/android/server/appop/HistoricalRegistry$AggregationTimeWindow;)I

    move-result p1

    const/4 v0, 0x0

    const/16 v7, 0x44a

    const-wide/16 v8, -0x1

    move/from16 p8, p1

    move/from16 p9, v0

    move-wide/from16 p6, v3

    move-wide p2, v5

    move p1, v7

    move-wide/from16 p4, v8

    .line 212
    invoke-static/range {p1 .. p9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJJJII)V

    goto :goto_a8

    :catchall_75
    move-exception v0

    move-object p1, v0

    goto :goto_cf

    :catch_78
    move-exception v0

    move-object p1, v0

    goto :goto_8d

    :catchall_7b
    move-exception v0

    move-object p1, v0

    goto :goto_89

    :goto_7e
    if-eqz v6, :cond_88

    .line 198
    :try_start_80
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteRawStatement;->close()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_84

    goto :goto_88

    :catchall_84
    move-exception v0

    :try_start_85
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_88
    :goto_88
    throw p1
    :try_end_89
    .catchall {:try_start_85 .. :try_end_89} :catchall_7b

    .line 206
    :goto_89
    :try_start_89
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 207
    throw p1
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8d} :catch_78
    .catchall {:try_start_89 .. :try_end_8d} :catchall_75

    .line 209
    :goto_8d
    :try_start_8d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t read app op records from "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/appop/AppOpHistoryDbHelper;->mDatabaseFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a7
    .catchall {:try_start_8d .. :try_end_a7} :catchall_75

    goto :goto_51

    .line 217
    :goto_a8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Read "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " records from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/appop/AppOpHistoryDbHelper;->mDatabaseFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 211
    :goto_cf
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v3

    .line 212
    iget-object v2, p0, Lcom/android/server/appop/AppOpHistoryDbHelper;->mDatabaseFile:Ljava/io/File;

    .line 214
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/appop/AppOpHistoryDbHelper;->mAggregationTimeWindow:Lcom/android/server/appop/HistoricalRegistry$AggregationTimeWindow;

    invoke-virtual {p0, v4}, Lcom/android/server/appop/AppOpHistoryDbHelper;->getDatabaseType(Lcom/android/server/appop/HistoricalRegistry$AggregationTimeWindow;)I

    move-result p0

    const/4 v4, 0x0

    const/16 v5, 0x44a

    const-wide/16 v6, -0x1

    move/from16 p9, p0

    move-wide/from16 p3, v0

    move-wide/from16 p7, v2

    move/from16 p10, v4

    move p2, v5

    move-wide/from16 p5, v6

    .line 212
    invoke-static/range {p2 .. p10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJJJII)V

    .line 216
    throw p1
.end method

.method public final getDatabaseType(Lcom/android/server/appop/HistoricalRegistry$AggregationTimeWindow;)I
    .registers 2

    .line 174
    sget-object p0, Lcom/android/server/appop/HistoricalRegistry$AggregationTimeWindow;->SHORT:Lcom/android/server/appop/HistoricalRegistry$AggregationTimeWindow;

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x2

    return p0
.end method

.method public final getDeviceIdForDatabaseRead(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    if-nez p1, :cond_5

    .line 170
    const-string p0, "default:0"

    return-object p0

    :cond_5
    return-object p1
.end method

.method public final getDeviceIdForDatabaseWrite(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 162
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string p0, "default:0"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    const/4 p0, 0x0

    return-object p0

    :cond_d
    return-object p1
.end method

.method public getLargestAttributionChainId()J
    .registers 8

    const-wide/16 v0, 0x0

    .line 227
    :try_start_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 228
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionReadOnly()V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_9} :catch_2d

    .line 229
    :try_start_9
    const-string v3, "SELECT MAX(chain_id) FROM app_op_accesses"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->createRawStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteRawStatement;

    move-result-object v3
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_2f

    .line 231
    :try_start_f
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteRawStatement;->step()Z

    move-result v4

    if-eqz v4, :cond_23

    const/4 v4, 0x0

    .line 232
    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnLong(I)J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-gez v6, :cond_1f

    goto :goto_23

    :cond_1f
    move-wide v0, v4

    goto :goto_23

    :catchall_21
    move-exception v4

    goto :goto_31

    .line 237
    :cond_23
    :goto_23
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_21

    .line 238
    :try_start_26
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteRawStatement;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2f

    .line 239
    :try_start_29
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_29 .. :try_end_2c} :catch_2d

    return-wide v0

    :catch_2d
    move-exception v2

    goto :goto_40

    :catchall_2f
    move-exception v3

    goto :goto_3c

    :goto_31
    if-eqz v3, :cond_3b

    .line 229
    :try_start_33
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteRawStatement;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_3b

    :catchall_37
    move-exception v3

    :try_start_38
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3b
    :goto_3b
    throw v4
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_2f

    .line 239
    :goto_3c
    :try_start_3c
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 240
    throw v3
    :try_end_40
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3c .. :try_end_40} :catch_2d

    .line 242
    :goto_40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading chain id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/appop/AppOpHistoryDbHelper;->mDatabaseFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "AppOpHistoryDbHelper"

    invoke-static {v3, p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v0
.end method

.method public getRecentlyUsedPackageNames([Ljava/lang/String;IJJI)Landroid/util/ArraySet;
    .registers 26

    move-object/from16 v1, p0

    .line 271
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v0, p1

    move/from16 v7, p2

    .line 272
    invoke-static {v7, v0}, Lcom/android/server/appop/AppOpHistoryQueryHelper;->getAppOpCodes(I[Ljava/lang/String;)Landroid/util/IntArray;

    move-result-object v11

    if-eqz v11, :cond_124

    .line 273
    invoke-virtual {v11}, Landroid/util/IntArray;->size()I

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_124

    :cond_19
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, -0x1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move/from16 v12, p7

    .line 278
    invoke-static/range {v3 .. v12}, Lcom/android/server/appop/AppOpHistoryQueryHelper;->prepareConditions(JJIILjava/lang/String;Ljava/lang/String;Landroid/util/IntArray;I)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 282
    const-string v5, "SELECT DISTINCT package_name FROM app_op_accesses"

    const/4 v6, 0x0

    invoke-static {v5, v0, v3, v6, v4}, Lcom/android/server/appop/AppOpHistoryQueryHelper;->buildSqlQuery(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v3

    .line 284
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRecentlyUsedPackageNames sql: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AppOpHistoryDbHelper"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 286
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AppOpHistoryDbHelper_"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/appop/AppOpHistoryDbHelper;->mAggregationTimeWindow:Lcom/android/server/appop/HistoricalRegistry$AggregationTimeWindow;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "_Read2"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/32 v9, 0x80000

    invoke-static {v9, v10, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 289
    :try_start_67
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 290
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionReadOnly()V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6e} :catch_b0
    .catchall {:try_start_67 .. :try_end_6e} :catchall_ae

    .line 291
    :try_start_6e
    invoke-virtual {v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->createRawStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteRawStatement;

    move-result-object v3
    :try_end_72
    .catchall {:try_start_6e .. :try_end_72} :catchall_b2

    .line 292
    :try_start_72
    invoke-static {v3, v0}, Lcom/android/server/appop/AppOpHistoryQueryHelper;->bindValues(Landroid/database/sqlite/SQLiteRawStatement;Ljava/util/List;)V

    .line 293
    :goto_75
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteRawStatement;->step()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 294
    invoke-virtual {v3, v6}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_75

    :catchall_83
    move-exception v0

    move-object v6, v0

    goto :goto_b4

    .line 296
    :cond_86
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_89
    .catchall {:try_start_72 .. :try_end_89} :catchall_83

    .line 297
    :try_start_89
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteRawStatement;->close()V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_b2

    .line 298
    :try_start_8c
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_8f} :catch_b0
    .catchall {:try_start_8c .. :try_end_8f} :catchall_ae

    .line 304
    :goto_8f
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 305
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v10, v3, v7

    .line 306
    iget-object v0, v1, Lcom/android/server/appop/AppOpHistoryDbHelper;->mDatabaseFile:Ljava/io/File;

    .line 308
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v14

    iget-object v0, v1, Lcom/android/server/appop/AppOpHistoryDbHelper;->mAggregationTimeWindow:Lcom/android/server/appop/HistoricalRegistry$AggregationTimeWindow;

    invoke-virtual {v1, v0}, Lcom/android/server/appop/AppOpHistoryDbHelper;->getDatabaseType(Lcom/android/server/appop/HistoricalRegistry$AggregationTimeWindow;)I

    move-result v16

    const/16 v17, 0x0

    const/16 v9, 0x44a

    const-wide/16 v12, -0x1

    .line 306
    invoke-static/range {v9 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJJJII)V

    goto :goto_de

    :catchall_ae
    move-exception v0

    goto :goto_105

    :catch_b0
    move-exception v0

    goto :goto_c3

    :catchall_b2
    move-exception v0

    goto :goto_bf

    :goto_b4
    if-eqz v3, :cond_be

    .line 291
    :try_start_b6
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteRawStatement;->close()V
    :try_end_b9
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_ba

    goto :goto_be

    :catchall_ba
    move-exception v0

    :try_start_bb
    invoke-virtual {v6, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_be
    :goto_be
    throw v6
    :try_end_bf
    .catchall {:try_start_bb .. :try_end_bf} :catchall_b2

    .line 298
    :goto_bf
    :try_start_bf
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 299
    throw v0
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_c3} :catch_b0
    .catchall {:try_start_bf .. :try_end_c3} :catchall_ae

    .line 301
    :goto_c3
    :try_start_c3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading recently used packages from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/appop/AppOpHistoryDbHelper;->mDatabaseFile:Ljava/io/File;

    .line 302
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 301
    invoke-static {v5, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_dd
    .catchall {:try_start_c3 .. :try_end_dd} :catchall_ae

    goto :goto_8f

    .line 311
    :goto_de
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " packages from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/appop/AppOpHistoryDbHelper;->mDatabaseFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 304
    :goto_105
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 305
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v10, v2, v7

    .line 306
    iget-object v2, v1, Lcom/android/server/appop/AppOpHistoryDbHelper;->mDatabaseFile:Ljava/io/File;

    .line 308
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v14

    iget-object v2, v1, Lcom/android/server/appop/AppOpHistoryDbHelper;->mAggregationTimeWindow:Lcom/android/server/appop/HistoricalRegistry$AggregationTimeWindow;

    invoke-virtual {v1, v2}, Lcom/android/server/appop/AppOpHistoryDbHelper;->getDatabaseType(Lcom/android/server/appop/HistoricalRegistry$AggregationTimeWindow;)I

    move-result v16

    const/16 v17, 0x0

    const/16 v9, 0x44a

    const-wide/16 v12, -0x1

    .line 306
    invoke-static/range {v9 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJJJII)V

    .line 310
    throw v0

    :cond_124
    :goto_124
    return-object v2
.end method

.method public getTotalRecordsCount()J
    .registers 6

    const-wide/16 v0, 0x0

    .line 250
    :try_start_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 251
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionReadOnly()V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_9} :catch_27

    .line 252
    :try_start_9
    const-string v3, "SELECT COUNT(1) FROM app_op_accesses"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->createRawStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteRawStatement;

    move-result-object v3
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_29

    .line 254
    :try_start_f
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteRawStatement;->step()Z

    move-result v4

    if-eqz v4, :cond_1d

    const/4 v4, 0x0

    .line 255
    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnLong(I)J

    move-result-wide v0

    goto :goto_1d

    :catchall_1b
    move-exception v4

    goto :goto_2b

    .line 257
    :cond_1d
    :goto_1d
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_20
    .catchall {:try_start_f .. :try_end_20} :catchall_1b

    .line 258
    :try_start_20
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteRawStatement;->close()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_29

    .line 259
    :try_start_23
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_26
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_23 .. :try_end_26} :catch_27

    return-wide v0

    :catch_27
    move-exception v2

    goto :goto_3a

    :catchall_29
    move-exception v3

    goto :goto_36

    :goto_2b
    if-eqz v3, :cond_35

    .line 252
    :try_start_2d
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteRawStatement;->close()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_35

    :catchall_31
    move-exception v3

    :try_start_32
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_35
    :goto_35
    throw v4
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_29

    .line 259
    :goto_36
    :try_start_36
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 260
    throw v3
    :try_end_3a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_36 .. :try_end_3a} :catch_27

    .line 262
    :goto_3a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading records count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/appop/AppOpHistoryDbHelper;->mDatabaseFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v3, "AppOpHistoryDbHelper"

    invoke-static {v3, p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v0
.end method

.method public insertAppOpHistory(Ljava/util/List;I)V
    .registers 27

    move-object/from16 v1, p0

    .line 91
    const-string v2, ", file size (bytes) : "

    const-string v3, "Couldn\'t commit transaction inserting app ops, database"

    const-string v4, "AppOpHistoryDbHelper"

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_1ca

    .line 94
    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AppOpHistoryDbHelper_"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/appop/AppOpHistoryDbHelper;->mAggregationTimeWindow:Lcom/android/server/appop/HistoricalRegistry$AggregationTimeWindow;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "_Write"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v7, 0x80000

    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 98
    :try_start_32
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 99
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_39} :catch_116
    .catchall {:try_start_32 .. :try_end_39} :catchall_113

    .line 100
    :try_start_39
    const-string v0, "INSERT INTO app_op_accesses(uid, package_name, device_id, op_code, attribution_tag, uid_state, op_flags, attribution_flags, chain_id, access_time, access_duration, total_duration, access_count, reject_count ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {v9, v0}, Landroid/database/sqlite/SQLiteDatabase;->createRawStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteRawStatement;

    move-result-object v10
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_10c

    .line 102
    :try_start_3f
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_43
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_103

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/appop/AggregatedAppOpAccessEvent;
    :try_end_50
    .catchall {:try_start_3f .. :try_end_50} :catchall_d5

    .line 104
    :try_start_50
    invoke-virtual {v12}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->uid()I

    move-result v0

    const/4 v13, 0x1

    invoke-virtual {v10, v13, v0}, Landroid/database/sqlite/SQLiteRawStatement;->bindInt(II)V

    .line 106
    invoke-virtual {v12}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->packageName()Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x2

    .line 105
    invoke-virtual {v1, v10, v13, v0}, Lcom/android/server/appop/AppOpHistoryDbHelper;->bindTextOrNull(Landroid/database/sqlite/SQLiteRawStatement;ILjava/lang/String;)V

    .line 108
    invoke-virtual {v12}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->deviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/appop/AppOpHistoryDbHelper;->getDeviceIdForDatabaseWrite(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x3

    .line 107
    invoke-virtual {v1, v10, v13, v0}, Lcom/android/server/appop/AppOpHistoryDbHelper;->bindTextOrNull(Landroid/database/sqlite/SQLiteRawStatement;ILjava/lang/String;)V

    .line 109
    invoke-virtual {v12}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->opCode()I

    move-result v0

    const/4 v13, 0x4

    invoke-virtual {v10, v13, v0}, Landroid/database/sqlite/SQLiteRawStatement;->bindInt(II)V

    .line 111
    invoke-virtual {v12}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionTag()Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x5

    .line 110
    invoke-virtual {v1, v10, v13, v0}, Lcom/android/server/appop/AppOpHistoryDbHelper;->bindTextOrNull(Landroid/database/sqlite/SQLiteRawStatement;ILjava/lang/String;)V

    .line 113
    invoke-virtual {v12}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->uidState()I

    move-result v0

    const/4 v13, 0x6

    .line 112
    invoke-virtual {v10, v13, v0}, Landroid/database/sqlite/SQLiteRawStatement;->bindInt(II)V

    .line 115
    invoke-virtual {v12}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->opFlags()I

    move-result v0

    const/4 v13, 0x7

    .line 114
    invoke-virtual {v10, v13, v0}, Landroid/database/sqlite/SQLiteRawStatement;->bindInt(II)V

    .line 117
    invoke-virtual {v12}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionFlags()I

    move-result v0

    int-to-long v13, v0

    const/16 v0, 0x8

    .line 116
    invoke-virtual {v10, v0, v13, v14}, Landroid/database/sqlite/SQLiteRawStatement;->bindLong(IJ)V

    .line 119
    invoke-virtual {v12}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->attributionChainId()J

    move-result-wide v13

    const/16 v0, 0x9

    .line 118
    invoke-virtual {v10, v0, v13, v14}, Landroid/database/sqlite/SQLiteRawStatement;->bindLong(IJ)V

    .line 121
    invoke-virtual {v12}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->accessTimeMillis()J

    move-result-wide v13

    const/16 v0, 0xa

    .line 120
    invoke-virtual {v10, v0, v13, v14}, Landroid/database/sqlite/SQLiteRawStatement;->bindLong(IJ)V

    .line 123
    invoke-virtual {v12}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->durationMillis()J

    move-result-wide v13

    const/16 v0, 0xb

    .line 122
    invoke-virtual {v10, v0, v13, v14}, Landroid/database/sqlite/SQLiteRawStatement;->bindLong(IJ)V

    .line 126
    invoke-virtual {v12}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->totalDurationMillis()J

    move-result-wide v13

    const/16 v0, 0xc

    .line 124
    invoke-virtual {v10, v0, v13, v14}, Landroid/database/sqlite/SQLiteRawStatement;->bindLong(IJ)V

    .line 128
    invoke-virtual {v12}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->totalAccessCount()I

    move-result v0

    const/16 v13, 0xd

    .line 127
    invoke-virtual {v10, v13, v0}, Landroid/database/sqlite/SQLiteRawStatement;->bindInt(II)V

    .line 130
    invoke-virtual {v12}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;->totalRejectCount()I

    move-result v0

    int-to-long v13, v0

    const/16 v0, 0xe

    .line 129
    invoke-virtual {v10, v0, v13, v14}, Landroid/database/sqlite/SQLiteRawStatement;->bindLong(IJ)V

    .line 131
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteRawStatement;->step()Z
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_d0} :catch_db
    .catchall {:try_start_50 .. :try_end_d0} :catchall_d9

    .line 136
    :goto_d0
    :try_start_d0
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteRawStatement;->reset()V
    :try_end_d3
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_d5

    goto/16 :goto_43

    :catchall_d5
    move-exception v0

    move-object v11, v0

    goto/16 :goto_15d

    :catchall_d9
    move-exception v0

    goto :goto_ff

    :catch_db
    move-exception v0

    .line 133
    :try_start_dc
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Couldn\'t insert app op event: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ", database "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/appop/AppOpHistoryDbHelper;->mDatabaseFile:Ljava/io/File;

    .line 134
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 133
    invoke-static {v4, v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_fe
    .catchall {:try_start_dc .. :try_end_fe} :catchall_d9

    goto :goto_d0

    .line 136
    :goto_ff
    :try_start_ff
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteRawStatement;->reset()V

    .line 137
    throw v0

    .line 139
    :cond_103
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_106
    .catchall {:try_start_ff .. :try_end_106} :catchall_d5

    if-eqz v10, :cond_10f

    .line 140
    :try_start_108
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteRawStatement;->close()V
    :try_end_10b
    .catchall {:try_start_108 .. :try_end_10b} :catchall_10c

    goto :goto_10f

    :catchall_10c
    move-exception v0

    move-object v10, v0

    goto :goto_168

    .line 142
    :cond_10f
    :goto_10f
    :try_start_10f
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_112
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10f .. :try_end_112} :catch_119
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_112} :catch_116
    .catchall {:try_start_10f .. :try_end_112} :catchall_113

    goto :goto_13e

    :catchall_113
    move-exception v0

    goto/16 :goto_1cb

    :catch_116
    move-exception v0

    goto/16 :goto_192

    :catch_119
    move-exception v0

    .line 144
    :try_start_11a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/appop/AppOpHistoryDbHelper;->mDatabaseFile:Ljava/io/File;

    .line 145
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/appop/AppOpHistoryDbHelper;->mDatabaseFile:Ljava/io/File;

    .line 146
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13e
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_13e} :catch_116
    .catchall {:try_start_11a .. :try_end_13e} :catchall_113

    .line 152
    :goto_13e
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v10, v2, v5

    .line 154
    iget-object v0, v1, Lcom/android/server/appop/AppOpHistoryDbHelper;->mDatabaseFile:Ljava/io/File;

    .line 156
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v12

    iget-object v0, v1, Lcom/android/server/appop/AppOpHistoryDbHelper;->mAggregationTimeWindow:Lcom/android/server/appop/HistoricalRegistry$AggregationTimeWindow;

    invoke-virtual {v1, v0}, Lcom/android/server/appop/AppOpHistoryDbHelper;->getDatabaseType(Lcom/android/server/appop/HistoricalRegistry$AggregationTimeWindow;)I

    move-result v14

    const/16 v7, 0x44a

    const-wide/16 v8, -0x1

    move/from16 v15, p2

    .line 154
    invoke-static/range {v7 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJJJII)V

    goto :goto_1ca

    :goto_15d
    if-eqz v10, :cond_167

    .line 100
    :try_start_15f
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteRawStatement;->close()V
    :try_end_162
    .catchall {:try_start_15f .. :try_end_162} :catchall_163

    goto :goto_167

    :catchall_163
    move-exception v0

    :try_start_164
    invoke-virtual {v11, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_167
    :goto_167
    throw v11
    :try_end_168
    .catchall {:try_start_164 .. :try_end_168} :catchall_10c

    .line 142
    :goto_168
    :try_start_168
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_16b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_168 .. :try_end_16b} :catch_16c
    .catch Ljava/lang/Exception; {:try_start_168 .. :try_end_16b} :catch_116
    .catchall {:try_start_168 .. :try_end_16b} :catchall_113

    goto :goto_191

    :catch_16c
    move-exception v0

    .line 144
    :try_start_16d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/appop/AppOpHistoryDbHelper;->mDatabaseFile:Ljava/io/File;

    .line 145
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/appop/AppOpHistoryDbHelper;->mDatabaseFile:Ljava/io/File;

    .line 146
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    :goto_191
    throw v10
    :try_end_192
    .catch Ljava/lang/Exception; {:try_start_16d .. :try_end_192} :catch_116
    .catchall {:try_start_16d .. :try_end_192} :catchall_113

    .line 150
    :goto_192
    :try_start_192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t insert app op records in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/appop/AppOpHistoryDbHelper;->mDatabaseFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1ac
    .catchall {:try_start_192 .. :try_end_1ac} :catchall_113

    .line 152
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v18, v2, v5

    .line 154
    iget-object v0, v1, Lcom/android/server/appop/AppOpHistoryDbHelper;->mDatabaseFile:Ljava/io/File;

    .line 156
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v20

    iget-object v0, v1, Lcom/android/server/appop/AppOpHistoryDbHelper;->mAggregationTimeWindow:Lcom/android/server/appop/HistoricalRegistry$AggregationTimeWindow;

    invoke-virtual {v1, v0}, Lcom/android/server/appop/AppOpHistoryDbHelper;->getDatabaseType(Lcom/android/server/appop/HistoricalRegistry$AggregationTimeWindow;)I

    move-result v22

    const/16 v15, 0x44a

    const-wide/16 v16, -0x1

    move/from16 v23, p2

    .line 154
    invoke-static/range {v15 .. v23}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJJJII)V

    :goto_1ca
    return-void

    .line 152
    :goto_1cb
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v18, v2, v5

    .line 154
    iget-object v2, v1, Lcom/android/server/appop/AppOpHistoryDbHelper;->mDatabaseFile:Ljava/io/File;

    .line 156
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v20

    iget-object v2, v1, Lcom/android/server/appop/AppOpHistoryDbHelper;->mAggregationTimeWindow:Lcom/android/server/appop/HistoricalRegistry$AggregationTimeWindow;

    invoke-virtual {v1, v2}, Lcom/android/server/appop/AppOpHistoryDbHelper;->getDatabaseType(Lcom/android/server/appop/HistoricalRegistry$AggregationTimeWindow;)I

    move-result v22

    const/16 v15, 0x44a

    const-wide/16 v16, -0x1

    move/from16 v23, p2

    .line 154
    invoke-static/range {v15 .. v23}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJJJII)V

    .line 157
    throw v0
.end method

.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 73
    const-string p0, "PRAGMA synchronous = NORMAL"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 78
    const-string v0, "CREATE TABLE IF NOT EXISTS app_op_accesses(id INTEGER PRIMARY KEY,uid INTEGER,package_name TEXT,device_id TEXT,op_code INTEGER,attribution_tag TEXT,uid_state INTEGER,op_flags INTEGER,attribution_flags INTEGER,chain_id INTEGER,access_time INTEGER,access_duration INTEGER,total_duration INTEGER,access_count INTEGER,reject_count INTEGER)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 80
    iget-object p0, p0, Lcom/android/server/appop/AppOpHistoryDbHelper;->mAggregationTimeWindow:Lcom/android/server/appop/HistoricalRegistry$AggregationTimeWindow;

    sget-object v0, Lcom/android/server/appop/HistoricalRegistry$AggregationTimeWindow;->SHORT:Lcom/android/server/appop/HistoricalRegistry$AggregationTimeWindow;

    if-ne p0, v0, :cond_10

    .line 81
    const-string p0, "CREATE INDEX IF NOT EXISTS app_op_access_index ON app_op_accesses (access_time)"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .line 0
    return-void
.end method

.method public final readFromStatement(Landroid/database/sqlite/SQLiteRawStatement;)Lcom/android/server/appop/AggregatedAppOpAccessEvent;
    .registers 23

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 359
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnInt(I)I

    move-result v3

    const/4 v1, 0x1

    .line 360
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnText(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x2

    .line 361
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnText(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Lcom/android/server/appop/AppOpHistoryDbHelper;->getDeviceIdForDatabaseRead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x3

    .line 362
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnInt(I)I

    move-result v5

    const/4 v1, 0x4

    .line 363
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnText(I)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x5

    .line 364
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnInt(I)I

    move-result v9

    const/4 v1, 0x6

    .line 365
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnInt(I)I

    move-result v8

    const/4 v1, 0x7

    .line 366
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnInt(I)I

    move-result v10

    const/16 v1, 0x8

    .line 367
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnInt(I)I

    move-result v1

    const/16 v2, 0x9

    .line 368
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnLong(I)J

    move-result-wide v13

    const/16 v2, 0xa

    .line 369
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnLong(I)J

    move-result-wide v15

    const/16 v2, 0xb

    .line 370
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnLong(I)J

    move-result-wide v17

    const/16 v2, 0xc

    .line 371
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnInt(I)I

    move-result v19

    const/16 v2, 0xd

    .line 372
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnInt(I)I

    move-result v20

    .line 374
    new-instance v2, Lcom/android/server/appop/AggregatedAppOpAccessEvent;

    int-to-long v11, v1

    invoke-direct/range {v2 .. v20}, Lcom/android/server/appop/AggregatedAppOpAccessEvent;-><init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;IIIJJJJII)V

    return-object v2
.end method
