.class public final Landroid/database/sqlite/SQLiteConnection;
.super Ljava/lang/Object;
.source "SQLiteConnection.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteConnection$Operation;,
        Landroid/database/sqlite/SQLiteConnection$OperationLog;,
        Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;,
        Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o EMPTY_BYTE_ARRAY:[B

.field private static final greylist-max-o EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SQLiteConnection"


# instance fields
.field private greylist-max-o mCancellationSignalAttachCount:I

.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private final greylist-max-o mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

.field private final greylist-max-o mConnectionId:I

.field private greylist-max-o mConnectionPtr:J

.field private final greylist-max-o mIsPrimaryConnection:Z

.field private final greylist-max-o mIsReadOnlyConnection:Z

.field private greylist-max-o mOnlyAllowReadOnlyOperations:Z

.field private final greylist-max-o mPool:Landroid/database/sqlite/SQLiteConnectionPool;

.field private final greylist-max-o mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

.field private greylist-max-o mPreparedStatementPool:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

.field private final greylist-max-o mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mfinalizePreparedStatement(Landroid/database/sqlite/SQLiteConnection;Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->finalizePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetEMPTY_BYTE_ARRAY()[B
    .registers 1

    sget-object v0, Landroid/database/sqlite/SQLiteConnection;->EMPTY_BYTE_ARRAY:[B

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smtrimSqlForDisplay(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/database/sqlite/SQLiteConnection;->trimSqlForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 96
    nop

    .line 100
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Landroid/database/sqlite/SQLiteConnection;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 101
    new-array v0, v0, [B

    sput-object v0, Landroid/database/sqlite/SQLiteConnection;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteDatabaseConfiguration;IZ)V
    .registers 8
    .param p1, "pool"    # Landroid/database/sqlite/SQLiteConnectionPool;
    .param p2, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;
    .param p3, "connectionId"    # I
    .param p4, "primaryConnection"    # Z

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 174
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnection;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    .line 175
    new-instance v1, Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-direct {v1, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;-><init>(Landroid/database/sqlite/SQLiteConnectionPool;)V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    .line 176
    new-instance v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-direct {v1, p2}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;-><init>(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .line 177
    iput p3, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionId:I

    .line 178
    iput-boolean p4, p0, Landroid/database/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    .line 179
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isReadOnlyDatabase()Z

    move-result v2

    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    .line 180
    new-instance v2, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    iget v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    invoke-direct {v2, p0, v1}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;-><init>(Landroid/database/sqlite/SQLiteConnection;I)V

    iput-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    .line 182
    const-string v1, "SQLiteConnection.close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method private greylist-max-o acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .registers 13
    .param p1, "sql"    # Ljava/lang/String;

    .line 1056
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1057
    .local v0, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    const/4 v1, 0x0

    .line 1058
    .local v1, "skipCache":Z
    if-eqz v0, :cond_11

    .line 1059
    iget-boolean v2, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInUse:Z

    if-nez v2, :cond_10

    .line 1060
    return-object v0

    .line 1065
    :cond_10
    const/4 v1, 0x1

    .line 1068
    :cond_11
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v2, v3, p1}, Landroid/database/sqlite/SQLiteConnection;->nativePrepareStatement(JLjava/lang/String;)J

    move-result-wide v2

    .line 1070
    .local v2, "statementPtr":J
    :try_start_17
    iget-wide v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v4, v5, v2, v3}, Landroid/database/sqlite/SQLiteConnection;->nativeGetParameterCount(JJ)I

    move-result v8

    .line 1071
    .local v8, "numParameters":I
    invoke-static {p1}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v9

    .line 1072
    .local v9, "type":I
    iget-wide v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v4, v5, v2, v3}, Landroid/database/sqlite/SQLiteConnection;->nativeIsReadOnly(JJ)Z

    move-result v10

    .line 1073
    .local v10, "readOnly":Z
    move-object v4, p0

    move-object v5, p1

    move-wide v6, v2

    invoke-direct/range {v4 .. v10}, Landroid/database/sqlite/SQLiteConnection;->obtainPreparedStatement(Ljava/lang/String;JIIZ)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v4

    move-object v0, v4

    .line 1074
    const/4 v4, 0x1

    if-nez v1, :cond_3f

    invoke-static {v9}, Landroid/database/sqlite/SQLiteConnection;->isCacheable(I)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 1075
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v5, p1, v0}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1076
    iput-boolean v4, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z
    :try_end_3f
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_3f} :catch_43

    .line 1085
    .end local v8    # "numParameters":I
    .end local v9    # "type":I
    .end local v10    # "readOnly":Z
    :cond_3f
    nop

    .line 1086
    iput-boolean v4, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInUse:Z

    .line 1087
    return-object v0

    .line 1078
    :catch_43
    move-exception v4

    .line 1081
    .local v4, "ex":Ljava/lang/RuntimeException;
    if-eqz v0, :cond_4a

    iget-boolean v5, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z

    if-nez v5, :cond_4f

    .line 1082
    :cond_4a
    iget-wide v5, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v5, v6, v2, v3}, Landroid/database/sqlite/SQLiteConnection;->nativeFinalizeStatement(JJ)V

    .line 1084
    :cond_4f
    throw v4
.end method

.method private greylist-max-o applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .registers 3
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1218
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1219
    iget-boolean v0, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    if-eqz v0, :cond_14

    .line 1220
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    goto :goto_1b

    .line 1222
    :cond_14
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onWriteToDisk()V

    .line 1225
    :cond_1b
    :goto_1b
    return-void
.end method

.method private greylist-max-o attachCancellationSignal(Landroid/os/CancellationSignal;)V
    .registers 6
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 1119
    if-eqz p1, :cond_15

    .line 1120
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 1122
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    .line 1123
    if-ne v0, v1, :cond_15

    .line 1125
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v2, v3, v1}, Landroid/database/sqlite/SQLiteConnection;->nativeResetCancel(JZ)V

    .line 1128
    invoke-virtual {p1, p0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 1131
    :cond_15
    return-void
.end method

.method private greylist-max-o bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V
    .registers 15
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .param p2, "bindArgs"    # [Ljava/lang/Object;

    .line 1159
    if-eqz p2, :cond_4

    array-length v0, p2

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 1160
    .local v0, "count":I
    :goto_5
    iget v1, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    if-ne v0, v1, :cond_7a

    .line 1165
    if-nez v0, :cond_c

    .line 1166
    return-void

    .line 1169
    :cond_c
    iget-wide v9, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    .line 1170
    .local v9, "statementPtr":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_79

    .line 1171
    aget-object v11, p2, v1

    .line 1172
    .local v11, "arg":Ljava/lang/Object;
    invoke-static {v11}, Landroid/database/DatabaseUtils;->getTypeOfObject(Ljava/lang/Object;)I

    move-result v2

    packed-switch v2, :pswitch_data_a6

    .line 1189
    :pswitch_1a
    instance-of v2, v11, Ljava/lang/Boolean;

    if-eqz v2, :cond_6a

    .line 1192
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 v6, v1, 0x1

    .line 1193
    move-object v4, v11

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_62

    const-wide/16 v4, 0x1

    goto :goto_64

    .line 1185
    :pswitch_2e
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 v6, v1, 0x1

    move-object v7, v11

    check-cast v7, [B

    move-wide v4, v9

    invoke-static/range {v2 .. v7}, Landroid/database/sqlite/SQLiteConnection;->nativeBindBlob(JJI[B)V

    .line 1186
    goto :goto_76

    .line 1181
    :pswitch_3a
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 v6, v1, 0x1

    move-object v4, v11

    check-cast v4, Ljava/lang/Number;

    .line 1182
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v7

    .line 1181
    move-wide v4, v9

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SQLiteConnection;->nativeBindDouble(JJID)V

    .line 1183
    goto :goto_76

    .line 1177
    :pswitch_4a
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 v6, v1, 0x1

    move-object v4, v11

    check-cast v4, Ljava/lang/Number;

    .line 1178
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    .line 1177
    move-wide v4, v9

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SQLiteConnection;->nativeBindLong(JJIJ)V

    .line 1179
    goto :goto_76

    .line 1174
    :pswitch_5a
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 v4, v1, 0x1

    invoke-static {v2, v3, v9, v10, v4}, Landroid/database/sqlite/SQLiteConnection;->nativeBindNull(JJI)V

    .line 1175
    goto :goto_76

    .line 1193
    :cond_62
    const-wide/16 v4, 0x0

    :goto_64
    move-wide v7, v4

    .line 1192
    move-wide v4, v9

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SQLiteConnection;->nativeBindLong(JJIJ)V

    goto :goto_76

    .line 1195
    :cond_6a
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-wide v4, v9

    invoke-static/range {v2 .. v7}, Landroid/database/sqlite/SQLiteConnection;->nativeBindString(JJILjava/lang/String;)V

    .line 1170
    .end local v11    # "arg":Ljava/lang/Object;
    :goto_76
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1200
    .end local v1    # "i":I
    :cond_79
    return-void

    .line 1161
    .end local v9    # "statementPtr":J
    :cond_7a
    new-instance v1, Landroid/database/sqlite/SQLiteBindOrColumnIndexOutOfRangeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bind arguments but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " were provided."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/database/sqlite/SQLiteBindOrColumnIndexOutOfRangeException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_4a
        :pswitch_3a
        :pswitch_1a
        :pswitch_2e
    .end packed-switch
.end method

.method private static greylist-max-o canonicalizeSyncMode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # Ljava/lang/String;

    .line 405
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_42

    :cond_7
    goto :goto_30

    :pswitch_8
    const-string v0, "3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_31

    :pswitch_12
    const-string v0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_31

    :pswitch_1c
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_31

    :pswitch_26
    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_31

    :goto_30
    const/4 v0, -0x1

    :goto_31
    packed-switch v0, :pswitch_data_4e

    .line 411
    return-object p0

    .line 409
    :pswitch_35
    const-string v0, "EXTRA"

    return-object v0

    .line 408
    :pswitch_38
    const-string v0, "FULL"

    return-object v0

    .line 407
    :pswitch_3b
    const-string v0, "NORMAL"

    return-object v0

    .line 406
    :pswitch_3e
    const-string v0, "OFF"

    return-object v0

    nop

    :pswitch_data_42
    .packed-switch 0x30
        :pswitch_26
        :pswitch_1c
        :pswitch_12
        :pswitch_8
    .end packed-switch

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
    .end packed-switch
.end method

.method private blacklist checkDatabaseWiped()V
    .registers 6

    .line 535
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->checkDbWipe()Z

    move-result v0

    if-nez v0, :cond_7

    .line 536
    return-void

    .line 539
    :cond_7
    :try_start_7
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-wipecheck"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 542
    .local v0, "checkFile":Ljava/io/File;
    const-string v1, "SELECT count(*) FROM sqlite_master WHERE type=\'table\' AND name=\'android_metadata\'"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_32

    const/4 v1, 0x1

    goto :goto_33

    :cond_32
    const/4 v1, 0x0

    .line 545
    .local v1, "hasMetadataTable":Z
    :goto_33
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    .line 547
    .local v2, "hasCheckFile":Z
    iget-boolean v3, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v3, :cond_40

    if-nez v2, :cond_40

    .line 550
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 553
    :cond_40
    if-nez v1, :cond_4e

    if-eqz v2, :cond_4e

    .line 555
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    const-string/jumbo v4, "unknown"

    invoke-static {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->wipeDetected(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_4e} :catch_4f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_4e} :catch_4f

    .line 561
    .end local v0    # "checkFile":Ljava/io/File;
    .end local v1    # "hasMetadataTable":Z
    .end local v2    # "hasCheckFile":Z
    :cond_4e
    goto :goto_57

    .line 558
    :catch_4f
    move-exception v0

    .line 559
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "SQLiteConnection"

    const-string v2, "Unexpected exception while checking for wipe"

    invoke-static {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->wtfAsSystemServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 562
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_57
    return-void
.end method

.method private greylist-max-o detachCancellationSignal(Landroid/os/CancellationSignal;)V
    .registers 5
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 1134
    if-eqz p1, :cond_15

    .line 1135
    nop

    .line 1137
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCancellationSignalAttachCount:I

    .line 1138
    if-nez v0, :cond_15

    .line 1140
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 1143
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/database/sqlite/SQLiteConnection;->nativeResetCancel(JZ)V

    .line 1146
    :cond_15
    return-void
.end method

.method private greylist-max-o dispose(Z)V
    .registers 8
    .param p1, "finalized"    # Z

    .line 278
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_e

    .line 279
    if-eqz p1, :cond_9

    .line 280
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 282
    :cond_9
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 285
    :cond_e
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_38

    .line 286
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string v1, "close"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v4}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 288
    .local v0, "cookie":I
    :try_start_1f
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->evictAll()V

    .line 289
    iget-wide v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v4, v5}, Landroid/database/sqlite/SQLiteConnection;->nativeClose(J)V

    .line 290
    iput-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_31

    .line 292
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 293
    goto :goto_38

    .line 292
    :catchall_31
    move-exception v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 293
    throw v1

    .line 295
    .end local v0    # "cookie":I
    :cond_38
    :goto_38
    return-void
.end method

.method private blacklist executePerConnectionSqlFromConfiguration(I)V
    .registers 8
    .param p1, "startIndex"    # I

    .line 517
    move v0, p1

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->perConnectionSql:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_55

    .line 518
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->perConnectionSql:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 519
    .local v1, "statement":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[Ljava/lang/Object;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v2

    .line 520
    .local v2, "type":I
    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_56

    .line 528
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported configuration statement: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 525
    :sswitch_3a
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v5, v3}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 526
    goto :goto_52

    .line 522
    :sswitch_46
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v5, v3}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    .line 523
    nop

    .line 517
    .end local v1    # "statement":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[Ljava/lang/Object;>;"
    .end local v2    # "type":I
    :goto_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 532
    .end local v0    # "i":I
    :cond_55
    return-void

    :sswitch_data_56
    .sparse-switch
        0x1 -> :sswitch_46
        0x7 -> :sswitch_3a
    .end sparse-switch
.end method

.method private greylist-max-o finalizePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .registers 6
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1114
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v2, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteConnection;->nativeFinalizeStatement(JJ)V

    .line 1115
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->recyclePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1116
    return-void
.end method

.method private greylist-max-o getMainDbStatsUnsafe(IJJ)Landroid/database/sqlite/SQLiteDebug$DbStats;
    .registers 19
    .param p1, "lookaside"    # I
    .param p2, "pageCount"    # J
    .param p4, "pageSize"    # J

    .line 1346
    move-object v0, p0

    iget-boolean v1, v0, Landroid/database/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    if-eqz v1, :cond_a

    .line 1347
    iget-object v1, v0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    .local v1, "label":Ljava/lang/String;
    goto :goto_2d

    .line 1349
    .end local v1    # "label":Ljava/lang/String;
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/database/sqlite/SQLiteConnection;->mConnectionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1351
    .restart local v1    # "label":Ljava/lang/String;
    :goto_2d
    new-instance v12, Landroid/database/sqlite/SQLiteDebug$DbStats;

    iget-object v2, v0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    .line 1352
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->hitCount()I

    move-result v9

    iget-object v2, v0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    .line 1353
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->missCount()I

    move-result v10

    iget-object v2, v0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    .line 1354
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->size()I

    move-result v11

    move-object v2, v12

    move-object v3, v1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move v8, p1

    invoke-direct/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDebug$DbStats;-><init>(Ljava/lang/String;JJIIII)V

    .line 1351
    return-object v12
.end method

.method private static greylist-max-o isCacheable(I)Z
    .registers 3
    .param p0, "statementType"    # I

    .line 1210
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_9

    if-ne p0, v0, :cond_7

    goto :goto_9

    .line 1214
    :cond_7
    const/4 v0, 0x0

    return v0

    .line 1212
    :cond_9
    :goto_9
    return v0
.end method

.method private blacklist maybeTruncateWalFile()V
    .registers 9

    .line 358
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->shouldTruncateWalFile:Z

    if-nez v0, :cond_7

    .line 359
    return-void

    .line 362
    :cond_7
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getWALTruncateSize()J

    move-result-wide v0

    .line 366
    .local v0, "threshold":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_12

    .line 367
    return-void

    .line 370
    :cond_12
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-wal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 371
    .local v2, "walFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_35

    .line 372
    return-void

    .line 374
    :cond_35
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 375
    .local v3, "size":J
    cmp-long v5, v3, v0

    if-gez v5, :cond_3e

    .line 379
    return-void

    .line 382
    :cond_3e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes: Bigger than "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; truncating"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SQLiteConnection"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :try_start_6e
    const-string v5, "PRAGMA wal_checkpoint(TRUNCATE)"

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7, v7}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    .line 386
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    const/4 v7, 0x0

    iput-boolean v7, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->shouldTruncateWalFile:Z
    :try_end_79
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6e .. :try_end_79} :catch_7a

    .line 389
    goto :goto_80

    .line 387
    :catch_7a
    move-exception v5

    .line 388
    .local v5, "e":Landroid/database/sqlite/SQLiteException;
    const-string v7, "Failed to truncate the -wal file"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 390
    .end local v5    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_80
    return-void
.end method

.method private static native greylist-max-o nativeBindBlob(JJI[B)V
.end method

.method private static native greylist-max-o nativeBindDouble(JJID)V
.end method

.method private static native greylist-max-o nativeBindLong(JJIJ)V
.end method

.method private static native greylist-max-o nativeBindNull(JJI)V
.end method

.method private static native greylist-max-o nativeBindString(JJILjava/lang/String;)V
.end method

.method private static native greylist-max-o nativeCancel(J)V
.end method

.method private static native greylist-max-o nativeClose(J)V
.end method

.method private static native blacklist nativeExecute(JJZ)V
.end method

.method private static native greylist-max-o nativeExecuteForBlobFileDescriptor(JJ)I
.end method

.method private static native greylist-max-o nativeExecuteForChangedRowCount(JJ)I
.end method

.method private static native greylist-max-o nativeExecuteForCursorWindow(JJJIIZ)J
.end method

.method private static native greylist-max-o nativeExecuteForLastInsertedRowId(JJ)J
.end method

.method private static native greylist-max-o nativeExecuteForLong(JJ)J
.end method

.method private static native greylist-max-o nativeExecuteForString(JJ)Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeFinalizeStatement(JJ)V
.end method

.method private static native greylist-max-o nativeGetColumnCount(JJ)I
.end method

.method private static native greylist-max-o nativeGetColumnName(JJI)Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeGetDbLookaside(J)I
.end method

.method private static native greylist-max-o nativeGetParameterCount(JJ)I
.end method

.method private static native greylist-max-o nativeIsReadOnly(JJ)Z
.end method

.method private static native greylist-max-o nativeOpen(Ljava/lang/String;ILjava/lang/String;ZZII)J
.end method

.method private static native greylist-max-o nativePrepareStatement(JLjava/lang/String;)J
.end method

.method private static native blacklist nativeRegisterCustomAggregateFunction(JLjava/lang/String;Ljava/util/function/BinaryOperator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/function/BinaryOperator<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native blacklist nativeRegisterCustomScalarFunction(JLjava/lang/String;Ljava/util/function/UnaryOperator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/function/UnaryOperator<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native greylist-max-o nativeRegisterLocalizedCollators(JLjava/lang/String;)V
.end method

.method private static native greylist-max-o nativeResetCancel(JZ)V
.end method

.method private static native greylist-max-o nativeResetStatementAndClearBindings(JJ)V
.end method

.method private greylist-max-o obtainPreparedStatement(Ljava/lang/String;JIIZ)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .registers 10
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "statementPtr"    # J
    .param p4, "numParameters"    # I
    .param p5, "type"    # I
    .param p6, "readOnly"    # Z

    .line 1364
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementPool:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1365
    .local v0, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 1366
    iget-object v2, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mPoolNext:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    iput-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementPool:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1367
    iput-object v1, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mPoolNext:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1368
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z

    goto :goto_15

    .line 1370
    :cond_f
    new-instance v2, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    invoke-direct {v2, v1}, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;-><init>(Landroid/database/sqlite/SQLiteConnection$PreparedStatement-IA;)V

    move-object v0, v2

    .line 1372
    :goto_15
    iput-object p1, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mSql:Ljava/lang/String;

    .line 1373
    iput-wide p2, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    .line 1374
    iput p4, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    .line 1375
    iput p5, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mType:I

    .line 1376
    iput-boolean p6, v0, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    .line 1377
    return-object v0
.end method

.method static greylist-max-o open(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteDatabaseConfiguration;IZ)Landroid/database/sqlite/SQLiteConnection;
    .registers 7
    .param p0, "pool"    # Landroid/database/sqlite/SQLiteConnectionPool;
    .param p1, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;
    .param p2, "connectionId"    # I
    .param p3, "primaryConnection"    # Z

    .line 202
    new-instance v0, Landroid/database/sqlite/SQLiteConnection;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteConnection;-><init>(Landroid/database/sqlite/SQLiteConnectionPool;Landroid/database/sqlite/SQLiteDatabaseConfiguration;IZ)V

    .line 205
    .local v0, "connection":Landroid/database/sqlite/SQLiteConnection;
    :try_start_5
    invoke-direct {v0}, Landroid/database/sqlite/SQLiteConnection;->open()V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_8} :catch_9

    .line 206
    return-object v0

    .line 207
    :catch_9
    move-exception v1

    .line 208
    .local v1, "ex":Landroid/database/sqlite/SQLiteException;
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/database/sqlite/SQLiteConnection;->dispose(Z)V

    .line 209
    throw v1
.end method

.method private greylist-max-o open()V
    .registers 11

    .line 221
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    .line 222
    .local v0, "file":Ljava/lang/String;
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string/jumbo v2, "open"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v8

    .line 224
    .local v8, "cookie":I
    const/4 v9, 0x0

    :try_start_f
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v2, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    sget-boolean v4, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_SQL_STATEMENTS:Z

    sget-boolean v5, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_SQL_TIME:Z

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v6, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotSize:I

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v7, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->lookasideSlotCount:I

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SQLiteConnection;->nativeOpen(Ljava/lang/String;ILjava/lang/String;ZZII)J

    move-result-wide v1

    iput-wide v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J
    :try_end_2a
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_f .. :try_end_2a} :catch_4f
    .catchall {:try_start_f .. :try_end_2a} :catchall_4c

    .line 264
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v1, v8}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 265
    nop

    .line 266
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setPageSize()V

    .line 267
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setForeignKeyModeFromConfiguration()V

    .line 268
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setJournalFromConfiguration()V

    .line 269
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setSyncModeFromConfiguration()V

    .line 270
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setJournalSizeLimit()V

    .line 271
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setAutoCheckpointInterval()V

    .line 272
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setLocaleFromConfiguration()V

    .line 273
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setCustomFunctionsFromConfiguration()V

    .line 274
    invoke-direct {p0, v9}, Landroid/database/sqlite/SQLiteConnection;->executePerConnectionSqlFromConfiguration(I)V

    .line 275
    return-void

    .line 264
    :catchall_4c
    move-exception v1

    goto/16 :goto_10f

    .line 228
    :catch_4f
    move-exception v1

    .line 229
    .local v1, "e":Landroid/database/sqlite/SQLiteCantOpenDatabaseException;
    :try_start_50
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot open database \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with flags 0x"

    .line 231
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    .line 232
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_73
    .catchall {:try_start_50 .. :try_end_73} :catchall_4c

    .line 238
    .local v2, "message":Ljava/lang/StringBuilder;
    :try_start_73
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    .line 239
    .local v3, "path":Ljava/nio/file/Path;
    invoke-interface {v3}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v4

    .line 240
    .local v4, "dir":Ljava/nio/file/Path;
    if-eqz v4, :cond_f1

    .line 242
    new-array v5, v9, [Ljava/nio/file/LinkOption;

    invoke-static {v4, v5}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5
    :try_end_89
    .catchall {:try_start_73 .. :try_end_89} :catchall_f7

    const-string v6, " doesn\'t exist"

    if-eqz v5, :cond_e3

    .line 244
    :try_start_8d
    new-array v5, v9, [Ljava/nio/file/LinkOption;

    invoke-static {v3, v5}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5
    :try_end_93
    .catchall {:try_start_8d .. :try_end_93} :catchall_f7

    const-string v7, ": File "

    if-nez v5, :cond_b1

    .line 245
    :try_start_97
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v5, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    const/high16 v6, 0x10000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_f6

    .line 248
    const-string v5, " and CREATE_IF_NECESSARY is set, check directory permissions"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f6

    .line 251
    :cond_b1
    invoke-static {v3}, Ljava/nio/file/Files;->isReadable(Ljava/nio/file/Path;)Z

    move-result v5

    if-eqz v5, :cond_d5

    .line 253
    new-array v5, v9, [Ljava/nio/file/LinkOption;

    invoke-static {v3, v5}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v5

    if-eqz v5, :cond_cf

    .line 254
    const-string v5, ": Path "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is a directory"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f6

    .line 256
    :cond_cf
    const-string v5, ": Unable to deduct failure reason"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f6

    .line 252
    :cond_d5
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not readable"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f6

    .line 243
    :cond_e3
    const-string v5, ": Directory "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f6

    .line 241
    :cond_f1
    const-string v5, ": Directory not specified in the file path"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_f6
    .catchall {:try_start_97 .. :try_end_f6} :catchall_f7

    .line 261
    .end local v3    # "path":Ljava/nio/file/Path;
    .end local v4    # "dir":Ljava/nio/file/Path;
    :cond_f6
    :goto_f6
    goto :goto_105

    .line 258
    :catchall_f7
    move-exception v3

    .line 259
    .local v3, "th":Ljava/lang/Throwable;
    :try_start_f8
    const-string v4, ": Unable to deduct failure reason because filesystem couldn\'t be examined: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 260
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .end local v3    # "th":Ljava/lang/Throwable;
    :goto_105
    new-instance v3, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "file":Ljava/lang/String;
    .end local v8    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    throw v3
    :try_end_10f
    .catchall {:try_start_f8 .. :try_end_10f} :catchall_4c

    .line 264
    .end local v1    # "e":Landroid/database/sqlite/SQLiteCantOpenDatabaseException;
    .end local v2    # "message":Ljava/lang/StringBuilder;
    .restart local v0    # "file":Ljava/lang/String;
    .restart local v8    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    :goto_10f
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v8}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 265
    throw v1
.end method

.method private greylist-max-o recyclePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .registers 3
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1381
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mSql:Ljava/lang/String;

    .line 1382
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementPool:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    iput-object v0, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mPoolNext:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1383
    iput-object p1, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementPool:Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1384
    return-void
.end method

.method private greylist-max-o releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .registers 6
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1091
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInUse:Z

    .line 1092
    iget-boolean v0, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mInCache:Z

    if-eqz v0, :cond_18

    .line 1094
    :try_start_7
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v2, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteConnection;->nativeResetStatementAndClearBindings(JJ)V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_17

    .line 1095
    :catch_f
    move-exception v0

    .line 1106
    .local v0, "ex":Landroid/database/sqlite/SQLiteException;
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    iget-object v2, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1107
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteException;
    :goto_17
    goto :goto_1b

    .line 1109
    :cond_18
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->finalizePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1111
    :goto_1b
    return-void
.end method

.method private greylist-max-o setAutoCheckpointInterval()V
    .registers 8

    .line 308
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v0

    if-nez v0, :cond_32

    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v0, :cond_32

    .line 309
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getWALAutoCheckpoint()I

    move-result v0

    int-to-long v0, v0

    .line 310
    .local v0, "newValue":J
    const-string v2, "PRAGMA wal_autocheckpoint"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v4

    .line 311
    .local v4, "value":J
    cmp-long v2, v4, v0

    if-eqz v2, :cond_32

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PRAGMA wal_autocheckpoint="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    .line 315
    .end local v0    # "newValue":J
    .end local v4    # "value":J
    :cond_32
    return-void
.end method

.method private blacklist setCustomFunctionsFromConfiguration()V
    .registers 6

    .line 504
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customScalarFunctions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 505
    iget-wide v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customScalarFunctions:Landroid/util/ArrayMap;

    .line 506
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customScalarFunctions:Landroid/util/ArrayMap;

    .line 507
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/function/UnaryOperator;

    .line 505
    invoke-static {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteConnection;->nativeRegisterCustomScalarFunction(JLjava/lang/String;Ljava/util/function/UnaryOperator;)V

    .line 504
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 509
    .end local v0    # "i":I
    :cond_27
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_28
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customAggregateFunctions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_4e

    .line 510
    iget-wide v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v3, v3, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customAggregateFunctions:Landroid/util/ArrayMap;

    .line 511
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customAggregateFunctions:Landroid/util/ArrayMap;

    .line 512
    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/function/BinaryOperator;

    .line 510
    invoke-static {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteConnection;->nativeRegisterCustomAggregateFunction(JLjava/lang/String;Ljava/util/function/BinaryOperator;)V

    .line 509
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 514
    .end local v0    # "i":I
    :cond_4e
    return-void
.end method

.method private greylist-max-o setForeignKeyModeFromConfiguration()V
    .registers 8

    .line 328
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v0, :cond_30

    .line 329
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v0, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    if-eqz v0, :cond_d

    const-wide/16 v0, 0x1

    goto :goto_f

    :cond_d
    const-wide/16 v0, 0x0

    .line 330
    .local v0, "newValue":J
    :goto_f
    const-string v2, "PRAGMA foreign_keys"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v4

    .line 331
    .local v4, "value":J
    cmp-long v2, v4, v0

    if-eqz v2, :cond_30

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PRAGMA foreign_keys="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 335
    .end local v0    # "newValue":J
    .end local v4    # "value":J
    :cond_30
    return-void
.end method

.method private blacklist setJournalFromConfiguration()V
    .registers 3

    .line 338
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v0, :cond_11

    .line 339
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveJournalMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnection;->setJournalMode(Ljava/lang/String;)V

    .line 340
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->maybeTruncateWalFile()V

    goto :goto_16

    .line 343
    :cond_11
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->shouldTruncateWalFile:Z

    .line 345
    :goto_16
    return-void
.end method

.method private greylist-max-o setJournalMode(Ljava/lang/String;)V
    .registers 6
    .param p1, "newValue"    # Ljava/lang/String;

    .line 415
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 417
    return-void

    .line 419
    :cond_7
    const-string v0, "PRAGMA journal_mode"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6a

    .line 422
    :try_start_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PRAGMA journal_mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v1}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    move-result-object v1

    .line 423
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_2f
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_14 .. :try_end_2f} :catch_33

    if-eqz v2, :cond_32

    .line 424
    return-void

    .line 431
    .end local v1    # "result":Ljava/lang/String;
    :cond_32
    goto :goto_34

    .line 428
    :catch_33
    move-exception v1

    .line 444
    :goto_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not change the database journal mode of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' from \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' to \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' because the database is locked.  This usually means that there are other open connections to the database which prevents the database from enabling or disabling write-ahead logging mode.  Proceeding without changing the journal mode."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SQLiteConnection"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_6a
    return-void
.end method

.method private greylist-max-o setJournalSizeLimit()V
    .registers 8

    .line 318
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v0

    if-nez v0, :cond_32

    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v0, :cond_32

    .line 319
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getJournalSizeLimit()I

    move-result v0

    int-to-long v0, v0

    .line 320
    .local v0, "newValue":J
    const-string v2, "PRAGMA journal_size_limit"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v4

    .line 321
    .local v4, "value":J
    cmp-long v2, v4, v0

    if-eqz v2, :cond_32

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PRAGMA journal_size_limit="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    .line 325
    .end local v0    # "newValue":J
    .end local v4    # "value":J
    :cond_32
    return-void
.end method

.method private greylist-max-o setLocaleFromConfiguration()V
    .registers 10

    .line 454
    const-string v0, "COMMIT"

    const-string v1, "ROLLBACK"

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->openFlags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_d

    .line 455
    return-void

    .line 459
    :cond_d
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 460
    .local v2, "newLocale":Ljava/lang/String;
    iget-wide v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v3, v4, v2}, Landroid/database/sqlite/SQLiteConnection;->nativeRegisterLocalizedCollators(JLjava/lang/String;)V

    .line 462
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v3

    if-nez v3, :cond_25

    .line 463
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->checkDatabaseWiped()V

    .line 468
    :cond_25
    iget-boolean v3, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-eqz v3, :cond_2a

    .line 469
    return-void

    .line 474
    :cond_2a
    :try_start_2a
    const-string v3, "CREATE TABLE IF NOT EXISTS android_metadata (locale TEXT)"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 477
    const-string v3, "SELECT locale FROM android_metadata UNION SELECT NULL ORDER BY locale DESC LIMIT 1"

    invoke-virtual {p0, v3, v4, v4}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    move-result-object v3

    .line 479
    .local v3, "oldLocale":Ljava/lang/String;
    if-eqz v3, :cond_3f

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 480
    return-void

    .line 484
    :cond_3f
    const-string v5, "BEGIN"

    invoke-virtual {p0, v5, v4, v4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_44
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2a .. :try_end_44} :catch_9d
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_44} :catch_6f

    .line 485
    const/4 v5, 0x0

    .line 487
    .local v5, "success":Z
    :try_start_45
    const-string v6, "DELETE FROM android_metadata"

    invoke-virtual {p0, v6, v4, v4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 488
    const-string v6, "INSERT INTO android_metadata (locale) VALUES(?)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-virtual {p0, v6, v7, v4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 490
    const-string v6, "REINDEX LOCALIZED"

    invoke-virtual {p0, v6, v4, v4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    :try_end_5a
    .catchall {:try_start_45 .. :try_end_5a} :catchall_65

    .line 491
    const/4 v5, 0x1

    .line 493
    if-eqz v5, :cond_5e

    goto :goto_5f

    :cond_5e
    move-object v0, v1

    :goto_5f
    :try_start_5f
    invoke-virtual {p0, v0, v4, v4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 494
    nop

    .line 500
    .end local v3    # "oldLocale":Ljava/lang/String;
    .end local v5    # "success":Z
    nop

    .line 501
    return-void

    .line 493
    .restart local v3    # "oldLocale":Ljava/lang/String;
    .restart local v5    # "success":Z
    :catchall_65
    move-exception v6

    if-eqz v5, :cond_69

    goto :goto_6a

    :cond_69
    move-object v0, v1

    :goto_6a
    invoke-virtual {p0, v0, v4, v4}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 494
    nop

    .end local v2    # "newLocale":Ljava/lang/String;
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    throw v6
    :try_end_6f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5f .. :try_end_6f} :catch_9d
    .catch Ljava/lang/RuntimeException; {:try_start_5f .. :try_end_6f} :catch_6f

    .line 497
    .end local v3    # "oldLocale":Ljava/lang/String;
    .end local v5    # "success":Z
    .restart local v2    # "newLocale":Ljava/lang/String;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    :catch_6f
    move-exception v0

    .line 498
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v1, Landroid/database/sqlite/SQLiteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to change locale for db \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' to \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 495
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_9d
    move-exception v0

    .line 496
    .local v0, "ex":Landroid/database/sqlite/SQLiteException;
    throw v0
.end method

.method private greylist-max-o setPageSize()V
    .registers 8

    .line 298
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->isInMemoryDb()Z

    move-result v0

    if-nez v0, :cond_32

    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v0, :cond_32

    .line 299
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->getDefaultPageSize()I

    move-result v0

    int-to-long v0, v0

    .line 300
    .local v0, "newValue":J
    const-string v2, "PRAGMA page_size"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v4

    .line 301
    .local v4, "value":J
    cmp-long v2, v4, v0

    if-eqz v2, :cond_32

    .line 302
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PRAGMA page_size="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v3, v3}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 305
    .end local v0    # "newValue":J
    .end local v4    # "value":J
    :cond_32
    return-void
.end method

.method private greylist-max-o setSyncMode(Ljava/lang/String;)V
    .registers 6
    .param p1, "newValue"    # Ljava/lang/String;

    .line 393
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 395
    return-void

    .line 397
    :cond_7
    const-string v0, "PRAGMA synchronous"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/database/sqlite/SQLiteConnection;->executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/database/sqlite/SQLiteConnection;->canonicalizeSyncMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 399
    invoke-static {p1}, Landroid/database/sqlite/SQLiteConnection;->canonicalizeSyncMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 398
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PRAGMA synchronous="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v1}, Landroid/database/sqlite/SQLiteConnection;->execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 402
    :cond_32
    return-void
.end method

.method private blacklist setSyncModeFromConfiguration()V
    .registers 2

    .line 348
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsReadOnlyConnection:Z

    if-nez v0, :cond_d

    .line 349
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveSyncMode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnection;->setSyncMode(Ljava/lang/String;)V

    .line 351
    :cond_d
    return-void
.end method

.method private greylist-max-o throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    .registers 4
    .param p1, "statement"    # Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    .line 1203
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    if-eqz v0, :cond_9

    goto :goto_11

    .line 1204
    :cond_9
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Cannot execute this statement because it might modify the database but the connection is read-only."

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1207
    :cond_11
    :goto_11
    return-void
.end method

.method private static greylist-max-o trimSqlForDisplay(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "sql"    # Ljava/lang/String;

    .line 1391
    const-string v0, "[\\s]*\\n+[\\s]*"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method greylist-max-o close()V
    .registers 2

    .line 217
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnection;->dispose(Z)V

    .line 218
    return-void
.end method

.method greylist-max-o collectDbStats(Ljava/util/ArrayList;)V
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/database/sqlite/SQLiteDebug$DbStats;",
            ">;)V"
        }
    .end annotation

    .line 1291
    .local p1, "dbStatsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDebug$DbStats;>;"
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    const-string v11, "PRAGMA "

    iget-wide v0, v9, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteConnection;->nativeGetDbLookaside(J)I

    move-result v12

    .line 1292
    .local v12, "lookaside":I
    const-wide/16 v1, 0x0

    .line 1293
    .local v1, "pageCount":J
    const-wide/16 v3, 0x0

    .line 1295
    .local v3, "pageSize":J
    const/4 v13, 0x0

    :try_start_11
    const-string v0, "PRAGMA page_count;"

    invoke-virtual {v9, v0, v13, v13}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v5

    move-wide v1, v5

    .line 1296
    const-string v0, "PRAGMA page_size;"

    invoke-virtual {v9, v0, v13, v13}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v5
    :try_end_1e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_1e} :catch_23

    move-wide v3, v5

    .line 1299
    move-wide v14, v1

    move-wide/from16 v16, v3

    goto :goto_27

    .line 1297
    :catch_23
    move-exception v0

    move-wide v14, v1

    move-wide/from16 v16, v3

    .line 1300
    .end local v1    # "pageCount":J
    .end local v3    # "pageSize":J
    .local v14, "pageCount":J
    .local v16, "pageSize":J
    :goto_27
    move-object/from16 v1, p0

    move v2, v12

    move-wide v3, v14

    move-wide/from16 v5, v16

    invoke-direct/range {v1 .. v6}, Landroid/database/sqlite/SQLiteConnection;->getMainDbStatsUnsafe(IJJ)Landroid/database/sqlite/SQLiteDebug$DbStats;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1305
    new-instance v0, Landroid/database/CursorWindow;

    const-string v1, "collectDbStats"

    invoke-direct {v0, v1}, Landroid/database/CursorWindow;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    .line 1307
    .local v8, "window":Landroid/database/CursorWindow;
    :try_start_3c
    const-string v2, "PRAGMA database_list;"
    :try_end_3e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3c .. :try_end_3e} :catch_f1
    .catchall {:try_start_3c .. :try_end_3e} :catchall_eb

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object v4, v8

    move-object/from16 v18, v8

    .end local v8    # "window":Landroid/database/CursorWindow;
    .local v18, "window":Landroid/database/CursorWindow;
    move-object v8, v0

    :try_start_49
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteConnection;->executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Landroid/database/CursorWindow;IIZLandroid/os/CancellationSignal;)I

    .line 1308
    const/4 v0, 0x1

    move v1, v0

    .local v1, "i":I
    :goto_4e
    invoke-virtual/range {v18 .. v18}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v0
    :try_end_52
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_49 .. :try_end_52} :catch_e7
    .catchall {:try_start_49 .. :try_end_52} :catchall_e3

    if-ge v1, v0, :cond_e0

    .line 1309
    const/4 v0, 0x1

    move-object/from16 v2, v18

    .end local v18    # "window":Landroid/database/CursorWindow;
    .local v2, "window":Landroid/database/CursorWindow;
    :try_start_57
    invoke-virtual {v2, v1, v0}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 1310
    .local v3, "name":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-virtual {v2, v1, v0}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v0
    :try_end_61
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_57 .. :try_end_61} :catch_de
    .catchall {:try_start_57 .. :try_end_61} :catchall_dc

    move-object v4, v0

    .line 1311
    .local v4, "path":Ljava/lang/String;
    const-wide/16 v14, 0x0

    .line 1312
    const-wide/16 v16, 0x0

    .line 1314
    :try_start_66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".page_count;"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0, v13, v13}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v5

    move-wide v14, v5

    .line 1315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".page_size;"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0, v13, v13}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v5
    :try_end_9d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_66 .. :try_end_9d} :catch_a0
    .catchall {:try_start_66 .. :try_end_9d} :catchall_dc

    .line 1318
    .end local v16    # "pageSize":J
    .local v5, "pageSize":J
    move-wide/from16 v16, v5

    goto :goto_a1

    .line 1316
    .end local v5    # "pageSize":J
    .restart local v16    # "pageSize":J
    :catch_a0
    move-exception v0

    .line 1319
    :goto_a1
    :try_start_a1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "  (attached) "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1320
    .local v0, "label":Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_bb

    .line 1321
    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1323
    :cond_bb
    new-instance v5, Landroid/database/sqlite/SQLiteDebug$DbStats;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v18, v5

    move-wide/from16 v20, v14

    move-wide/from16 v22, v16

    invoke-direct/range {v18 .. v27}, Landroid/database/sqlite/SQLiteDebug$DbStats;-><init>(Ljava/lang/String;JJIIII)V

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_d5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a1 .. :try_end_d5} :catch_de
    .catchall {:try_start_a1 .. :try_end_d5} :catchall_dc

    .line 1308
    nop

    .end local v0    # "label":Ljava/lang/StringBuilder;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "path":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v18, v2

    goto/16 :goto_4e

    .line 1328
    .end local v1    # "i":I
    :catchall_dc
    move-exception v0

    goto :goto_ed

    .line 1325
    :catch_de
    move-exception v0

    goto :goto_f3

    .line 1308
    .end local v2    # "window":Landroid/database/CursorWindow;
    .restart local v1    # "i":I
    .restart local v18    # "window":Landroid/database/CursorWindow;
    :cond_e0
    move-object/from16 v2, v18

    .end local v1    # "i":I
    .end local v18    # "window":Landroid/database/CursorWindow;
    .restart local v2    # "window":Landroid/database/CursorWindow;
    goto :goto_f3

    .line 1328
    .end local v2    # "window":Landroid/database/CursorWindow;
    .restart local v18    # "window":Landroid/database/CursorWindow;
    :catchall_e3
    move-exception v0

    move-object/from16 v2, v18

    .end local v18    # "window":Landroid/database/CursorWindow;
    .restart local v2    # "window":Landroid/database/CursorWindow;
    goto :goto_ed

    .line 1325
    .end local v2    # "window":Landroid/database/CursorWindow;
    .restart local v18    # "window":Landroid/database/CursorWindow;
    :catch_e7
    move-exception v0

    move-object/from16 v2, v18

    .end local v18    # "window":Landroid/database/CursorWindow;
    .restart local v2    # "window":Landroid/database/CursorWindow;
    goto :goto_f3

    .line 1328
    .end local v2    # "window":Landroid/database/CursorWindow;
    .restart local v8    # "window":Landroid/database/CursorWindow;
    :catchall_eb
    move-exception v0

    move-object v2, v8

    .end local v8    # "window":Landroid/database/CursorWindow;
    .restart local v2    # "window":Landroid/database/CursorWindow;
    :goto_ed
    invoke-virtual {v2}, Landroid/database/CursorWindow;->close()V

    .line 1329
    throw v0

    .line 1325
    .end local v2    # "window":Landroid/database/CursorWindow;
    .restart local v8    # "window":Landroid/database/CursorWindow;
    :catch_f1
    move-exception v0

    move-object v2, v8

    .line 1328
    .end local v8    # "window":Landroid/database/CursorWindow;
    .restart local v2    # "window":Landroid/database/CursorWindow;
    :goto_f3
    invoke-virtual {v2}, Landroid/database/CursorWindow;->close()V

    .line 1329
    nop

    .line 1330
    return-void
.end method

.method greylist-max-o collectDbStatsUnsafe(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/database/sqlite/SQLiteDebug$DbStats;",
            ">;)V"
        }
    .end annotation

    .line 1339
    .local p1, "dbStatsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/sqlite/SQLiteDebug$DbStats;>;"
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteConnection;->getMainDbStatsUnsafe(IJJ)Landroid/database/sqlite/SQLiteDebug$DbStats;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1340
    return-void
.end method

.method greylist-max-o describeCurrentOperationUnsafe()Ljava/lang/String;
    .registers 2

    .line 1281
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->describeCurrentOperation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o dump(Landroid/util/Printer;Z)V
    .registers 3
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "verbose"    # Z

    .line 1234
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteConnection;->dumpUnsafe(Landroid/util/Printer;Z)V

    .line 1235
    return-void
.end method

.method greylist-max-o dumpUnsafe(Landroid/util/Printer;Z)V
    .registers 6
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "verbose"    # Z

    .line 1252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1253
    if-eqz p2, :cond_3c

    .line 1254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  connectionPtr: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1256
    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isPrimaryConnection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  onlyAllowReadOnlyOperations: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/database/sqlite/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 1259
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->dump(Landroid/util/Printer;)V

    .line 1261
    if-eqz p2, :cond_78

    .line 1262
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->dump(Landroid/util/Printer;)V

    .line 1264
    :cond_78
    return-void
.end method

.method public greylist-max-o execute(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V
    .registers 11
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 715
    if-eqz p1, :cond_57

    .line 719
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string v1, "execute"

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 721
    .local v0, "cookie":I
    nop

    .line 722
    :try_start_b
    invoke-static {p1}, Landroid/database/DatabaseUtils;->getSqlStatementType(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 723
    .local v1, "isPragmaStmt":Z
    :goto_15
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v2
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_19} :catch_49
    .catchall {:try_start_b .. :try_end_19} :catchall_47

    .line 725
    .local v2, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_19
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 726
    invoke-direct {p0, v2, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 727
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 728
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_41

    .line 730
    :try_start_25
    iget-wide v3, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v5, v2, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v3, v4, v5, v6, v1}, Landroid/database/sqlite/SQLiteConnection;->nativeExecute(JJZ)V
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_3b

    .line 732
    :try_start_2c
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_41

    .line 733
    nop

    .line 735
    :try_start_30
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_33} :catch_49
    .catchall {:try_start_30 .. :try_end_33} :catchall_47

    .line 736
    nop

    .line 741
    .end local v1    # "isPragmaStmt":Z
    .end local v2    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 742
    nop

    .line 743
    return-void

    .line 732
    .restart local v1    # "isPragmaStmt":Z
    .restart local v2    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catchall_3b
    move-exception v3

    :try_start_3c
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    .line 733
    nop

    .end local v0    # "cookie":I
    .end local v1    # "isPragmaStmt":Z
    .end local v2    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v3
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_41

    .line 735
    .restart local v0    # "cookie":I
    .restart local v1    # "isPragmaStmt":Z
    .restart local v2    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_41
    move-exception v3

    :try_start_42
    invoke-direct {p0, v2}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 736
    nop

    .end local v0    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v3
    :try_end_47
    .catch Ljava/lang/RuntimeException; {:try_start_42 .. :try_end_47} :catch_49
    .catchall {:try_start_42 .. :try_end_47} :catchall_47

    .line 741
    .end local v1    # "isPragmaStmt":Z
    .end local v2    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v0    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_47
    move-exception v1

    goto :goto_51

    .line 737
    :catch_49
    move-exception v1

    .line 738
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_4a
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 739
    nop

    .end local v0    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v1
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_47

    .line 741
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_51
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 742
    throw v1

    .line 716
    .end local v0    # "cookie":I
    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o executeForBlobFileDescriptor(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .registers 10
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 852
    if-eqz p1, :cond_52

    .line 856
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string v1, "executeForBlobFileDescriptor"

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 859
    .local v0, "cookie":I
    :try_start_a
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_e} :catch_44
    .catchall {:try_start_a .. :try_end_e} :catchall_42

    .line 861
    .local v1, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_e
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 862
    invoke-direct {p0, v1, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 863
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 864
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_3c

    .line 866
    :try_start_1a
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v4, v1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForBlobFileDescriptor(JJ)I

    move-result v2

    .line 868
    .local v2, "fd":I
    if-ltz v2, :cond_29

    invoke-static {v2}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_36

    goto :goto_2a

    :cond_29
    const/4 v3, 0x0

    .line 870
    :goto_2a
    :try_start_2a
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_3c

    .line 873
    :try_start_2d
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_30
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_30} :catch_44
    .catchall {:try_start_2d .. :try_end_30} :catchall_42

    .line 879
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 868
    return-object v3

    .line 870
    .end local v2    # "fd":I
    :catchall_36
    move-exception v2

    :try_start_37
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    .line 871
    nop

    .end local v0    # "cookie":I
    .end local v1    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v2
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_3c

    .line 873
    .restart local v0    # "cookie":I
    .restart local v1    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_3c
    move-exception v2

    :try_start_3d
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 874
    nop

    .end local v0    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v2
    :try_end_42
    .catch Ljava/lang/RuntimeException; {:try_start_3d .. :try_end_42} :catch_44
    .catchall {:try_start_3d .. :try_end_42} :catchall_42

    .line 879
    .end local v1    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v0    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_42
    move-exception v1

    goto :goto_4c

    .line 875
    :catch_44
    move-exception v1

    .line 876
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_45
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 877
    nop

    .end local v0    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v1
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_42

    .line 879
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_4c
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 880
    throw v1

    .line 853
    .end local v0    # "cookie":I
    :cond_52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o executeForChangedRowCount(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)I
    .registers 12
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 898
    const-string v0, "changedRows="

    if-eqz p1, :cond_81

    .line 902
    const/4 v1, 0x0

    .line 903
    .local v1, "changedRows":I
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string v3, "executeForChangedRowCount"

    invoke-virtual {v2, v3, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    .line 906
    .local v2, "cookie":I
    :try_start_d
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v3
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_11} :catch_5a
    .catchall {:try_start_d .. :try_end_11} :catchall_58

    .line 908
    .local v3, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_11
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 909
    invoke-direct {p0, v3, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 910
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 911
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_52

    .line 913
    :try_start_1d
    iget-wide v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v6, v3, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForChangedRowCount(JJ)I

    move-result v4
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_4c

    move v1, v4

    .line 915
    nop

    .line 917
    :try_start_27
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_52

    .line 920
    :try_start_2a
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_2d} :catch_5a
    .catchall {:try_start_2a .. :try_end_2d} :catchall_58

    .line 926
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 927
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    .line 915
    :cond_4b
    return v1

    .line 917
    :catchall_4c
    move-exception v4

    :try_start_4d
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    .line 918
    nop

    .end local v1    # "changedRows":I
    .end local v2    # "cookie":I
    .end local v3    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v4
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_52

    .line 920
    .restart local v1    # "changedRows":I
    .restart local v2    # "cookie":I
    .restart local v3    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_52
    move-exception v4

    :try_start_53
    invoke-direct {p0, v3}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 921
    nop

    .end local v1    # "changedRows":I
    .end local v2    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v4
    :try_end_58
    .catch Ljava/lang/RuntimeException; {:try_start_53 .. :try_end_58} :catch_5a
    .catchall {:try_start_53 .. :try_end_58} :catchall_58

    .line 926
    .end local v3    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v1    # "changedRows":I
    .restart local v2    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_58
    move-exception v3

    goto :goto_62

    .line 922
    :catch_5a
    move-exception v3

    .line 923
    .local v3, "ex":Ljava/lang/RuntimeException;
    :try_start_5b
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v2, v3}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 924
    nop

    .end local v1    # "changedRows":I
    .end local v2    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v3
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_58

    .line 926
    .end local v3    # "ex":Ljava/lang/RuntimeException;
    .restart local v1    # "changedRows":I
    .restart local v2    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_62
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 927
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    .line 929
    :cond_80
    throw v3

    .line 899
    .end local v1    # "changedRows":I
    .end local v2    # "cookie":I
    :cond_81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Landroid/database/CursorWindow;IIZLandroid/os/CancellationSignal;)I
    .registers 33
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "window"    # Landroid/database/CursorWindow;
    .param p4, "startPos"    # I
    .param p5, "requiredPos"    # I
    .param p6, "countAllRows"    # Z
    .param p7, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 1002
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v14, p4

    move-object/from16 v15, p7

    const-string v13, ", countedRows="

    const-string v12, ", filledRows="

    const-string v11, ", actualPos="

    const-string v9, "\', startPos="

    const-string/jumbo v10, "window=\'"

    if-eqz v2, :cond_1cb

    .line 1005
    if-eqz v4, :cond_1c1

    .line 1009
    invoke-virtual/range {p3 .. p3}, Landroid/database/CursorWindow;->acquireReference()V

    .line 1011
    const/16 v16, -0x1

    .line 1012
    .local v16, "actualPos":I
    const/16 v17, -0x1

    .line 1013
    .local v17, "countedRows":I
    const/16 v18, -0x1

    .line 1014
    .local v18, "filledRows":I
    :try_start_24
    iget-object v0, v1, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string v5, "executeForCursorWindow"

    invoke-virtual {v0, v5, v2, v3}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_1bb

    move v7, v0

    .line 1017
    .local v7, "cookie":I
    :try_start_2d
    invoke-direct/range {p0 .. p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v0
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_31} :catch_163
    .catchall {:try_start_2d .. :try_end_31} :catchall_154

    move-object v8, v0

    .line 1019
    .local v8, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_32
    invoke-direct {v1, v8}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1020
    invoke-direct {v1, v8, v3}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 1021
    invoke-direct {v1, v8}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1022
    invoke-direct {v1, v15}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_3e
    .catchall {:try_start_32 .. :try_end_3e} :catchall_144

    .line 1024
    :try_start_3e
    iget-wide v5, v1, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v2, v8, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_134

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    :try_start_46
    iget-wide v9, v4, Landroid/database/CursorWindow;->mWindowPtr:J
    :try_end_48
    .catchall {:try_start_46 .. :try_end_48} :catchall_12c

    move/from16 v21, v7

    move-object v14, v8

    .end local v7    # "cookie":I
    .end local v8    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .local v14, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .local v21, "cookie":I
    move-wide v7, v2

    move-object/from16 v3, v19

    move-object/from16 v2, v20

    move-object/from16 v22, v11

    move/from16 v11, p4

    move-object/from16 v23, v12

    move/from16 v12, p5

    move-object/from16 v24, v13

    move/from16 v13, p6

    :try_start_5c
    invoke-static/range {v5 .. v13}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForCursorWindow(JJJIIZ)J

    move-result-wide v5
    :try_end_60
    .catchall {:try_start_5c .. :try_end_60} :catchall_120

    .line 1027
    .local v5, "result":J
    const/16 v0, 0x20

    shr-long v7, v5, v0

    long-to-int v7, v7

    .line 1028
    .end local v16    # "actualPos":I
    .local v7, "actualPos":I
    long-to-int v8, v5

    .line 1029
    .end local v17    # "countedRows":I
    .local v8, "countedRows":I
    :try_start_66
    invoke-virtual/range {p3 .. p3}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v0
    :try_end_6a
    .catchall {:try_start_66 .. :try_end_6a} :catchall_110

    move v9, v0

    .line 1030
    .end local v18    # "filledRows":I
    .local v9, "filledRows":I
    :try_start_6b
    invoke-virtual {v4, v7}, Landroid/database/CursorWindow;->setStartPosition(I)V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_fe

    .line 1031
    nop

    .line 1033
    :try_start_6f
    invoke-direct {v1, v15}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_eb

    .line 1036
    :try_start_72
    invoke-direct {v1, v14}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_75
    .catch Ljava/lang/RuntimeException; {:try_start_72 .. :try_end_75} :catch_d8
    .catchall {:try_start_72 .. :try_end_75} :catchall_cb

    .line 1042
    :try_start_75
    iget-object v0, v1, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    move/from16 v10, v21

    .end local v21    # "cookie":I
    .local v10, "cookie":I
    invoke-virtual {v0, v10}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 1043
    iget-object v0, v1, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_92
    .catchall {:try_start_75 .. :try_end_92} :catchall_c6

    move v11, v10

    move/from16 v10, p4

    .end local v10    # "cookie":I
    .local v11, "cookie":I
    :try_start_95
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v12, v22

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v13, v23

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, v24

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v11, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V
    :try_end_be
    .catchall {:try_start_95 .. :try_end_be} :catchall_1b9

    goto :goto_c2

    .line 1042
    .end local v11    # "cookie":I
    .restart local v10    # "cookie":I
    :cond_bf
    move v11, v10

    move/from16 v10, p4

    .line 1051
    .end local v10    # "cookie":I
    .restart local v11    # "cookie":I
    :goto_c2
    invoke-virtual/range {p3 .. p3}, Landroid/database/CursorWindow;->releaseReference()V

    .line 1031
    return v8

    .line 1051
    .end local v5    # "result":J
    .end local v7    # "actualPos":I
    .end local v8    # "countedRows":I
    .end local v9    # "filledRows":I
    .end local v11    # "cookie":I
    .end local v14    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catchall_c6
    move-exception v0

    move/from16 v10, p4

    goto/16 :goto_1bd

    .line 1042
    .restart local v7    # "actualPos":I
    .restart local v8    # "countedRows":I
    .restart local v9    # "filledRows":I
    .restart local v21    # "cookie":I
    :catchall_cb
    move-exception v0

    move/from16 v10, p4

    move/from16 v11, v21

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move-object/from16 v5, v24

    .end local v21    # "cookie":I
    .restart local v11    # "cookie":I
    goto/16 :goto_179

    .line 1038
    .end local v11    # "cookie":I
    .restart local v21    # "cookie":I
    :catch_d8
    move-exception v0

    move/from16 v10, p4

    move/from16 v11, v21

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move-object/from16 v5, v24

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    .end local v21    # "cookie":I
    .restart local v11    # "cookie":I
    goto/16 :goto_16b

    .line 1036
    .end local v11    # "cookie":I
    .restart local v14    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v21    # "cookie":I
    :catchall_eb
    move-exception v0

    move/from16 v10, p4

    move/from16 v11, v21

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move-object/from16 v5, v24

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    .end local v21    # "cookie":I
    .restart local v11    # "cookie":I
    goto/16 :goto_14d

    .line 1033
    .end local v11    # "cookie":I
    .restart local v21    # "cookie":I
    :catchall_fe
    move-exception v0

    move/from16 v10, p4

    move/from16 v11, v21

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move-object/from16 v5, v24

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    .end local v21    # "cookie":I
    .restart local v11    # "cookie":I
    goto :goto_13d

    .end local v9    # "filledRows":I
    .end local v11    # "cookie":I
    .restart local v18    # "filledRows":I
    .restart local v21    # "cookie":I
    :catchall_110
    move-exception v0

    move/from16 v10, p4

    move/from16 v11, v21

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move-object/from16 v5, v24

    move/from16 v16, v7

    move/from16 v17, v8

    .end local v21    # "cookie":I
    .restart local v11    # "cookie":I
    goto :goto_13d

    .end local v7    # "actualPos":I
    .end local v8    # "countedRows":I
    .end local v11    # "cookie":I
    .restart local v16    # "actualPos":I
    .restart local v17    # "countedRows":I
    .restart local v21    # "cookie":I
    :catchall_120
    move-exception v0

    move/from16 v10, p4

    move/from16 v11, v21

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move-object/from16 v5, v24

    .end local v21    # "cookie":I
    .restart local v11    # "cookie":I
    goto :goto_13d

    .end local v11    # "cookie":I
    .end local v14    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .local v7, "cookie":I
    .local v8, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catchall_12c
    move-exception v0

    move-object v5, v13

    move v10, v14

    move-object/from16 v3, v19

    move-object/from16 v2, v20

    goto :goto_139

    :catchall_134
    move-exception v0

    move-object v3, v9

    move-object v2, v10

    move-object v5, v13

    move v10, v14

    :goto_139
    move-object v14, v8

    move-object v13, v12

    move-object v12, v11

    move v11, v7

    .end local v7    # "cookie":I
    .end local v8    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v11    # "cookie":I
    .restart local v14    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :goto_13d
    :try_start_13d
    invoke-direct {v1, v15}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    .line 1034
    nop

    .end local v11    # "cookie":I
    .end local v14    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .end local v16    # "actualPos":I
    .end local v17    # "countedRows":I
    .end local v18    # "filledRows":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "window":Landroid/database/CursorWindow;
    .end local p4    # "startPos":I
    .end local p5    # "requiredPos":I
    .end local p6    # "countAllRows":Z
    .end local p7    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v0
    :try_end_142
    .catchall {:try_start_13d .. :try_end_142} :catchall_142

    .line 1036
    .restart local v11    # "cookie":I
    .restart local v14    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v16    # "actualPos":I
    .restart local v17    # "countedRows":I
    .restart local v18    # "filledRows":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "window":Landroid/database/CursorWindow;
    .restart local p4    # "startPos":I
    .restart local p5    # "requiredPos":I
    .restart local p6    # "countAllRows":Z
    .restart local p7    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_142
    move-exception v0

    goto :goto_14d

    .end local v11    # "cookie":I
    .end local v14    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v7    # "cookie":I
    .restart local v8    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :catchall_144
    move-exception v0

    move-object v3, v9

    move-object v2, v10

    move-object v5, v13

    move v10, v14

    move-object v14, v8

    move-object v13, v12

    move-object v12, v11

    move v11, v7

    .end local v7    # "cookie":I
    .end local v8    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v11    # "cookie":I
    .restart local v14    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :goto_14d
    :try_start_14d
    invoke-direct {v1, v14}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 1037
    nop

    .end local v11    # "cookie":I
    .end local v16    # "actualPos":I
    .end local v17    # "countedRows":I
    .end local v18    # "filledRows":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "window":Landroid/database/CursorWindow;
    .end local p4    # "startPos":I
    .end local p5    # "requiredPos":I
    .end local p6    # "countAllRows":Z
    .end local p7    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v0
    :try_end_152
    .catch Ljava/lang/RuntimeException; {:try_start_14d .. :try_end_152} :catch_152
    .catchall {:try_start_14d .. :try_end_152} :catchall_172

    .line 1038
    .end local v14    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v11    # "cookie":I
    .restart local v16    # "actualPos":I
    .restart local v17    # "countedRows":I
    .restart local v18    # "filledRows":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "window":Landroid/database/CursorWindow;
    .restart local p4    # "startPos":I
    .restart local p5    # "requiredPos":I
    .restart local p6    # "countAllRows":Z
    .restart local p7    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catch_152
    move-exception v0

    goto :goto_16b

    .line 1042
    .end local v11    # "cookie":I
    .restart local v7    # "cookie":I
    :catchall_154
    move-exception v0

    move-object v3, v9

    move-object v2, v10

    move-object v5, v13

    move v10, v14

    move-object v13, v12

    move-object v12, v11

    move v11, v7

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    .end local v7    # "cookie":I
    .restart local v11    # "cookie":I
    goto :goto_179

    .line 1038
    .end local v11    # "cookie":I
    .restart local v7    # "cookie":I
    :catch_163
    move-exception v0

    move-object v3, v9

    move-object v2, v10

    move-object v5, v13

    move v10, v14

    move-object v13, v12

    move-object v12, v11

    move v11, v7

    .line 1039
    .end local v7    # "cookie":I
    .local v0, "ex":Ljava/lang/RuntimeException;
    .restart local v11    # "cookie":I
    :goto_16b
    :try_start_16b
    iget-object v6, v1, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v6, v11, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 1040
    nop

    .end local v11    # "cookie":I
    .end local v16    # "actualPos":I
    .end local v17    # "countedRows":I
    .end local v18    # "filledRows":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "window":Landroid/database/CursorWindow;
    .end local p4    # "startPos":I
    .end local p5    # "requiredPos":I
    .end local p6    # "countAllRows":Z
    .end local p7    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v0
    :try_end_172
    .catchall {:try_start_16b .. :try_end_172} :catchall_172

    .line 1042
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .restart local v11    # "cookie":I
    .restart local v16    # "actualPos":I
    .restart local v17    # "countedRows":I
    .restart local v18    # "filledRows":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "window":Landroid/database/CursorWindow;
    .restart local p4    # "startPos":I
    .restart local p5    # "requiredPos":I
    .restart local p6    # "countAllRows":Z
    .restart local p7    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_172
    move-exception v0

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    .end local v16    # "actualPos":I
    .end local v17    # "countedRows":I
    .end local v18    # "filledRows":I
    .local v7, "actualPos":I
    .local v8, "countedRows":I
    .restart local v9    # "filledRows":I
    :goto_179
    :try_start_179
    iget-object v6, v1, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v6, v11}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperationDeferLog(I)Z

    move-result v6

    if-eqz v6, :cond_1b7

    .line 1043
    iget-object v6, v1, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v11, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->logOperation(ILjava/lang/String;)V

    .line 1049
    :cond_1b7
    nop

    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "window":Landroid/database/CursorWindow;
    .end local p4    # "startPos":I
    .end local p5    # "requiredPos":I
    .end local p6    # "countAllRows":Z
    .end local p7    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v0
    :try_end_1b9
    .catchall {:try_start_179 .. :try_end_1b9} :catchall_1b9

    .line 1051
    .end local v7    # "actualPos":I
    .end local v8    # "countedRows":I
    .end local v9    # "filledRows":I
    .end local v11    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "window":Landroid/database/CursorWindow;
    .restart local p4    # "startPos":I
    .restart local p5    # "requiredPos":I
    .restart local p6    # "countAllRows":Z
    .restart local p7    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_1b9
    move-exception v0

    goto :goto_1bd

    :catchall_1bb
    move-exception v0

    move v10, v14

    :goto_1bd
    invoke-virtual/range {p3 .. p3}, Landroid/database/CursorWindow;->releaseReference()V

    .line 1052
    throw v0

    .line 1006
    :cond_1c1
    move v10, v14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "window must not be null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1003
    :cond_1cb
    move v10, v14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "sql must not be null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o executeForLastInsertedRowId(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J
    .registers 10
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 947
    if-eqz p1, :cond_4a

    .line 951
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string v1, "executeForLastInsertedRowId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 954
    .local v0, "cookie":I
    :try_start_a
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_e} :catch_3c
    .catchall {:try_start_a .. :try_end_e} :catchall_3a

    .line 956
    .local v1, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_e
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 957
    invoke-direct {p0, v1, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 958
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 959
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_34

    .line 961
    :try_start_1a
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v4, v1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForLastInsertedRowId(JJ)J

    move-result-wide v2
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_2e

    .line 964
    :try_start_22
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_34

    .line 967
    :try_start_25
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_28} :catch_3c
    .catchall {:try_start_25 .. :try_end_28} :catchall_3a

    .line 973
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 961
    return-wide v2

    .line 964
    :catchall_2e
    move-exception v2

    :try_start_2f
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    .line 965
    nop

    .end local v0    # "cookie":I
    .end local v1    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v2
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_34

    .line 967
    .restart local v0    # "cookie":I
    .restart local v1    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_34
    move-exception v2

    :try_start_35
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 968
    nop

    .end local v0    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v2
    :try_end_3a
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_3a} :catch_3c
    .catchall {:try_start_35 .. :try_end_3a} :catchall_3a

    .line 973
    .end local v1    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v0    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_3a
    move-exception v1

    goto :goto_44

    .line 969
    :catch_3c
    move-exception v1

    .line 970
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_3d
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 971
    nop

    .end local v0    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v1
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_3a

    .line 973
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_44
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 974
    throw v1

    .line 948
    .end local v0    # "cookie":I
    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J
    .registers 10
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 760
    if-eqz p1, :cond_50

    .line 764
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string v1, "executeForLong"

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 766
    .local v0, "cookie":I
    :try_start_a
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_e} :catch_42
    .catchall {:try_start_a .. :try_end_e} :catchall_40

    .line 768
    .local v1, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_e
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 769
    invoke-direct {p0, v1, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 770
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 771
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_3a

    .line 773
    :try_start_1a
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v4, v1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForLong(JJ)J

    move-result-wide v2

    .line 774
    .local v2, "ret":J
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v2, v3}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->setResult(J)V
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_34

    .line 775
    nop

    .line 777
    :try_start_28
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_3a

    .line 780
    :try_start_2b
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_2e
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2e} :catch_42
    .catchall {:try_start_2b .. :try_end_2e} :catchall_40

    .line 786
    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 775
    return-wide v2

    .line 777
    .end local v2    # "ret":J
    :catchall_34
    move-exception v2

    :try_start_35
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    .line 778
    nop

    .end local v0    # "cookie":I
    .end local v1    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v2
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_3a

    .line 780
    .restart local v0    # "cookie":I
    .restart local v1    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_3a
    move-exception v2

    :try_start_3b
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 781
    nop

    .end local v0    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v2
    :try_end_40
    .catch Ljava/lang/RuntimeException; {:try_start_3b .. :try_end_40} :catch_42
    .catchall {:try_start_3b .. :try_end_40} :catchall_40

    .line 786
    .end local v1    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v0    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_40
    move-exception v1

    goto :goto_4a

    .line 782
    :catch_42
    move-exception v1

    .line 783
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_43
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 784
    nop

    .end local v0    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v1
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_40

    .line 786
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_4a
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 787
    throw v1

    .line 761
    .end local v0    # "cookie":I
    :cond_50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o executeForString(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)Ljava/lang/String;
    .registers 10
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "bindArgs"    # [Ljava/lang/Object;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .line 805
    if-eqz p1, :cond_50

    .line 809
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const-string v1, "executeForString"

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 811
    .local v0, "cookie":I
    :try_start_a
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v1
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_e} :catch_42
    .catchall {:try_start_a .. :try_end_e} :catchall_40

    .line 813
    .local v1, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    :try_start_e
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->throwIfStatementForbidden(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 814
    invoke-direct {p0, v1, p2}, Landroid/database/sqlite/SQLiteConnection;->bindArguments(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;[Ljava/lang/Object;)V

    .line 815
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->applyBlockGuardPolicy(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 816
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->attachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_3a

    .line 818
    :try_start_1a
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v4, v1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteConnection;->nativeExecuteForString(JJ)Ljava/lang/String;

    move-result-object v2

    .line 819
    .local v2, "ret":Ljava/lang/String;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->setResult(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_34

    .line 820
    nop

    .line 822
    :try_start_28
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_3a

    .line 825
    :try_start_2b
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_2e
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2e} :catch_42
    .catchall {:try_start_2b .. :try_end_2e} :catchall_40

    .line 831
    iget-object v3, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 820
    return-object v2

    .line 822
    .end local v2    # "ret":Ljava/lang/String;
    :catchall_34
    move-exception v2

    :try_start_35
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteConnection;->detachCancellationSignal(Landroid/os/CancellationSignal;)V

    .line 823
    nop

    .end local v0    # "cookie":I
    .end local v1    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v2
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_3a

    .line 825
    .restart local v0    # "cookie":I
    .restart local v1    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_3a
    move-exception v2

    :try_start_3b
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 826
    nop

    .end local v0    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v2
    :try_end_40
    .catch Ljava/lang/RuntimeException; {:try_start_3b .. :try_end_40} :catch_42
    .catchall {:try_start_3b .. :try_end_40} :catchall_40

    .line 831
    .end local v1    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    .restart local v0    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :catchall_40
    move-exception v1

    goto :goto_4a

    .line 827
    :catch_42
    move-exception v1

    .line 828
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_43
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 829
    nop

    .end local v0    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "bindArgs":[Ljava/lang/Object;
    .end local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    throw v1
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_40

    .line 831
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "bindArgs":[Ljava/lang/Object;
    .restart local p3    # "cancellationSignal":Landroid/os/CancellationSignal;
    :goto_4a
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 832
    throw v1

    .line 806
    .end local v0    # "cookie":I
    :cond_50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 188
    :try_start_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    if-eqz v0, :cond_f

    iget-wide v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_f

    .line 189
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteConnectionPool;->onConnectionLeaked()V

    .line 192
    :cond_f
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteConnection;->dispose(Z)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_18

    .line 194
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 195
    nop

    .line 196
    return-void

    .line 194
    :catchall_18
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 195
    throw v0
.end method

.method public greylist-max-o getConnectionId()I
    .registers 2

    .line 631
    iget v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionId:I

    return v0
.end method

.method greylist-max-o isPreparedStatementInCache(Ljava/lang/String;)Z
    .registers 3
    .param p1, "sql"    # Ljava/lang/String;

    .line 623
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public greylist-max-o isPrimaryConnection()Z
    .registers 2

    .line 639
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mIsPrimaryConnection:Z

    return v0
.end method

.method public whitelist onCancel()V
    .registers 3

    .line 1155
    iget-wide v0, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    invoke-static {v0, v1}, Landroid/database/sqlite/SQLiteConnection;->nativeCancel(J)V

    .line 1156
    return-void
.end method

.method public greylist-max-o prepare(Ljava/lang/String;Landroid/database/sqlite/SQLiteStatementInfo;)V
    .registers 12
    .param p1, "sql"    # Ljava/lang/String;
    .param p2, "outStatementInfo"    # Landroid/database/sqlite/SQLiteStatementInfo;

    .line 667
    if-eqz p1, :cond_60

    .line 671
    iget-object v0, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    const/4 v1, 0x0

    const-string/jumbo v2, "prepare"

    invoke-virtual {v0, v2, p1, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->beginOperation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 673
    .local v0, "cookie":I
    :try_start_c
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteConnection;->acquirePreparedStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteConnection$PreparedStatement;

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_10} :catch_52
    .catchall {:try_start_c .. :try_end_10} :catchall_50

    .line 675
    .local v1, "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    if-eqz p2, :cond_45

    .line 676
    :try_start_12
    iget v2, v1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mNumParameters:I

    iput v2, p2, Landroid/database/sqlite/SQLiteStatementInfo;->numParameters:I

    .line 677
    iget-boolean v2, v1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mReadOnly:Z

    iput-boolean v2, p2, Landroid/database/sqlite/SQLiteStatementInfo;->readOnly:Z

    .line 679
    iget-wide v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v4, v1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteConnection;->nativeGetColumnCount(JJ)I

    move-result v2

    .line 681
    .local v2, "columnCount":I
    if-nez v2, :cond_29

    .line 682
    sget-object v3, Landroid/database/sqlite/SQLiteConnection;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v3, p2, Landroid/database/sqlite/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;

    goto :goto_45

    .line 684
    :cond_29
    new-array v3, v2, [Ljava/lang/String;

    iput-object v3, p2, Landroid/database/sqlite/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;

    .line 685
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2e
    if-ge v3, v2, :cond_45

    .line 686
    iget-object v4, p2, Landroid/database/sqlite/SQLiteStatementInfo;->columnNames:[Ljava/lang/String;

    iget-wide v5, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionPtr:J

    iget-wide v7, v1, Landroid/database/sqlite/SQLiteConnection$PreparedStatement;->mStatementPtr:J

    invoke-static {v5, v6, v7, v8, v3}, Landroid/database/sqlite/SQLiteConnection;->nativeGetColumnName(JJI)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3
    :try_end_3c
    .catchall {:try_start_12 .. :try_end_3c} :catchall_3f

    .line 685
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 692
    .end local v2    # "columnCount":I
    .end local v3    # "i":I
    :catchall_3f
    move-exception v2

    :try_start_40
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V

    .line 693
    nop

    .end local v0    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "outStatementInfo":Landroid/database/sqlite/SQLiteStatementInfo;
    throw v2

    .line 692
    .restart local v0    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "outStatementInfo":Landroid/database/sqlite/SQLiteStatementInfo;
    :cond_45
    :goto_45
    invoke-direct {p0, v1}, Landroid/database/sqlite/SQLiteConnection;->releasePreparedStatement(Landroid/database/sqlite/SQLiteConnection$PreparedStatement;)V
    :try_end_48
    .catch Ljava/lang/RuntimeException; {:try_start_40 .. :try_end_48} :catch_52
    .catchall {:try_start_40 .. :try_end_48} :catchall_50

    .line 693
    nop

    .line 698
    .end local v1    # "statement":Landroid/database/sqlite/SQLiteConnection$PreparedStatement;
    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 699
    nop

    .line 700
    return-void

    .line 698
    :catchall_50
    move-exception v1

    goto :goto_5a

    .line 694
    :catch_52
    move-exception v1

    .line 695
    .local v1, "ex":Ljava/lang/RuntimeException;
    :try_start_53
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0, v1}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->failOperation(ILjava/lang/Exception;)V

    .line 696
    nop

    .end local v0    # "cookie":I
    .end local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .end local p1    # "sql":Ljava/lang/String;
    .end local p2    # "outStatementInfo":Landroid/database/sqlite/SQLiteStatementInfo;
    throw v1
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_50

    .line 698
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    .restart local v0    # "cookie":I
    .restart local p0    # "this":Landroid/database/sqlite/SQLiteConnection;
    .restart local p1    # "sql":Ljava/lang/String;
    .restart local p2    # "outStatementInfo":Landroid/database/sqlite/SQLiteStatementInfo;
    :goto_5a
    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mRecentOperations:Landroid/database/sqlite/SQLiteConnection$OperationLog;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteConnection$OperationLog;->endOperation(I)V

    .line 699
    throw v1

    .line 668
    .end local v0    # "cookie":I
    :cond_60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sql must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o reconfigure(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V
    .registers 13
    .param p1, "configuration"    # Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .line 566
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    .line 569
    iget-boolean v1, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    iget-object v2, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-boolean v2, v2, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->foreignKeyConstraintsEnabled:Z

    const/4 v3, 0x1

    if-eq v1, v2, :cond_e

    move v1, v3

    goto :goto_f

    :cond_e
    move v1, v0

    .line 571
    .local v1, "foreignKeyModeChanged":Z
    :goto_f
    iget-object v2, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v4, v4, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v3

    .line 572
    .local v2, "localeChanged":Z
    iget-object v4, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customScalarFunctions:Landroid/util/ArrayMap;

    iget-object v5, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v5, v5, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customScalarFunctions:Landroid/util/ArrayMap;

    .line 573
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v3

    .line 574
    .local v4, "customScalarFunctionsChanged":Z
    iget-object v5, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customAggregateFunctions:Landroid/util/ArrayMap;

    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v6, v6, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->customAggregateFunctions:Landroid/util/ArrayMap;

    .line 575
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v3

    .line 576
    .local v5, "customAggregateFunctionsChanged":Z
    iget-object v6, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v6, v6, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->perConnectionSql:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 577
    .local v6, "oldSize":I
    iget-object v7, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->perConnectionSql:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 578
    .local v7, "newSize":I
    if-le v7, v6, :cond_41

    move v0, v3

    .line 581
    .local v0, "perConnectionSqlChanged":Z
    :cond_41
    iget-object v8, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v8, p1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->updateParametersFrom(Landroid/database/sqlite/SQLiteDatabaseConfiguration;)V

    .line 584
    iget-object v8, p0, Landroid/database/sqlite/SQLiteConnection;->mPreparedStatementCache:Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;

    iget v9, p1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->maxSqlCacheSize:I

    invoke-virtual {v8, v9}, Landroid/database/sqlite/SQLiteConnection$PreparedStatementCache;->resize(I)V

    .line 586
    if-eqz v1, :cond_52

    .line 587
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setForeignKeyModeFromConfiguration()V

    .line 590
    :cond_52
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveJournalMode()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    .line 591
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveJournalMode()Ljava/lang/String;

    move-result-object v9

    .line 590
    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    xor-int/2addr v8, v3

    .line 592
    .local v8, "journalModeChanged":Z
    if-eqz v8, :cond_66

    .line 593
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setJournalFromConfiguration()V

    .line 596
    :cond_66
    nop

    .line 597
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveSyncMode()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->resolveSyncMode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    xor-int/2addr v3, v9

    .line 598
    .local v3, "syncModeChanged":Z
    if-eqz v3, :cond_7b

    .line 599
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setSyncModeFromConfiguration()V

    .line 602
    :cond_7b
    if-eqz v2, :cond_80

    .line 603
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setLocaleFromConfiguration()V

    .line 605
    :cond_80
    if-nez v4, :cond_84

    if-eqz v5, :cond_87

    .line 606
    :cond_84
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteConnection;->setCustomFunctionsFromConfiguration()V

    .line 608
    :cond_87
    if-eqz v0, :cond_8c

    .line 609
    invoke-direct {p0, v6}, Landroid/database/sqlite/SQLiteConnection;->executePerConnectionSqlFromConfiguration(I)V

    .line 611
    :cond_8c
    return-void
.end method

.method greylist-max-o setOnlyAllowReadOnlyOperations(Z)V
    .registers 2
    .param p1, "readOnly"    # Z

    .line 617
    iput-boolean p1, p0, Landroid/database/sqlite/SQLiteConnection;->mOnlyAllowReadOnlyOperations:Z

    .line 618
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteConnection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConfiguration:Landroid/database/sqlite/SQLiteDatabaseConfiguration;

    iget-object v1, v1, Landroid/database/sqlite/SQLiteDatabaseConfiguration;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/database/sqlite/SQLiteConnection;->mConnectionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
