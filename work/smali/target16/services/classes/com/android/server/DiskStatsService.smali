.class public Lcom/android/server/DiskStatsService;
.super Landroid/os/Binder;
.source "DiskStatsService.java"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 63
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/server/DiskStatsService;->mContext:Landroid/content/Context;

    .line 65
    invoke-static {p1}, Lcom/android/server/storage/DiskStatsLoggingService;->schedule(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 18

    move-object/from16 v1, p2

    .line 70
    iget-object v0, p0, Lcom/android/server/DiskStatsService;->mContext:Landroid/content/Context;

    const-string v2, "DiskStatsService"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_114

    :cond_e
    const/16 v0, 0x200

    .line 73
    new-array v2, v0, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_14
    if-ge v4, v0, :cond_1c

    int-to-byte v5, v4

    .line 74
    aput-byte v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 76
    :cond_1c
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v5, "system/perftest.tmp"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    .line 82
    :try_start_2d
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_32} :catch_43
    .catchall {:try_start_2d .. :try_end_32} :catchall_40

    .line 83
    :try_start_32
    invoke-virtual {v8, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_3e
    .catchall {:try_start_32 .. :try_end_35} :catchall_3a

    .line 87
    :try_start_35
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_38

    :catch_38
    move-object v0, v7

    goto :goto_51

    :catchall_3a
    move-exception v0

    move-object p0, v0

    move-object v7, v8

    goto :goto_46

    :catch_3e
    move-exception v0

    goto :goto_4c

    :catchall_40
    move-exception v0

    move-object p0, v0

    goto :goto_46

    :catch_43
    move-exception v0

    move-object v8, v7

    goto :goto_4c

    :goto_46
    if-eqz v7, :cond_4b

    :try_start_48
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4b

    .line 88
    :catch_4b
    :cond_4b
    throw p0

    :goto_4c
    if-eqz v8, :cond_51

    .line 87
    :try_start_4e
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_51

    .line 90
    :catch_51
    :cond_51
    :goto_51
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 91
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 93
    :cond_5e
    const-string v2, "--proto"

    move-object/from16 v4, p3

    invoke-virtual {p0, v4, v2}, Lcom/android/server/DiskStatsService;->hasOption([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_94

    .line 97
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    if-eqz v0, :cond_71

    move v3, v4

    :cond_71
    const-wide v10, 0x10800000001L

    .line 99
    invoke-virtual {v1, v10, v11, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    if-eqz v0, :cond_88

    const-wide v5, 0x10900000002L

    .line 101
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_91

    :cond_88
    const-wide v10, 0x10500000003L

    sub-long/2addr v8, v5

    .line 103
    invoke-virtual {v1, v10, v11, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :goto_91
    move-object v12, v1

    move-object v11, v7

    goto :goto_b4

    :cond_94
    if-eqz v0, :cond_a3

    .line 107
    const-string v3, "Test-Error: "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b2

    .line 110
    :cond_a3
    const-string v0, "Latency: "

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sub-long/2addr v8, v5

    .line 111
    invoke-virtual {v1, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    .line 112
    const-string/jumbo v0, "ms [512B Data Write]"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_b2
    move-object v11, v1

    move-object v12, v7

    :goto_b4
    if-eqz v2, :cond_ba

    .line 117
    invoke-virtual {p0, v12}, Lcom/android/server/DiskStatsService;->reportDiskWriteSpeedProto(Landroid/util/proto/ProtoOutputStream;)V

    goto :goto_bd

    .line 119
    :cond_ba
    invoke-virtual {p0, v11}, Lcom/android/server/DiskStatsService;->reportDiskWriteSpeed(Ljava/io/PrintWriter;)V

    .line 122
    :goto_bd
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v9

    const-string v10, "Data"

    const/4 v13, 0x0

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V

    .line 124
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v9

    const-string v10, "Cache"

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V

    .line 126
    new-instance v9, Ljava/io/File;

    const-string v0, "/system"

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v10, "System"

    const/4 v13, 0x2

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V

    .line 128
    invoke-static {}, Landroid/os/Environment;->getMetadataDirectory()Ljava/io/File;

    move-result-object v9

    const-string v10, "Metadata"

    const/4 v13, 0x3

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/DiskStatsService;->reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V

    .line 131
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    move-result v0

    if-eqz v2, :cond_ff

    const-wide v5, 0x10e00000005L

    if-eqz v0, :cond_fb

    const/4 v0, 0x3

    .line 134
    invoke-virtual {v12, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_106

    .line 137
    :cond_fb
    invoke-virtual {v12, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_106

    :cond_ff
    if-eqz v0, :cond_106

    .line 141
    const-string v0, "File-based Encryption: true"

    invoke-virtual {v11, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_106
    :goto_106
    if-eqz v2, :cond_10c

    .line 145
    invoke-virtual {p0, v12}, Lcom/android/server/DiskStatsService;->reportCachedValuesProto(Landroid/util/proto/ProtoOutputStream;)V

    goto :goto_10f

    .line 147
    :cond_10c
    invoke-virtual {p0, v11}, Lcom/android/server/DiskStatsService;->reportCachedValues(Ljava/io/PrintWriter;)V

    :goto_10f
    if-eqz v2, :cond_114

    .line 151
    invoke-virtual {v12}, Landroid/util/proto/ProtoOutputStream;->flush()V

    :cond_114
    :goto_114
    return-void
.end method

.method public final getRecentPerf()I
    .registers 2

    .line 298
    const-string/jumbo p0, "storaged"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 300
    invoke-static {p0}, Landroid/os/IStoraged$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IStoraged;

    move-result-object p0

    .line 301
    invoke-interface {p0}, Landroid/os/IStoraged;->getRecentPerf()I

    move-result p0

    return p0

    .line 299
    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "storaged not found"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hasOption([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 198
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_12

    aget-object v2, p1, v1

    .line 199
    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_12
    return v0
.end method

.method public final reportCachedValues(Ljava/io/PrintWriter;)V
    .registers 5

    .line 209
    :try_start_0
    const-string p0, "/data/system/diskstats_cache.json"

    invoke-static {p0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 210
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 211
    const-string p0, "App Size: "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 212
    const-string p0, "appSize"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 213
    const-string p0, "App Data Size: "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 214
    const-string p0, "appDataSize"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 215
    const-string p0, "App Cache Size: "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 216
    const-string p0, "cacheSize"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 217
    const-string p0, "Photos Size: "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 218
    const-string/jumbo p0, "photosSize"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 219
    const-string p0, "Videos Size: "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 220
    const-string/jumbo p0, "videosSize"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 221
    const-string p0, "Audio Size: "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 222
    const-string p0, "audioSize"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 223
    const-string p0, "Downloads Size: "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 224
    const-string p0, "downloadsSize"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 225
    const-string p0, "System Size: "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 226
    const-string/jumbo p0, "systemSize"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 227
    const-string p0, "Other Size: "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 228
    const-string/jumbo p0, "otherSize"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 229
    const-string p0, "Package Names: "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 230
    const-string/jumbo p0, "packageNames"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 231
    const-string p0, "App Sizes: "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 232
    const-string p0, "appSizes"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 233
    const-string p0, "App Data Sizes: "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 234
    const-string p0, "appDataSizes"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 235
    const-string p0, "Cache Sizes: "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 236
    const-string p0, "cacheSizes"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c6} :catch_c7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_c6} :catch_c7

    return-void

    :catch_c7
    move-exception p0

    .line 238
    const-string p1, "DiskStatsService"

    const-string v0, "exception reading diskstats cache file"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final reportCachedValuesProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 18

    move-object/from16 v0, p1

    .line 244
    const-string v1, "DiskStatsService"

    :try_start_4
    const-string v2, "/data/system/diskstats_cache.json"

    invoke-static {v2}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 245
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-wide v4, 0x10b00000006L

    .line 246
    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 248
    const-string v2, "appSize"

    .line 249
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide v8, 0x10300000001L

    .line 248
    invoke-virtual {v0, v8, v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 250
    const-string v2, "appDataSize"

    .line 251
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide v8, 0x1030000000aL

    .line 250
    invoke-virtual {v0, v8, v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 252
    const-string v2, "cacheSize"

    .line 253
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide v8, 0x10300000002L

    .line 252
    invoke-virtual {v0, v8, v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 254
    const-string/jumbo v2, "photosSize"

    .line 255
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide v10, 0x10300000003L

    .line 254
    invoke-virtual {v0, v10, v11, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 256
    const-string/jumbo v2, "videosSize"

    .line 257
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide v12, 0x10300000004L

    .line 256
    invoke-virtual {v0, v12, v13, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 258
    const-string v2, "audioSize"

    .line 259
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide v14, 0x10300000005L

    .line 258
    invoke-virtual {v0, v14, v15, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 260
    const-string v2, "downloadsSize"

    .line 261
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide v14, 0x10300000006L

    .line 260
    invoke-virtual {v0, v14, v15, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 262
    const-string/jumbo v2, "systemSize"

    .line 263
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide v14, 0x10300000007L

    .line 262
    invoke-virtual {v0, v14, v15, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 264
    const-string/jumbo v2, "otherSize"

    .line 265
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide v14, 0x10300000008L

    .line 264
    invoke-virtual {v0, v14, v15, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 267
    const-string/jumbo v2, "packageNames"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 268
    const-string v6, "appSizes"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 269
    const-string v7, "appDataSizes"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 270
    const-string v14, "cacheSizes"

    invoke-virtual {v3, v14}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 271
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v14

    .line 272
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ne v14, v15, :cond_118

    .line 273
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ne v14, v15, :cond_118

    .line 274
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ne v14, v15, :cond_118

    const/4 v15, 0x0

    :goto_ca
    if-ge v15, v14, :cond_11d

    const-wide v10, 0x20b00000009L

    .line 276
    invoke-virtual {v0, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 279
    invoke-virtual {v2, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-wide v8, 0x10900000001L

    .line 278
    invoke-virtual {v0, v8, v9, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 280
    invoke-virtual {v6, v15}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v8

    const-wide v12, 0x10300000002L

    invoke-virtual {v0, v12, v13, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 281
    invoke-virtual {v7, v15}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v8

    const-wide v12, 0x10300000004L

    invoke-virtual {v0, v12, v13, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 282
    invoke-virtual {v3, v15}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v8

    const-wide v12, 0x10300000003L

    invoke-virtual {v0, v12, v13, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 284
    invoke-virtual {v0, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v15, v15, 0x1

    move-wide v10, v12

    const-wide v8, 0x10300000002L

    const-wide v12, 0x10300000004L

    goto :goto_ca

    :catch_116
    move-exception v0

    goto :goto_121

    .line 287
    :cond_118
    const-string v2, "Sizes of packageNamesArray, appSizesArray, appDataSizesArray  and cacheSizesArray are not the same"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_11d
    invoke-virtual {v0, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_120
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_120} :catch_116
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_120} :catch_116

    return-void

    .line 293
    :goto_121
    const-string v2, "exception reading diskstats cache file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final reportDiskWriteSpeed(Ljava/io/PrintWriter;)V
    .registers 7

    .line 307
    const-string v0, "DiskStatsService"

    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/DiskStatsService;->getRecentPerf()I

    move-result p0

    int-to-long v1, p0

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_18

    .line 309
    const-string p0, "Recent Disk Write Speed (kB/s) = "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    return-void

    :catch_16
    move-exception p0

    goto :goto_23

    .line 312
    :cond_18
    const-string p0, "Recent Disk Write Speed data unavailable"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    const-string p0, "Recent Disk Write Speed data unavailable!"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_22} :catch_16
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_22} :catch_16

    return-void

    .line 316
    :goto_23
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final reportDiskWriteSpeedProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 7

    .line 323
    const-string v0, "DiskStatsService"

    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/DiskStatsService;->getRecentPerf()I

    move-result p0

    int-to-long v1, p0

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_18

    const-wide v3, 0x10500000007L

    .line 325
    invoke-virtual {p1, v3, v4, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    return-void

    :catch_16
    move-exception p0

    goto :goto_1e

    .line 327
    :cond_18
    const-string p0, "Recent Disk Write Speed data unavailable!"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_1d} :catch_16
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_1d} :catch_16

    return-void

    .line 330
    :goto_1e
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final reportFreeSpace(Ljava/io/File;Ljava/lang/String;Ljava/io/PrintWriter;Landroid/util/proto/ProtoOutputStream;I)V
    .registers 16

    .line 160
    :try_start_0
    new-instance p0, Landroid/os/StatFs;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p1

    int-to-long v0, p1

    .line 162
    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p1

    int-to-long v2, p1

    .line 163
    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockCount()I

    move-result p0

    int-to-long p0, p0

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_7b

    cmp-long v4, p0, v4

    if-lez v4, :cond_7b

    const-wide/16 v4, 0x400

    if-eqz p4, :cond_51

    const-wide v6, 0x20b00000004L

    .line 170
    invoke-virtual {p4, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    const-wide v8, 0x10e00000001L

    .line 171
    invoke-virtual {p4, v8, v9, p5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    mul-long/2addr v2, v0

    .line 172
    div-long/2addr v2, v4

    const-wide v8, 0x10300000002L

    invoke-virtual {p4, v8, v9, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    mul-long/2addr p0, v0

    .line 173
    div-long/2addr p0, v4

    const-wide v0, 0x10300000003L

    invoke-virtual {p4, v0, v1, p0, p1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 174
    invoke-virtual {p4, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void

    :catch_4f
    move-exception p0

    goto :goto_a2

    .line 176
    :cond_51
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 177
    const-string p5, "-Free: "

    invoke-virtual {p3, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    mul-long v6, v2, v0

    .line 178
    div-long/2addr v6, v4

    invoke-virtual {p3, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 179
    const-string p5, "K / "

    invoke-virtual {p3, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    mul-long/2addr v0, p0

    .line 180
    div-long/2addr v0, v4

    invoke-virtual {p3, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 181
    const-string p5, "K total = "

    invoke-virtual {p3, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v0, 0x64

    mul-long/2addr v2, v0

    .line 182
    div-long/2addr v2, p0

    invoke-virtual {p3, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 183
    const-string p0, "% free"

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 165
    :cond_7b
    new-instance p5, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid stat: bsize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " avail="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " total="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p5, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p5
    :try_end_a2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_a2} :catch_4f

    :goto_a2
    if-eqz p4, :cond_a5

    goto :goto_b4

    .line 189
    :cond_a5
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 190
    const-string p1, "-Error: "

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_b4
    return-void
.end method
