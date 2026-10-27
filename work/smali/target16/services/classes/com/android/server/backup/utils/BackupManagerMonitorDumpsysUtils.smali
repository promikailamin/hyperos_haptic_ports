.class public Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;
.super Ljava/lang/Object;
.source "BackupManagerMonitorDumpsysUtils.java"


# static fields
.field public static final LOGS_RETENTION_PERIOD_MILLISEC:J


# instance fields
.field public mIsAfterRetentionPeriod:Z

.field public mIsAfterRetentionPeriodCached:Z

.field public mIsFileLargerThanSizeLimit:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 58
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->LOGS_RETENTION_PERIOD_MILLISEC:J

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsAfterRetentionPeriodCached:Z

    .line 69
    iput-boolean v0, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsFileLargerThanSizeLimit:Z

    return-void
.end method

.method public static isDateAfterNMillisec(JJJ)Z
    .registers 8

    .line 0
    cmp-long v0, p0, p2

    const/4 v1, 0x1

    if-lez v0, :cond_6

    return v1

    :cond_6
    sub-long/2addr p2, p0

    cmp-long p0, p2, p4

    if-ltz p0, :cond_c

    return v1

    :cond_c
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final addAgentLogsIfAvailable(Landroid/os/Bundle;Ljava/io/PrintWriter;)V
    .registers 8

    .line 177
    invoke-virtual {p0, p1}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->hasAgentLogging(Landroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_a2

    .line 178
    const-string p0, "\tAgent Logs:"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    const-string p0, "android.app.backup.extra.LOG_AGENT_LOGGING_RESULTS"

    const-class v0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;

    .line 180
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p0

    .line 183
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :cond_18
    if-ge v0, p1, :cond_a2

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;

    .line 184
    invoke-virtual {v1}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->getFailCount()I

    move-result v2

    invoke-virtual {v1}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->getSuccessCount()I

    move-result v3

    add-int/2addr v2, v3

    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t\tData Type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->getDataType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t\t\tItem restored: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->getSuccessCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v1}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->getErrors()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t\t\tAgent Error - Category: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", Count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6f

    :cond_a2
    return-void
.end method

.method public final addExtrasIfAvailable(Landroid/os/Bundle;Ljava/io/PrintWriter;)V
    .registers 7

    .line 213
    const-string p0, "android.app.backup.extra.LOG_EVENT_ID"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_6a

    .line 215
    const-string v0, "android.app.backup.extra.LOG_RESTORE_ANYWAY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t\tPackage supports RestoreAnyVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    :cond_2a
    const-string v0, "android.app.backup.extra.LOG_RESTORE_VERSION"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t\tPackage version on source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 223
    :cond_4a
    const-string v0, "android.app.backup.extra.LOG_EVENT_PACKAGE_FULL_VERSION"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t\tPackage version on target: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    :cond_6a
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0x48

    if-ne p0, v0, :cond_b2

    .line 233
    const-string p0, "android.app.backup.extra.V_TO_U_DENYLIST"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t\tV to U Denylist : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 235
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    :cond_92
    const-string p0, "android.app.backup.extra.V_TO_U_ALLOWLIST"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t\tV to U Allowllist : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 242
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_b2
    return-void
.end method

.method public deleteExpiredBMMEvents()Z
    .registers 3

    const/4 v0, 0x1

    .line 513
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->isAfterRetentionPeriod()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 514
    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->getBMMEventsFile()Ljava/io/File;

    move-result-object p0

    .line 515
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 516
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_15} :catch_27

    const-string v1, "BackupManagerMonitorDumpsysUtils"

    if-eqz p0, :cond_1f

    .line 517
    :try_start_19
    const-string p0, "Deleted expired BMM Events"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 519
    :cond_1f
    const-string p0, "Unable to delete expired BMM Events"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_24} :catch_27

    :cond_24
    :goto_24
    return v0

    :cond_25
    const/4 p0, 0x0

    return p0

    :catch_27
    return v0
.end method

.method public getBMMEventsFile()Ljava/io/File;
    .registers 3

    .line 253
    new-instance p0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "backup"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 254
    new-instance v0, Ljava/io/File;

    const-string v1, "bmmevents.txt"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getBMMEventsFileSizeLimit()J
    .registers 3

    .line 0
    const-wide/32 v0, 0x186a000

    return-wide v0
.end method

.method public final getId(I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_f0

    .line 395
    :pswitch_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown log event ID: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 394
    :pswitch_15
    const-string p0, "LOG_EVENT_ID_FULL_BACKUP_AGENT_PIPE_BROKEN"

    return-object p0

    .line 392
    :pswitch_18
    const-string p0, "Failed to read data from Transport"

    return-object p0

    .line 390
    :pswitch_1b
    const-string p0, "Agent failure during restore"

    return-object p0

    .line 388
    :pswitch_1e
    const-string p0, "Failed to send data to agent"

    return-object p0

    .line 386
    :pswitch_21
    const-string p0, "Agent crashed before restore data is streamed"

    return-object p0

    .line 384
    :pswitch_24
    const-string p0, "Unable to create Agent"

    return-object p0

    .line 382
    :pswitch_27
    const-string p0, "Restore data does not belong to package"

    return-object p0

    .line 380
    :pswitch_2a
    const-string p0, "Pkg accepted for restore"

    return-object p0

    .line 378
    :pswitch_2d
    const-string p0, "Skip restore at install"

    return-object p0

    .line 376
    :pswitch_30
    const-string p0, "Invoked restore at install"

    return-object p0

    .line 374
    :pswitch_33
    const-string p0, "V to U restore lists"

    return-object p0

    .line 372
    :pswitch_36
    const-string p0, "V to U restore pkg not eligible"

    return-object p0

    .line 370
    :pswitch_39
    const-string p0, "V to U restore pkg eligible"

    return-object p0

    .line 368
    :pswitch_3c
    const-string p0, "Agent failure"

    return-object p0

    .line 366
    :pswitch_3f
    const-string p0, "Restore complete"

    return-object p0

    .line 367
    :pswitch_42
    const-string p0, "Start package restore"

    return-object p0

    .line 365
    :pswitch_45
    const-string p0, "Transport error full restore"

    return-object p0

    .line 363
    :pswitch_48
    const-string p0, "Full agent error"

    return-object p0

    .line 362
    :pswitch_4b
    const-string p0, "No feeder thread"

    return-object p0

    .line 361
    :pswitch_4e
    const-string p0, "Transport error KV restore"

    return-object p0

    .line 359
    :pswitch_51
    const-string p0, "Package restore finished"

    return-object p0

    .line 357
    :pswitch_54
    const-string p0, "KV agent error"

    return-object p0

    .line 356
    :pswitch_57
    const-string p0, "No next restore target"

    return-object p0

    .line 354
    :pswitch_5a
    const-string p0, "Full restore"

    return-object p0

    .line 353
    :pswitch_5d
    const-string p0, "KV restore"

    return-object p0

    .line 352
    :pswitch_60
    const-string p0, "Unknown restore type"

    return-object p0

    .line 351
    :pswitch_63
    const-string p0, "Cannot get next package name"

    return-object p0

    .line 349
    :pswitch_66
    const-string p0, "Transport error during start restore"

    return-object p0

    .line 347
    :pswitch_69
    const-string p0, "Start restore at install"

    return-object p0

    .line 345
    :pswitch_6c
    const-string p0, "Start system restore"

    return-object p0

    .line 344
    :pswitch_6f
    const-string p0, "Agent logging results"

    return-object p0

    .line 343
    :pswitch_72
    const-string p0, "Transport non-incremental backup required"

    return-object p0

    .line 341
    :pswitch_75
    const-string p0, "Transport is null"

    return-object p0

    .line 340
    :pswitch_78
    const-string p0, "No packages"

    return-object p0

    .line 339
    :pswitch_7b
    const-string p0, "Widget unknown version"

    return-object p0

    .line 337
    :pswitch_7e
    const-string p0, "Widget metadata mismatch"

    return-object p0

    .line 335
    :pswitch_81
    const-string p0, "Corrupt manifest"

    return-object p0

    .line 334
    :pswitch_84
    const-string p0, "Full restore timeout"

    return-object p0

    .line 333
    :pswitch_87
    const-string p0, "Unknown version"

    return-object p0

    .line 332
    :pswitch_8a
    const-string p0, "Expected different package"

    return-object p0

    .line 330
    :pswitch_8d
    const-string p0, "Missing signature"

    return-object p0

    .line 329
    :pswitch_90
    const-string p0, "Cannot restore without APK"

    return-object p0

    .line 327
    :pswitch_93
    const-string p0, "APK not installed"

    return-object p0

    .line 326
    :pswitch_96
    const-string p0, "Full restore allow backup false"

    return-object p0

    .line 324
    :pswitch_99
    const-string p0, "System app no agent"

    return-object p0

    .line 323
    :pswitch_9c
    const-string p0, "Full restore signature mismatch"

    return-object p0

    .line 321
    :pswitch_9f
    const-string p0, "Version of backup older"

    return-object p0

    .line 319
    :pswitch_a2
    const-string p0, "Versions match"

    return-object p0

    .line 318
    :pswitch_a5
    const-string p0, "Restore any version"

    return-object p0

    .line 317
    :pswitch_a8
    const-string p0, "Key-value restore timeout"

    return-object p0

    .line 315
    :pswitch_ab
    const-string p0, "Can\'t find agent"

    return-object p0

    .line 314
    :pswitch_ae
    const-string p0, "Signature mismatch"

    return-object p0

    .line 313
    :pswitch_b1
    const-string p0, "App has no agent"

    return-object p0

    .line 312
    :pswitch_b4
    const-string p0, "Restore version higher"

    return-object p0

    .line 310
    :pswitch_b7
    const-string p0, "Package not present"

    return-object p0

    .line 309
    :pswitch_ba
    const-string p0, "Lost transport"

    return-object p0

    .line 308
    :pswitch_bd
    const-string p0, "PM agent has no metadata"

    return-object p0

    .line 306
    :pswitch_c0
    const-string p0, "No PM metadata received"

    return-object p0

    .line 304
    :pswitch_c3
    const-string p0, "No restore metadata available"

    return-object p0

    .line 302
    :pswitch_c6
    const-string p0, "Key-value backup cancel"

    return-object p0

    .line 300
    :pswitch_c9
    const-string p0, "Exception full backup"

    return-object p0

    .line 299
    :pswitch_cc
    const-string p0, "Quota hit preflight"

    return-object p0

    .line 298
    :pswitch_cf
    const-string p0, "Error preflight"

    return-object p0

    .line 297
    :pswitch_d2
    const-string p0, "Package transport not present"

    return-object p0

    .line 295
    :pswitch_d5
    const-string p0, "Device not provisioned"

    return-object p0

    .line 293
    :pswitch_d8
    const-string p0, "Backup disabled"

    return-object p0

    .line 292
    :pswitch_db
    const-string p0, "Package not found"

    return-object p0

    .line 291
    :pswitch_de
    const-string p0, "Package stopped"

    return-object p0

    .line 290
    :pswitch_e1
    const-string p0, "Package key-value participant"

    return-object p0

    .line 288
    :pswitch_e4
    const-string p0, "Package ineligible"

    return-object p0

    .line 287
    :pswitch_e7
    const-string p0, "No data to send"

    return-object p0

    .line 286
    :pswitch_ea
    const-string p0, "Illegal key"

    return-object p0

    .line 285
    :pswitch_ed
    const-string p0, "Full backup cancel"

    return-object p0

    :pswitch_data_f0
    .packed-switch 0x4
        :pswitch_ed
        :pswitch_ea
        :pswitch_3
        :pswitch_e7
        :pswitch_3
        :pswitch_e4
        :pswitch_e1
        :pswitch_de
        :pswitch_db
        :pswitch_d8
        :pswitch_d5
        :pswitch_d2
        :pswitch_cf
        :pswitch_3
        :pswitch_cc
        :pswitch_c9
        :pswitch_3
        :pswitch_c6
        :pswitch_c3
        :pswitch_c0
        :pswitch_bd
        :pswitch_ba
        :pswitch_b7
        :pswitch_b4
        :pswitch_b1
        :pswitch_ae
        :pswitch_ab
        :pswitch_a8
        :pswitch_3
        :pswitch_3
        :pswitch_a5
        :pswitch_a2
        :pswitch_9f
        :pswitch_9c
        :pswitch_99
        :pswitch_96
        :pswitch_93
        :pswitch_90
        :pswitch_8d
        :pswitch_8a
        :pswitch_87
        :pswitch_84
        :pswitch_81
        :pswitch_7e
        :pswitch_7b
        :pswitch_78
        :pswitch_75
        :pswitch_72
        :pswitch_6f
        :pswitch_6c
        :pswitch_69
        :pswitch_66
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method

.method public getRetentionPeriodInMillisec()J
    .registers 3

    .line 496
    sget-wide v0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->LOGS_RETENTION_PERIOD_MILLISEC:J

    return-wide v0
.end method

.method public getSetUpDate()Ljava/lang/String;
    .registers 4

    .line 431
    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->getSetUpDateFile()Ljava/io/File;

    move-result-object p0

    .line 432
    :try_start_4
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_41

    .line 433
    :try_start_9
    new-instance p0, Ljava/io/InputStreamReader;

    invoke-direct {p0, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_21

    .line 434
    :try_start_e
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_23

    .line 435
    :try_start_13
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_25

    .line 436
    :try_start_17
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_23

    :try_start_1a
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_21

    :try_start_1d
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_41

    return-object v2

    :catchall_21
    move-exception p0

    goto :goto_38

    :catchall_23
    move-exception v1

    goto :goto_2f

    :catchall_25
    move-exception v2

    .line 432
    :try_start_26
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception v1

    :try_start_2b
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2e
    throw v2
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_23

    :goto_2f
    :try_start_2f
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_37

    :catchall_33
    move-exception p0

    :try_start_34
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_37
    throw v1
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_21

    :goto_38
    :try_start_38
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_40

    :catchall_3c
    move-exception v0

    :try_start_3d
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_40
    throw p0
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_41} :catch_41

    :catch_41
    move-exception p0

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An error occurred while reading the date: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BackupManagerMonitorDumpsysUtils"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const-string p0, "Could not retrieve setup date"

    return-object p0
.end method

.method public getSetUpDateFile()Ljava/io/File;
    .registers 3

    .line 489
    new-instance p0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "backup"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 490
    new-instance v0, Ljava/io/File;

    const-string v1, "initialSetupTimestamp.txt"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final hasAgentLogging(Landroid/os/Bundle;)Z
    .registers 3

    .line 157
    const-string p0, "android.app.backup.extra.LOG_AGENT_LOGGING_RESULTS"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 158
    const-class v0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;

    .line 159
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p0

    .line 163
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public isAfterRetentionPeriod()Z
    .registers 9

    .line 459
    iget-boolean v0, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsAfterRetentionPeriodCached:Z

    if-eqz v0, :cond_7

    .line 460
    iget-boolean p0, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsAfterRetentionPeriod:Z

    return p0

    .line 462
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->getSetUpDateFile()Ljava/io/File;

    move-result-object v0

    .line 463
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_1c

    const/4 v0, 0x0

    .line 465
    iput-boolean v0, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsAfterRetentionPeriod:Z

    .line 466
    iput-boolean v1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsAfterRetentionPeriodCached:Z

    return v0

    .line 470
    :cond_1c
    :try_start_1c
    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->getSetUpDate()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 471
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 473
    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->getRetentionPeriodInMillisec()J

    move-result-wide v6

    .line 472
    invoke-static/range {v2 .. v7}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->isDateAfterNMillisec(JJJ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsAfterRetentionPeriod:Z

    .line 474
    iput-boolean v1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsAfterRetentionPeriodCached:Z
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_34} :catch_35

    return v0

    .line 480
    :catch_35
    iput-boolean v1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsAfterRetentionPeriod:Z

    .line 481
    iput-boolean v1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsAfterRetentionPeriodCached:Z

    return v1
.end method

.method public isFileLargerThanSizeLimit(Ljava/io/File;)Z
    .registers 6

    .line 259
    iget-boolean v0, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsFileLargerThanSizeLimit:Z

    if-nez v0, :cond_15

    .line 260
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->getBMMEventsFileSizeLimit()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    iput-boolean p1, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsFileLargerThanSizeLimit:Z

    .line 262
    :cond_15
    iget-boolean p0, p0, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->mIsFileLargerThanSizeLimit:Z

    return p0
.end method

.method public final isOpTypeRestore(Landroid/os/Bundle;)Z
    .registers 3

    .line 401
    const-string p0, "android.app.backup.extra.OPERATION_TYPE"

    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    return p1
.end method

.method public parseBackupManagerMonitorRestoreEventForDumpsys(Landroid/os/Bundle;)V
    .registers 11

    .line 97
    const-string v0, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->isAfterRetentionPeriod()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_3e

    :cond_9
    if-nez p1, :cond_c

    goto :goto_3e

    .line 106
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->isOpTypeRestore(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_3e

    .line 111
    :cond_13
    const-string v1, "android.app.backup.extra.LOG_EVENT_ID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "BackupManagerMonitorDumpsysUtils"

    if-eqz v2, :cond_d8

    .line 112
    const-string v2, "android.app.backup.extra.LOG_EVENT_CATEGORY"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_27

    goto/16 :goto_d8

    .line 116
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->getBMMEventsFile()Ljava/io/File;

    move-result-object v4

    .line 118
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_38

    .line 121
    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->recordSetUpTimestamp()V

    .line 124
    :cond_38
    invoke-virtual {p0, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->isFileLargerThanSizeLimit(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_3f

    :goto_3e
    return-void

    .line 129
    :cond_3f
    :try_start_3f
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v6, 0x1

    invoke-direct {v5, v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_45} :catch_62

    .line 130
    :try_start_45
    new-instance v4, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v4, v5}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_64

    .line 132
    :try_start_4a
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 133
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x34

    if-ne v1, v2, :cond_68

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->hasAgentLogging(Landroid/os/Bundle;)Z

    move-result v2
    :try_end_59
    .catchall {:try_start_4a .. :try_end_59} :catchall_66

    if-nez v2, :cond_68

    .line 150
    :goto_5b
    :try_start_5b
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_64

    :try_start_5e
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    return-void

    :catch_62
    move-exception p0

    goto :goto_c3

    :catchall_64
    move-exception p0

    goto :goto_ba

    :catchall_66
    move-exception p0

    goto :goto_b1

    .line 141
    :cond_68
    :try_start_68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->timestamp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] - "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->getId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\tPackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    :cond_aa
    invoke-virtual {p0, p1, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->addAgentLogsIfAvailable(Landroid/os/Bundle;Ljava/io/PrintWriter;)V

    .line 149
    invoke-virtual {p0, p1, v4}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->addExtrasIfAvailable(Landroid/os/Bundle;Ljava/io/PrintWriter;)V
    :try_end_b0
    .catchall {:try_start_68 .. :try_end_b0} :catchall_66

    goto :goto_5b

    .line 129
    :goto_b1
    :try_start_b1
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_b4
    .catchall {:try_start_b1 .. :try_end_b4} :catchall_b5

    goto :goto_b9

    :catchall_b5
    move-exception p1

    :try_start_b6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b9
    throw p0
    :try_end_ba
    .catchall {:try_start_b6 .. :try_end_ba} :catchall_64

    :goto_ba
    :try_start_ba
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_bd
    .catchall {:try_start_ba .. :try_end_bd} :catchall_be

    goto :goto_c2

    :catchall_be
    move-exception p1

    :try_start_bf
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c2
    throw p0
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c3} :catch_62

    .line 151
    :goto_c3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IO Exception when writing BMM events to file: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 113
    :cond_d8
    :goto_d8
    const-string p0, "Event id and category are not optional fields."

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public recordSetUpTimestamp()V
    .registers 5

    .line 414
    invoke-virtual {p0}, Lcom/android/server/backup/utils/BackupManagerMonitorDumpsysUtils;->getSetUpDateFile()Ljava/io/File;

    move-result-object p0

    .line 416
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_57

    .line 417
    :try_start_e
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_14} :catch_3c

    .line 418
    :try_start_14
    new-instance p0, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_27

    .line 419
    :try_start_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 420
    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->println(J)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_29

    .line 421
    :try_start_20
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_27

    :try_start_23
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_3c

    return-void

    :catchall_27
    move-exception p0

    goto :goto_33

    :catchall_29
    move-exception v1

    .line 417
    :try_start_2a
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_32

    :catchall_2e
    move-exception p0

    :try_start_2f
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_32
    throw v1
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_27

    :goto_33
    :try_start_33
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_3b

    :catchall_37
    move-exception v0

    :try_start_38
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3b
    throw p0
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3c} :catch_3c

    :catch_3c
    move-exception p0

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An error occurred while recording the setup date: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 422
    const-string v0, "BackupManagerMonitorDumpsysUtils"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    return-void
.end method

.method public final timestamp()Ljava/lang/String;
    .registers 3

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 267
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 268
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
