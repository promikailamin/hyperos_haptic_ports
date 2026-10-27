.class public Lcom/android/server/appop/DiscreteOpsDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DiscreteOpsDbHelper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .registers 9

    .line 50
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/android/server/appop/DiscreteOpsDbHelper$DiscreteOpsDatabaseErrorHandler;

    invoke-direct {v5}, Lcom/android/server/appop/DiscreteOpsDbHelper$DiscreteOpsDatabaseErrorHandler;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    .line 52
    invoke-static {}, Lcom/android/server/appop/DiscreteOpsDbHelper;->getDatabaseOpenParams()Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteOpenHelper;->setOpenParams(Landroid/database/sqlite/SQLiteDatabase$OpenParams;)V

    return-void
.end method

.method public static getDatabaseFile()Ljava/io/File;
    .registers 4

    .line 63
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "appops"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "app_op_history.db"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDatabaseOpenParams()Landroid/database/sqlite/SQLiteDatabase$OpenParams;
    .registers 2

    .line 56
    new-instance v0, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;-><init>()V

    const/high16 v1, 0x20000000

    .line 57
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->addOpenFlags(I)Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase$OpenParams$Builder;->build()Landroid/database/sqlite/SQLiteDatabase$OpenParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final bindTextOrNull(Landroid/database/sqlite/SQLiteRawStatement;ILjava/lang/String;)V
    .registers 4

    if-nez p3, :cond_6

    .line 148
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteRawStatement;->bindNull(I)V

    return-void

    .line 150
    :cond_6
    invoke-virtual {p1, p2, p3}, Landroid/database/sqlite/SQLiteRawStatement;->bindText(ILjava/lang/String;)V

    return-void
.end method

.method public execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    .line 189
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    if-nez p2, :cond_a

    .line 191
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    .line 193
    :cond_a
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p0

    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Couldn\'t exec sql command, disk is full. Discrete ops db file size (bytes) : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-static {}, Lcom/android/server/appop/DiscreteOpsDbHelper;->getDatabaseFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 196
    const-string p2, "DiscreteOpsDbHelper"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public getAllDiscreteOps(Ljava/lang/String;)Ljava/util/List;
    .registers 5

    .line 291
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 292
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 293
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionReadOnly()V

    .line 294
    :try_start_c
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->createRawStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteRawStatement;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_2a

    .line 295
    :goto_10
    :try_start_10
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteRawStatement;->step()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 296
    invoke-virtual {p0, p1}, Lcom/android/server/appop/DiscreteOpsDbHelper;->readFromStatement(Landroid/database/sqlite/SQLiteRawStatement;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    move-result-object v2

    .line 297
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :catchall_1e
    move-exception p0

    goto :goto_2c

    .line 299
    :cond_20
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_1e

    .line 300
    :try_start_23
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteRawStatement;->close()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_2a

    .line 301
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v1

    :catchall_2a
    move-exception p0

    goto :goto_37

    :goto_2c
    if-eqz p1, :cond_36

    .line 294
    :try_start_2e
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteRawStatement;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_32

    goto :goto_36

    :catchall_32
    move-exception p1

    :try_start_33
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_36
    :goto_36
    throw p0
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_2a

    .line 301
    :goto_37
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 302
    throw p0
.end method

.method public getLargestAttributionChainId()J
    .registers 7

    const-wide/16 v0, 0x0

    .line 160
    :try_start_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 161
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionReadOnly()V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_9} :catch_2d

    .line 162
    :try_start_9
    const-string v2, "SELECT MAX(chain_id) FROM app_op_accesses"

    .line 163
    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->createRawStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteRawStatement;

    move-result-object v2
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_2f

    .line 164
    :try_start_f
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteRawStatement;->step()Z

    move-result v3

    if-eqz v3, :cond_23

    const/4 v3, 0x0

    .line 165
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnLong(I)J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-gez v5, :cond_1f

    goto :goto_23

    :cond_1f
    move-wide v0, v3

    goto :goto_23

    :catchall_21
    move-exception v3

    goto :goto_31

    .line 170
    :cond_23
    :goto_23
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_21

    .line 171
    :try_start_26
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteRawStatement;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2f

    .line 172
    :try_start_29
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_29 .. :try_end_2c} :catch_2d

    return-wide v0

    :catch_2d
    move-exception p0

    goto :goto_40

    :catchall_2f
    move-exception v2

    goto :goto_3c

    :goto_31
    if-eqz v2, :cond_3b

    .line 162
    :try_start_33
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteRawStatement;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_3b

    :catchall_37
    move-exception v2

    :try_start_38
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3b
    :goto_3b
    throw v3
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_2f

    .line 172
    :goto_3c
    :try_start_3c
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 173
    throw v2
    :try_end_40
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3c .. :try_end_40} :catch_2d

    .line 175
    :goto_40
    const-string v2, "DiscreteOpsDbHelper"

    const-string v3, "Error reading attribution chain id"

    invoke-static {v2, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v0
.end method

.method public insertDiscreteOps(Ljava/util/List;)V
    .registers 12

    .line 82
    const-string v0, "Couldn\'t commit transaction when inserting discrete ops, database file size (bytes) : "

    const-string v1, "DiscreteOpsDbHelper"

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    return-void

    .line 90
    :cond_b
    const-string v2, "DiscreteOpsWrite"

    const-wide/32 v3, 0x80000

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 92
    :try_start_13
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 95
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_c0

    .line 96
    :try_start_1a
    const-string v5, "INSERT INTO app_op_accesses(uid, package_name, device_id, op_code, attribution_tag, access_time, access_duration, uid_state, op_flags, attribution_flags, chain_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->createRawStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteRawStatement;

    move-result-object v5
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_ba

    .line 98
    :try_start_20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    :try_end_30
    .catchall {:try_start_20 .. :try_end_30} :catchall_93

    .line 100
    :try_start_30
    invoke-virtual {v6}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getUid()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v5, v8, v7}, Landroid/database/sqlite/SQLiteRawStatement;->bindInt(II)V

    .line 102
    invoke-virtual {v6}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    .line 101
    invoke-virtual {p0, v5, v8, v7}, Lcom/android/server/appop/DiscreteOpsDbHelper;->bindTextOrNull(Landroid/database/sqlite/SQLiteRawStatement;ILjava/lang/String;)V

    .line 104
    invoke-virtual {v6}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    .line 103
    invoke-virtual {p0, v5, v8, v7}, Lcom/android/server/appop/DiscreteOpsDbHelper;->bindTextOrNull(Landroid/database/sqlite/SQLiteRawStatement;ILjava/lang/String;)V

    .line 105
    invoke-virtual {v6}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getOpCode()I

    move-result v7

    const/4 v8, 0x4

    invoke-virtual {v5, v8, v7}, Landroid/database/sqlite/SQLiteRawStatement;->bindInt(II)V

    .line 107
    invoke-virtual {v6}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getAttributionTag()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    .line 106
    invoke-virtual {p0, v5, v8, v7}, Lcom/android/server/appop/DiscreteOpsDbHelper;->bindTextOrNull(Landroid/database/sqlite/SQLiteRawStatement;ILjava/lang/String;)V

    .line 109
    invoke-virtual {v6}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getAccessTime()J

    move-result-wide v7

    const/4 v9, 0x6

    .line 108
    invoke-virtual {v5, v9, v7, v8}, Landroid/database/sqlite/SQLiteRawStatement;->bindLong(IJ)V

    .line 111
    invoke-virtual {v6}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getDuration()J

    move-result-wide v7

    const/4 v9, 0x7

    .line 110
    invoke-virtual {v5, v9, v7, v8}, Landroid/database/sqlite/SQLiteRawStatement;->bindLong(IJ)V

    .line 112
    invoke-virtual {v6}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getUidState()I

    move-result v7

    const/16 v8, 0x8

    invoke-virtual {v5, v8, v7}, Landroid/database/sqlite/SQLiteRawStatement;->bindInt(II)V

    .line 113
    invoke-virtual {v6}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getOpFlags()I

    move-result v7

    const/16 v8, 0x9

    invoke-virtual {v5, v8, v7}, Landroid/database/sqlite/SQLiteRawStatement;->bindInt(II)V

    .line 115
    invoke-virtual {v6}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getAttributionFlags()I

    move-result v7

    const/16 v8, 0xa

    .line 114
    invoke-virtual {v5, v8, v7}, Landroid/database/sqlite/SQLiteRawStatement;->bindInt(II)V

    .line 116
    invoke-virtual {v6}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;->getChainId()J

    move-result-wide v7

    const/16 v9, 0xb

    invoke-virtual {v5, v9, v7, v8}, Landroid/database/sqlite/SQLiteRawStatement;->bindLong(IJ)V

    .line 117
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteRawStatement;->step()Z
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_8f} :catch_97
    .catchall {:try_start_30 .. :try_end_8f} :catchall_95

    .line 121
    :goto_8f
    :try_start_8f
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteRawStatement;->reset()V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_93

    goto :goto_24

    :catchall_93
    move-exception p0

    goto :goto_e1

    :catchall_95
    move-exception p0

    goto :goto_ad

    :catch_97
    move-exception v7

    .line 119
    :try_start_98
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error inserting the discrete op: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ac
    .catchall {:try_start_98 .. :try_end_ac} :catchall_95

    goto :goto_8f

    .line 121
    :goto_ad
    :try_start_ad
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteRawStatement;->reset()V

    .line 122
    throw p0

    .line 124
    :cond_b1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b4
    .catchall {:try_start_ad .. :try_end_b4} :catchall_93

    if-eqz v5, :cond_bc

    .line 125
    :try_start_b6
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteRawStatement;->close()V
    :try_end_b9
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_ba

    goto :goto_bc

    :catchall_ba
    move-exception p0

    goto :goto_ec

    .line 127
    :cond_bc
    :goto_bc
    :try_start_bc
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_bf
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_bc .. :try_end_bf} :catch_c2
    .catchall {:try_start_bc .. :try_end_bf} :catchall_c0

    goto :goto_dd

    :catchall_c0
    move-exception p0

    goto :goto_10c

    :catch_c2
    move-exception p0

    .line 129
    :try_start_c3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-static {}, Lcom/android/server/appop/DiscreteOpsDbHelper;->getDatabaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 129
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_dd
    .catchall {:try_start_c3 .. :try_end_dd} :catchall_c0

    .line 137
    :goto_dd
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_e1
    if-eqz v5, :cond_eb

    .line 96
    :try_start_e3
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteRawStatement;->close()V
    :try_end_e6
    .catchall {:try_start_e3 .. :try_end_e6} :catchall_e7

    goto :goto_eb

    :catchall_e7
    move-exception p1

    :try_start_e8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_eb
    :goto_eb
    throw p0
    :try_end_ec
    .catchall {:try_start_e8 .. :try_end_ec} :catchall_ba

    .line 127
    :goto_ec
    :try_start_ec
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_ef
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ec .. :try_end_ef} :catch_f0
    .catchall {:try_start_ec .. :try_end_ef} :catchall_c0

    goto :goto_10b

    :catch_f0
    move-exception p1

    .line 129
    :try_start_f1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-static {}, Lcom/android/server/appop/DiscreteOpsDbHelper;->getDatabaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    :goto_10b
    throw p0
    :try_end_10c
    .catchall {:try_start_f1 .. :try_end_10c} :catchall_c0

    .line 137
    :goto_10c
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 138
    throw p0
.end method

.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 68
    const-string p0, "PRAGMA synchronous = NORMAL"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 73
    const-string p0, "CREATE TABLE IF NOT EXISTS app_op_accesses(id INTEGER PRIMARY KEY,uid INTEGER,package_name TEXT,device_id TEXT NOT NULL,op_code INTEGER,attribution_tag TEXT,access_time INTEGER,access_duration INTEGER,uid_state INTEGER,op_flags INTEGER,attribution_flags INTEGER,chain_id INTEGER)"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 74
    const-string p0, "CREATE INDEX IF NOT EXISTS app_op_access_index ON app_op_accesses (access_time, uid, op_code)"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .line 0
    return-void
.end method

.method public final readFromStatement(Landroid/database/sqlite/SQLiteRawStatement;)Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;
    .registers 19

    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 261
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnInt(I)I

    move-result v3

    const/4 v1, 0x1

    .line 262
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnText(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x2

    .line 263
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnText(I)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x3

    .line 264
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnInt(I)I

    move-result v7

    const/4 v1, 0x4

    .line 265
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnText(I)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x5

    .line 266
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnLong(I)J

    move-result-wide v13

    const/4 v1, 0x6

    .line 267
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnLong(I)J

    move-result-wide v15

    const/4 v1, 0x7

    .line 268
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnInt(I)I

    move-result v10

    const/16 v1, 0x8

    .line 269
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnInt(I)I

    move-result v8

    const/16 v1, 0x9

    .line 270
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnInt(I)I

    move-result v9

    const/16 v1, 0xa

    .line 271
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteRawStatement;->getColumnLong(I)J

    move-result-wide v11

    .line 273
    new-instance v2, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;

    invoke-direct/range {v2 .. v16}, Lcom/android/server/appop/DiscreteOpsSqlRegistry$DiscreteOp;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIJJJ)V

    return-object v2
.end method
