.class public Lmiui/stepcounter/backup/StepBackupHelper;
.super Ljava/lang/Object;
.source "StepBackupHelper.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# static fields
.field private static final blacklist DEBUG:Z = true

.field private static final blacklist JSON_FORMAT_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final blacklist JSON_FORMAT_HEADER_KEY:Ljava/lang/String; = "stepcounter_data"

.field private static final blacklist KEY_STEPCOUNTER:Ljava/lang/String; = "stepcounter"

.field private static final blacklist KEY_STEP_BEGIN_TIME:Ljava/lang/String; = "step_begin_time"

.field private static final blacklist KEY_STEP_COUNT:Ljava/lang/String; = "step_count"

.field private static final blacklist KEY_STEP_END_TIME:Ljava/lang/String; = "step_end_time"

.field private static final blacklist KEY_STEP_ID:Ljava/lang/String; = "step_id"

.field private static final blacklist KEY_STEP_MODE:Ljava/lang/String; = "step_mode"

.field private static final blacklist MD5_BYTE_SIZE:I = 0x10

.field private static final blacklist STATE_VERSION:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "StepBackupHelper"


# instance fields
.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lmiui/stepcounter/backup/StepBackupHelper;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lmiui/stepcounter/backup/StepBackupHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lmiui/stepcounter/backup/StepBackupHelper;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method

.method private blacklist generateMd5Checksum([B)[B
    .registers 4
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 220
    if-nez p1, :cond_4

    .line 221
    const/4 v0, 0x0

    return-object v0

    .line 224
    :cond_4
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 225
    .local v0, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    return-object v1
.end method

.method private blacklist getTodayBeginTime()J
    .registers 4

    .line 245
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 246
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 247
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 248
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 249
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 250
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method private blacklist readOldMd5Checksum(Landroid/os/ParcelFileDescriptor;)[B
    .registers 9
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    .line 196
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 198
    .local v0, "dataInput":Ljava/io/DataInputStream;
    const/16 v1, 0x10

    new-array v2, v1, [B

    .line 200
    .local v2, "oldMd5Checksum":[B
    :try_start_12
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 201
    .local v3, "stateVersion":I
    const/4 v4, 0x1

    if-gt v3, v4, :cond_26

    .line 205
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1a
    if-ge v4, v1, :cond_25

    .line 206
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    aput-byte v5, v2, v4

    .line 205
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .end local v4    # "i":I
    :cond_25
    goto :goto_4e

    .line 209
    :cond_26
    const-string v1, "StepBackupHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Backup state version is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (support only up to version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/io/EOFException; {:try_start_12 .. :try_end_4e} :catch_4f

    .line 214
    .end local v3    # "stateVersion":I
    :goto_4e
    goto :goto_50

    .line 212
    :catch_4f
    move-exception v1

    .line 216
    :goto_50
    return-object v2
.end method

.method private blacklist restoreFromJsonArray(Lorg/json/JSONArray;)V
    .registers 20
    .param p1, "stepEntryJSONArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 140
    move-object/from16 v0, p0

    iget-object v1, v0, Lmiui/stepcounter/backup/StepBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 141
    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v2

    .line 142
    .local v8, "valuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const-wide v2, 0x7fffffffffffffffL

    .line 143
    .local v2, "minBeginTime":J
    const-wide/16 v4, 0x0

    .line 145
    .local v4, "maxEndTime":J
    const/4 v6, 0x0

    move-wide v9, v2

    move-wide v11, v4

    .end local v2    # "minBeginTime":J
    .end local v4    # "maxEndTime":J
    .local v6, "i":I
    .local v9, "minBeginTime":J
    .local v11, "maxEndTime":J
    :goto_18
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const-string v13, "_steps"

    const-string v14, "_mode"

    const-string v15, "_end_time"

    const-string v7, "_begin_time"

    if-ge v6, v2, :cond_7d

    .line 146
    move-object/from16 v5, p1

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 148
    .local v2, "stepEntryJSON":Lorg/json/JSONObject;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 149
    .local v3, "value":Landroid/content/ContentValues;
    const-string v4, "step_begin_time"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 150
    .local v4, "beginTime":J
    const-string v0, "step_end_time"

    move-object/from16 v16, v1

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .local v16, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 151
    .local v0, "endTime":J
    move/from16 v17, v6

    .end local v6    # "i":I
    .local v17, "i":I
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 152
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v15, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 153
    const-string v6, "step_mode"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v14, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    const-string v6, "step_count"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v13, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    invoke-static {v11, v12, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 156
    invoke-static {v9, v10, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 157
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    .end local v0    # "endTime":J
    .end local v2    # "stepEntryJSON":Lorg/json/JSONObject;
    .end local v3    # "value":Landroid/content/ContentValues;
    .end local v4    # "beginTime":J
    add-int/lit8 v6, v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    .end local v17    # "i":I
    .restart local v6    # "i":I
    goto :goto_18

    .end local v16    # "resolver":Landroid/content/ContentResolver;
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_7d
    move-object/from16 v16, v1

    move/from16 v17, v6

    .line 160
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v6    # "i":I
    .restart local v16    # "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f3

    .line 161
    sget-object v3, Lmiui/stepcounter/StepSqlite;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lmiui/stepcounter/StepSqlite;->DEFAULT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v0, "_id ASC"

    move-object/from16 v2, v16

    move-object v1, v7

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 162
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_e3

    .line 163
    :goto_99
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_e0

    .line 164
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 165
    .local v2, "beginTime":J
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 166
    .local v4, "endTime":J
    cmp-long v6, v4, v9

    if-lez v6, :cond_b1

    cmp-long v6, v2, v11

    if-ltz v6, :cond_df

    .line 167
    :cond_b1
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 168
    .local v6, "value":Landroid/content/ContentValues;
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 169
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v15, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 170
    const/4 v7, 0x3

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v14, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 171
    const/4 v7, 0x4

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v13, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    .end local v2    # "beginTime":J
    .end local v4    # "endTime":J
    .end local v6    # "value":Landroid/content/ContentValues;
    :cond_df
    goto :goto_99

    .line 175
    :cond_e0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 178
    :cond_e3
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lmiui/stepcounter/backup/StepBackupHelper$1;

    move-object/from16 v3, p0

    invoke-direct {v2, v3, v8}, Lmiui/stepcounter/backup/StepBackupHelper$1;-><init>(Lmiui/stepcounter/backup/StepBackupHelper;Ljava/util/ArrayList;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 183
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 184
    .end local v0    # "cursor":Landroid/database/Cursor;
    goto :goto_fc

    .line 185
    :cond_f3
    move-object/from16 v3, p0

    const-string v0, "StepBackupHelper"

    const-string v1, "no data to restore "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :goto_fc
    return-void
.end method

.method private blacklist serializeStepCounterDataToJSON()Lorg/json/JSONObject;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 113
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 115
    .local v0, "backupJSON":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 117
    .local v1, "stepEntryJSONArray":Lorg/json/JSONArray;
    iget-object v2, p0, Lmiui/stepcounter/backup/StepBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 120
    .local v2, "resolver":Landroid/content/ContentResolver;
    sget-object v4, Lmiui/stepcounter/StepSqlite;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lmiui/stepcounter/StepSqlite;->DEFAULT_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "_id ASC"

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 121
    .local v3, "cursor":Landroid/database/Cursor;
    invoke-direct {p0}, Lmiui/stepcounter/backup/StepBackupHelper;->getTodayBeginTime()J

    move-result-wide v4

    .line 122
    .local v4, "todayBeginTime":J
    if-eqz v3, :cond_65

    .line 123
    :cond_23
    :goto_23
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_62

    .line 124
    const/4 v6, 0x2

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    cmp-long v7, v7, v4

    if-lez v7, :cond_23

    .line 125
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 126
    .local v7, "stepEntryJSON":Lorg/json/JSONObject;
    const/4 v8, 0x1

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string v10, "step_begin_time"

    invoke-virtual {v7, v10, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 127
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string v6, "step_end_time"

    invoke-virtual {v7, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 128
    const/4 v6, 0x3

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v8, "step_mode"

    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 129
    const/4 v6, 0x4

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v8, "step_count"

    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 130
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 131
    .end local v7    # "stepEntryJSON":Lorg/json/JSONObject;
    goto :goto_23

    .line 133
    :cond_62
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 135
    :cond_65
    const-string v6, "stepcounter"

    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    return-object v0
.end method

.method private blacklist writeNewMd5Checksum(Landroid/os/ParcelFileDescriptor;[B)V
    .registers 7
    .param p1, "newState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "md5Checksum"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    .line 234
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 236
    .local v0, "dataOutput":Ljava/io/DataOutputStream;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 237
    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->write([B)V

    .line 242
    return-void
.end method


# virtual methods
.method public whitelist performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .registers 11
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;

    .line 60
    const-string v0, "StepBackupHelper"

    :try_start_2
    invoke-direct {p0}, Lmiui/stepcounter/backup/StepBackupHelper;->serializeStepCounterDataToJSON()Lorg/json/JSONObject;

    move-result-object v1

    .line 62
    .local v1, "dataJSON":Lorg/json/JSONObject;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "steps count data JSON: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 67
    .local v2, "dataBytes":[B
    invoke-direct {p0, p1}, Lmiui/stepcounter/backup/StepBackupHelper;->readOldMd5Checksum(Landroid/os/ParcelFileDescriptor;)[B

    move-result-object v3

    .line 68
    .local v3, "oldMd5Checksum":[B
    invoke-direct {p0, v2}, Lmiui/stepcounter/backup/StepBackupHelper;->generateMd5Checksum([B)[B

    move-result-object v4

    .line 69
    .local v4, "newMd5Checksum":[B
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_44

    .line 70
    array-length v5, v2

    .line 71
    .local v5, "dataSize":I
    const-string v6, "stepcounter_data"

    invoke-virtual {p2, v6, v5}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 72
    invoke-virtual {p2, v2, v5}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 74
    const-string v6, "Backup successful."

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    nop

    .end local v5    # "dataSize":I
    goto :goto_49

    .line 76
    :cond_44
    const-string v5, "Old and new MD5 checksums match. Skipping backup."

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :goto_49
    invoke-direct {p0, p3, v4}, Lmiui/stepcounter/backup/StepBackupHelper;->writeNewMd5Checksum(Landroid/os/ParcelFileDescriptor;[B)V
    :try_end_4c
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_4c} :catch_4d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_4c} :catch_4d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_4c} :catch_4d

    .line 82
    .end local v1    # "dataJSON":Lorg/json/JSONObject;
    .end local v2    # "dataBytes":[B
    .end local v3    # "oldMd5Checksum":[B
    .end local v4    # "newMd5Checksum":[B
    goto :goto_64

    .line 80
    :catch_4d
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t backup stepCounter data\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_64
    return-void
.end method

.method public whitelist restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .registers 8
    .param p1, "data"    # Landroid/app/backup/BackupDataInputStream;

    .line 87
    const-string v0, "StepBackupHelper"

    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->size()I

    move-result v1

    new-array v1, v1, [B

    .line 90
    .local v1, "dataBytes":[B
    :try_start_8
    invoke-virtual {p1, v1}, Landroid/app/backup/BackupDataInputStream;->read([B)I

    .line 91
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 92
    .local v2, "dataString":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreEntity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 96
    .local v3, "dataJSON":Lorg/json/JSONObject;
    const-string v4, "stepcounter"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 97
    .local v4, "stepEntryJSONArray":Lorg/json/JSONArray;
    invoke-direct {p0, v4}, Lmiui/stepcounter/backup/StepBackupHelper;->restoreFromJsonArray(Lorg/json/JSONArray;)V

    .line 98
    const-string v5, "Restore successful."

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_3b} :catch_3d
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_3b} :catch_3d

    .line 100
    nop

    .end local v2    # "dataString":Ljava/lang/String;
    .end local v3    # "dataJSON":Lorg/json/JSONObject;
    .end local v4    # "stepEntryJSONArray":Lorg/json/JSONArray;
    goto :goto_3e

    .line 99
    :catch_3d
    move-exception v0

    .line 101
    :goto_3e
    return-void
.end method

.method public whitelist writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .registers 2
    .param p1, "newState"    # Landroid/os/ParcelFileDescriptor;

    .line 106
    return-void
.end method
