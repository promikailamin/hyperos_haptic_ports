.class public final Lcom/android/server/appfunctions/AppFunctionSQLiteAccessHistory;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AppFunctionSQLiteAccessHistory.java"

# interfaces
.implements Lcom/android/server/appfunctions/AppFunctionAccessHistory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 89
    const-string v2, "appfunction_access.db"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public deleteAll()V
    .registers 3

    .line 227
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 228
    const-string v0, "DELETE FROM appfunction_access"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p0

    .line 230
    const-string v0, "AppFunctionDatabase"

    const-string v1, "Delete all AppFunction access histories: Failed."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public deleteExpiredAppFunctionAccessHistories(J)V
    .registers 5

    .line 194
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 197
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 198
    const-string p2, "DELETE FROM appfunction_access WHERE access_time < ?"

    invoke-virtual {p0, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p0

    .line 200
    const-string p1, "AppFunctionDatabase"

    const-string p2, "Delete expired AppFunction access histories: Failed"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public insertAppFunctionAccessHistory(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;JJ)J
    .registers 7

    .line 140
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :try_start_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 145
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/appfunctions/AppFunctionSQLiteAccessHistory;->prepareAppFunctionAccessContentValue(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;JJ)Landroid/content/ContentValues;

    move-result-object p0

    .line 147
    const-string p1, "appfunction_access"

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2, p0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12} :catch_13

    return-wide p0

    :catch_13
    move-exception v0

    move-object p0, v0

    .line 149
    const-string p1, "AppFunctionDatabase"

    const-string p2, "Insert AppFunction access histories: Failed."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 95
    :try_start_0
    const-string p0, "CREATE TABLE IF NOT EXISTS appfunction_access (_id INTEGER PRIMARY KEY AUTOINCREMENT,agent_package_name TEXT, target_package_name TEXT, interaction_type INTEGER, custom_interaction_type TEXT, interaction_uri TEXT, thread_id TEXT, access_time INTEGER, access_duration INTEGER);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p0

    .line 97
    const-string p1, "AppFunctionDatabase"

    const-string v0, "CreateTable: Failed."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    throw p0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .line 0
    return-void
.end method

.method public final prepareAppFunctionAccessContentValue(Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;JJ)Landroid/content/ContentValues;
    .registers 8

    .line 157
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    .line 163
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v1, "agent_package_name"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->getTargetPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string/jumbo v1, "target_package_name"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v0, "access_time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 168
    const-string p2, "access_duration"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 170
    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionAidlRequest;->getClientRequest()Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->getAttribution()Landroid/app/appfunctions/AppFunctionAttribution;

    move-result-object p1

    if-eqz p1, :cond_74

    .line 173
    invoke-virtual {p1}, Landroid/app/appfunctions/AppFunctionAttribution;->getInteractionType()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "interaction_type"

    invoke-virtual {p0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 174
    invoke-virtual {p1}, Landroid/app/appfunctions/AppFunctionAttribution;->getCustomInteractionType()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_59

    .line 176
    const-string p3, "custom_interaction_type"

    invoke-virtual {p0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_59
    invoke-virtual {p1}, Landroid/app/appfunctions/AppFunctionAttribution;->getInteractionUri()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_68

    .line 180
    const-string p3, "interaction_uri"

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_68
    invoke-virtual {p1}, Landroid/app/appfunctions/AppFunctionAttribution;->getThreadId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_74

    .line 184
    const-string/jumbo p2, "thread_id"

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_74
    return-object p0
.end method

.method public queryAppFunctionAccessHistory([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 17

    .line 113
    const-string v1, "Query AppFunction access histories: Failed."

    const-string v2, "AppFunctionDatabase"

    const/4 v3, 0x0

    :try_start_5
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 114
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const/4 p0, 0x1

    .line 115
    invoke-virtual {v4, p0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setStrict(Z)V

    .line 116
    const-string p0, "appfunction_access"

    invoke-virtual {v4, p0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v11, p4

    .line 118
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_2b

    .line 127
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_27} :catch_28

    return-object v3

    :catch_28
    move-exception v0

    move-object p0, v0

    goto :goto_2c

    :cond_2b
    return-object p0

    .line 132
    :goto_2c
    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3
.end method
