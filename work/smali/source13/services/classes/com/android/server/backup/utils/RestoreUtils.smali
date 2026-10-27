.class public Lcom/android/server/backup/utils/RestoreUtils;
.super Ljava/lang/Object;
.source "RestoreUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static installApk(Ljava/io/InputStream;Landroid/content/Context;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;I)Z
    .registers 31
    .param p0, "instream"    # Ljava/io/InputStream;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deleteObserver"    # Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .param p5, "info"    # Lcom/android/server/backup/FileMetadata;
    .param p6, "installerPackageName"    # Ljava/lang/String;
    .param p7, "bytesReadListener"    # Lcom/android/server/backup/utils/BytesReadListener;
    .param p8, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Landroid/content/Context;",
            "Lcom/android/server/backup/restore/RestoreDeleteObserver;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/restore/RestorePolicy;",
            ">;",
            "Lcom/android/server/backup/FileMetadata;",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/utils/BytesReadListener;",
            "I)Z"
        }
    .end annotation

    .line 79
    .local p3, "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .local p4, "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    move-object/from16 v1, p5

    move/from16 v2, p8

    const/4 v3, 0x1

    .line 82
    .local v3, "okay":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Installing from backup: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "BackupManagerService"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :try_start_1f
    new-instance v0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;

    const/4 v5, 0x0

    invoke-direct {v0, v5}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;-><init>(Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver-IA;)V

    move-object v5, v0

    .line 87
    .local v5, "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v6, v0

    .line 88
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v6}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    move-object v7, v0

    .line 90
    .local v7, "installer":Landroid/content/pm/PackageInstaller;
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v8, 0x1

    invoke-direct {v0, v8}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    move-object v9, v0

    .line 91
    .local v9, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    move-object/from16 v10, p6

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallerPackageName(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v7, v9}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v0
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_40} :catch_2e8

    move v11, v0

    .line 94
    .local v11, "sessionId":I
    :try_start_41
    invoke-virtual {v7, v11}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v0
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_45} :catch_2d1
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_45} :catch_2e8

    move-object v14, v0

    .line 95
    .local v14, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_46
    iget-object v13, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;
    :try_end_48
    .catchall {:try_start_46 .. :try_end_48} :catchall_2b3

    const-wide/16 v15, 0x0

    move-object/from16 v18, v9

    .end local v9    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .local v18, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :try_start_4c
    iget-wide v8, v1, Lcom/android/server/backup/FileMetadata;->size:J
    :try_end_4e
    .catchall {:try_start_4c .. :try_end_4e} :catchall_2a4

    move-object v12, v14

    move/from16 v19, v3

    move-object v3, v14

    .end local v14    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v3, "session":Landroid/content/pm/PackageInstaller$Session;
    .local v19, "okay":Z
    move-wide v14, v15

    move-wide/from16 v16, v8

    :try_start_55
    invoke-virtual/range {v12 .. v17}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v8
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_298

    .line 97
    .local v8, "apkStream":Ljava/io/OutputStream;
    const v9, 0x8000

    :try_start_5c
    new-array v12, v9, [B

    .line 98
    .local v12, "buffer":[B
    iget-wide v13, v1, Lcom/android/server/backup/FileMetadata;->size:J
    :try_end_60
    .catchall {:try_start_5c .. :try_end_60} :catchall_27f

    .line 99
    .local v13, "size":J
    :goto_60
    const-wide/16 v15, 0x0

    cmp-long v15, v13, v15

    const/4 v9, 0x0

    if-lez v15, :cond_b6

    .line 100
    :try_start_67
    array-length v15, v12
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_a7

    int-to-long v0, v15

    cmp-long v0, v0, v13

    if-gez v0, :cond_7d

    :try_start_6d
    array-length v0, v12
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_70

    int-to-long v0, v0

    goto :goto_7e

    .line 95
    .end local v12    # "buffer":[B
    .end local v13    # "size":J
    :catchall_70
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v9, p3

    move-object/from16 v12, p4

    move-object/from16 v10, p5

    move-object/from16 v15, p7

    goto/16 :goto_289

    .line 100
    .restart local v12    # "buffer":[B
    .restart local v13    # "size":J
    :cond_7d
    move-wide v0, v13

    .line 101
    .local v0, "toRead":J
    :goto_7e
    long-to-int v15, v0

    move-wide/from16 v20, v0

    move-object/from16 v1, p0

    .end local v0    # "toRead":J
    .local v20, "toRead":J
    :try_start_83
    invoke-virtual {v1, v12, v9, v15}, Ljava/io/InputStream;->read([BII)I

    move-result v0
    :try_end_87
    .catchall {:try_start_83 .. :try_end_87} :catchall_a5

    .line 102
    .local v0, "didRead":I
    if-ltz v0, :cond_a2

    .line 103
    int-to-long v9, v0

    move-object/from16 v15, p7

    :try_start_8c
    invoke-interface {v15, v9, v10}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    .line 109
    const/4 v9, 0x0

    invoke-virtual {v8, v12, v9, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 110
    int-to-long v9, v0

    sub-long/2addr v13, v9

    .line 112
    invoke-virtual {v8}, Ljava/io/OutputStream;->flush()V
    :try_end_98
    .catchall {:try_start_8c .. :try_end_98} :catchall_a0

    .line 114
    .end local v0    # "didRead":I
    .end local v20    # "toRead":J
    move-object/from16 v1, p5

    move-object/from16 v10, p6

    const v9, 0x8000

    goto :goto_60

    .line 95
    .end local v12    # "buffer":[B
    .end local v13    # "size":J
    :catchall_a0
    move-exception v0

    goto :goto_ac

    .line 102
    .restart local v0    # "didRead":I
    .restart local v12    # "buffer":[B
    .restart local v13    # "size":J
    .restart local v20    # "toRead":J
    :cond_a2
    move-object/from16 v15, p7

    goto :goto_ba

    .line 95
    .end local v0    # "didRead":I
    .end local v12    # "buffer":[B
    .end local v13    # "size":J
    .end local v20    # "toRead":J
    :catchall_a5
    move-exception v0

    goto :goto_aa

    :catchall_a7
    move-exception v0

    move-object/from16 v1, p0

    :goto_aa
    move-object/from16 v15, p7

    :goto_ac
    move-object/from16 v1, p2

    move-object/from16 v9, p3

    move-object/from16 v12, p4

    move-object/from16 v10, p5

    goto/16 :goto_289

    .line 99
    .restart local v12    # "buffer":[B
    .restart local v13    # "size":J
    :cond_b6
    move-object/from16 v1, p0

    move-object/from16 v15, p7

    .line 115
    .end local v12    # "buffer":[B
    .end local v13    # "size":J
    :goto_ba
    if-eqz v8, :cond_bf

    :try_start_bc
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    .line 120
    .end local v8    # "apkStream":Ljava/io/OutputStream;
    :cond_bf
    invoke-virtual {v5}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V
    :try_end_c6
    .catchall {:try_start_bc .. :try_end_c6} :catchall_275

    .line 122
    if-eqz v3, :cond_e2

    :try_start_c8
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_cb} :catch_d7
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_cb} :catch_cc

    goto :goto_e2

    .line 216
    .end local v3    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v11    # "sessionId":I
    .end local v18    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :catch_cc
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v9, p3

    move-object/from16 v12, p4

    move-object/from16 v10, p5

    goto/16 :goto_2e5

    .line 123
    .restart local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v11    # "sessionId":I
    .restart local v18    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :catch_d7
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v9, p3

    move-object/from16 v12, p4

    move-object/from16 v10, p5

    goto/16 :goto_2df

    .line 127
    :cond_e2
    :goto_e2
    nop

    .line 132
    :try_start_e3
    invoke-virtual {v5}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v0

    move-object v3, v0

    .line 138
    .local v3, "result":Landroid/content/Intent;
    const-string v0, "android.content.pm.extra.STATUS"

    const/4 v8, 0x1

    invoke-virtual {v3, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_ef} :catch_cc

    move v8, v0

    .line 143
    .local v8, "status":I
    if-eqz v8, :cond_115

    .line 147
    move-object/from16 v10, p5

    :try_start_f4
    iget-object v0, v10, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;
    :try_end_f6
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_f6} :catch_110

    move-object/from16 v12, p4

    :try_start_f8
    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    if-eq v0, v4, :cond_108

    .line 148
    const/4 v0, 0x0

    move-object/from16 v1, p2

    move-object/from16 v9, p3

    move v3, v0

    .end local v19    # "okay":Z
    .local v0, "okay":Z
    goto/16 :goto_26a

    .line 147
    .end local v0    # "okay":Z
    .restart local v19    # "okay":Z
    :cond_108
    move-object/from16 v1, p2

    move-object/from16 v9, p3

    move/from16 v3, v19

    goto/16 :goto_26a

    .line 216
    .end local v3    # "result":Landroid/content/Intent;
    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v8    # "status":I
    .end local v11    # "sessionId":I
    .end local v18    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :catch_110
    move-exception v0

    move-object/from16 v12, p4

    goto/16 :goto_26f

    .line 152
    .restart local v3    # "result":Landroid/content/Intent;
    .restart local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v8    # "status":I
    .restart local v11    # "sessionId":I
    .restart local v18    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :cond_115
    move-object/from16 v12, p4

    move-object/from16 v10, p5

    const/4 v13, 0x0

    .line 153
    .local v13, "uninstall":Z
    const-string v0, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 155
    .local v14, "installedPackageName":Ljava/lang/String;
    iget-object v0, v10, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_154

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Restore stream claimed to include apk for "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v9, v10, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " but apk was really "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14b
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_14b} :catch_26e

    .line 160
    const/4 v0, 0x0

    .line 161
    .end local v19    # "okay":Z
    .restart local v0    # "okay":Z
    const/4 v13, 0x1

    move-object/from16 v9, p3

    move-object/from16 v16, v3

    move v3, v0

    goto/16 :goto_251

    .line 164
    .end local v0    # "okay":Z
    .restart local v19    # "okay":Z
    :cond_154
    :try_start_154
    iget-object v0, v10, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    const/high16 v9, 0x8000000

    invoke-virtual {v6, v0, v9, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 169
    .local v0, "pkg":Landroid/content/pm/PackageInfo;
    invoke-static {}, Lcom/android/server/backup/BackupManagerServiceStub;->getInstance()Lcom/android/server/backup/BackupManagerServiceStub;

    move-result-object v9

    iget v1, v10, Lcom/android/server/backup/FileMetadata;->rawFd:I

    invoke-interface {v9, v0, v1}, Lcom/android/server/backup/BackupManagerServiceStub;->isForceAllowBackup(Landroid/content/pm/PackageInfo;I)Z

    move-result v1
    :try_end_166
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_154 .. :try_end_166} :catch_22c
    .catch Ljava/io/IOException; {:try_start_154 .. :try_end_166} :catch_225

    if-nez v1, :cond_19f

    :try_start_168
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const v9, 0x8000

    and-int/2addr v1, v9

    if-nez v1, :cond_19f

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Restore stream contains apk of package "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v9, v10, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " but it disallows backup/restore"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_190
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_168 .. :try_end_190} :catch_198
    .catch Ljava/io/IOException; {:try_start_168 .. :try_end_190} :catch_26e

    .line 175
    const/4 v1, 0x0

    move-object/from16 v9, p3

    move-object/from16 v16, v3

    move v3, v1

    .end local v19    # "okay":Z
    .local v1, "okay":Z
    goto/16 :goto_220

    .line 199
    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v1    # "okay":Z
    .restart local v19    # "okay":Z
    :catch_198
    move-exception v0

    move-object/from16 v9, p3

    move-object/from16 v16, v3

    goto/16 :goto_231

    .line 178
    .restart local v0    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_19f
    :try_start_19f
    iget-object v1, v10, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;
    :try_end_1a1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19f .. :try_end_1a1} :catch_22c
    .catch Ljava/io/IOException; {:try_start_19f .. :try_end_1a1} :catch_225

    move-object/from16 v9, p3

    :try_start_1a3
    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/Signature;

    .line 179
    .local v1, "sigs":[Landroid/content/pm/Signature;
    const-class v16, Landroid/content/pm/PackageManagerInternal;

    invoke-static/range {v16 .. v16}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/PackageManagerInternal;
    :try_end_1b1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1a3 .. :try_end_1b1} :catch_223
    .catch Ljava/io/IOException; {:try_start_1a3 .. :try_end_1b1} :catch_26c

    move-object/from16 v17, v16

    .line 181
    .local v17, "pmi":Landroid/content/pm/PackageManagerInternal;
    nop

    .line 182
    move-object/from16 v16, v3

    move-object/from16 v3, v17

    .end local v17    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .local v3, "pmi":Landroid/content/pm/PackageManagerInternal;
    .local v16, "result":Landroid/content/Intent;
    :try_start_1b8
    invoke-static {v6, v3, v2}, Lcom/android/server/backup/utils/BackupEligibilityRules;->forBackup(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageManagerInternal;I)Lcom/android/server/backup/utils/BackupEligibilityRules;

    move-result-object v17

    move-object/from16 v20, v17

    .line 183
    .local v20, "eligibilityRules":Lcom/android/server/backup/utils/BackupEligibilityRules;
    move-object/from16 v2, v20

    .end local v20    # "eligibilityRules":Lcom/android/server/backup/utils/BackupEligibilityRules;
    .local v2, "eligibilityRules":Lcom/android/server/backup/utils/BackupEligibilityRules;
    invoke-virtual {v2, v1, v0}, Lcom/android/server/backup/utils/BackupEligibilityRules;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v17
    :try_end_1c4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b8 .. :try_end_1c4} :catch_221
    .catch Ljava/io/IOException; {:try_start_1b8 .. :try_end_1c4} :catch_26c

    move-object/from16 v20, v1

    .end local v1    # "sigs":[Landroid/content/pm/Signature;
    .local v20, "sigs":[Landroid/content/pm/Signature;
    const-string v1, "Installed app "

    if-eqz v17, :cond_1fe

    .line 186
    move-object/from16 v17, v2

    .end local v2    # "eligibilityRules":Lcom/android/server/backup/utils/BackupEligibilityRules;
    .local v17, "eligibilityRules":Lcom/android/server/backup/utils/BackupEligibilityRules;
    :try_start_1cc
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v2

    if-eqz v2, :cond_1fb

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v2, :cond_1fb

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has restricted uid and no agent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v1, 0x0

    move v3, v1

    .end local v19    # "okay":Z
    .local v1, "okay":Z
    goto :goto_220

    .line 203
    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v1    # "okay":Z
    .end local v3    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .end local v17    # "eligibilityRules":Lcom/android/server/backup/utils/BackupEligibilityRules;
    .end local v20    # "sigs":[Landroid/content/pm/Signature;
    .restart local v19    # "okay":Z
    :cond_1fb
    move/from16 v3, v19

    goto :goto_220

    .line 193
    .restart local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v2    # "eligibilityRules":Lcom/android/server/backup/utils/BackupEligibilityRules;
    .restart local v3    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .restart local v20    # "sigs":[Landroid/content/pm/Signature;
    :cond_1fe
    move-object/from16 v17, v2

    .end local v2    # "eligibilityRules":Lcom/android/server/backup/utils/BackupEligibilityRules;
    .restart local v17    # "eligibilityRules":Lcom/android/server/backup/utils/BackupEligibilityRules;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " signatures do not match restore manifest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1cc .. :try_end_21c} :catch_221
    .catch Ljava/io/IOException; {:try_start_1cc .. :try_end_21c} :catch_26c

    .line 195
    const/4 v1, 0x0

    .line 196
    .end local v19    # "okay":Z
    .restart local v1    # "okay":Z
    const/4 v2, 0x1

    move v3, v1

    move v13, v2

    .line 203
    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v1    # "okay":Z
    .end local v17    # "eligibilityRules":Lcom/android/server/backup/utils/BackupEligibilityRules;
    .end local v20    # "sigs":[Landroid/content/pm/Signature;
    .local v3, "okay":Z
    :goto_220
    goto :goto_251

    .line 199
    .end local v3    # "okay":Z
    .restart local v19    # "okay":Z
    :catch_221
    move-exception v0

    goto :goto_231

    .end local v16    # "result":Landroid/content/Intent;
    .local v3, "result":Landroid/content/Intent;
    :catch_223
    move-exception v0

    goto :goto_22f

    .line 216
    .end local v3    # "result":Landroid/content/Intent;
    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v8    # "status":I
    .end local v11    # "sessionId":I
    .end local v13    # "uninstall":Z
    .end local v14    # "installedPackageName":Ljava/lang/String;
    .end local v18    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :catch_225
    move-exception v0

    move-object/from16 v9, p3

    :goto_228
    move-object/from16 v1, p2

    goto/16 :goto_2e5

    .line 199
    .restart local v3    # "result":Landroid/content/Intent;
    .restart local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v8    # "status":I
    .restart local v11    # "sessionId":I
    .restart local v13    # "uninstall":Z
    .restart local v14    # "installedPackageName":Ljava/lang/String;
    .restart local v18    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :catch_22c
    move-exception v0

    move-object/from16 v9, p3

    :goto_22f
    move-object/from16 v16, v3

    .line 200
    .end local v3    # "result":Landroid/content/Intent;
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v16    # "result":Landroid/content/Intent;
    :goto_231
    :try_start_231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Install of package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " succeeded but now not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24f
    .catch Ljava/io/IOException; {:try_start_231 .. :try_end_24f} :catch_26c

    .line 202
    const/4 v1, 0x0

    move v3, v1

    .line 208
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v19    # "okay":Z
    .local v3, "okay":Z
    :goto_251
    if-eqz v13, :cond_268

    .line 209
    :try_start_253
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/backup/restore/RestoreDeleteObserver;->reset()V
    :try_end_256
    .catch Ljava/io/IOException; {:try_start_253 .. :try_end_256} :catch_263

    .line 210
    move-object/from16 v1, p2

    const/4 v2, 0x0

    :try_start_259
    invoke-virtual {v6, v14, v1, v2}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 213
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/backup/restore/RestoreDeleteObserver;->waitForCompletion()V
    :try_end_25f
    .catch Ljava/io/IOException; {:try_start_259 .. :try_end_25f} :catch_260

    goto :goto_26a

    .line 216
    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v8    # "status":I
    .end local v11    # "sessionId":I
    .end local v13    # "uninstall":Z
    .end local v14    # "installedPackageName":Ljava/lang/String;
    .end local v16    # "result":Landroid/content/Intent;
    .end local v18    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :catch_260
    move-exception v0

    goto/16 :goto_2f4

    :catch_263
    move-exception v0

    move-object/from16 v1, p2

    goto/16 :goto_2f4

    .line 208
    .restart local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v8    # "status":I
    .restart local v11    # "sessionId":I
    .restart local v13    # "uninstall":Z
    .restart local v14    # "installedPackageName":Ljava/lang/String;
    .restart local v16    # "result":Landroid/content/Intent;
    .restart local v18    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :cond_268
    move-object/from16 v1, p2

    .line 219
    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v8    # "status":I
    .end local v11    # "sessionId":I
    .end local v13    # "uninstall":Z
    .end local v14    # "installedPackageName":Ljava/lang/String;
    .end local v16    # "result":Landroid/content/Intent;
    .end local v18    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :goto_26a
    goto/16 :goto_2fa

    .line 216
    .end local v3    # "okay":Z
    .restart local v19    # "okay":Z
    :catch_26c
    move-exception v0

    goto :goto_228

    :catch_26e
    move-exception v0

    :goto_26f
    move-object/from16 v1, p2

    move-object/from16 v9, p3

    goto/16 :goto_2e5

    .line 94
    .local v3, "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v11    # "sessionId":I
    .restart local v18    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :catchall_275
    move-exception v0

    move-object/from16 v1, p2

    move-object/from16 v9, p3

    move-object/from16 v12, p4

    move-object/from16 v10, p5

    goto :goto_2a2

    .line 95
    .local v8, "apkStream":Ljava/io/OutputStream;
    :catchall_27f
    move-exception v0

    move-object/from16 v9, p3

    move-object/from16 v12, p4

    move-object/from16 v15, p7

    move-object v10, v1

    move-object/from16 v1, p2

    :goto_289
    move-object v2, v0

    if-eqz v8, :cond_295

    :try_start_28c
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_28f
    .catchall {:try_start_28c .. :try_end_28f} :catchall_290

    goto :goto_295

    :catchall_290
    move-exception v0

    move-object v13, v0

    :try_start_292
    invoke-virtual {v2, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v11    # "sessionId":I
    .end local v18    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v19    # "okay":Z
    .end local p0    # "instream":Ljava/io/InputStream;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "deleteObserver":Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .end local p3    # "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .end local p4    # "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    .end local p5    # "info":Lcom/android/server/backup/FileMetadata;
    .end local p6    # "installerPackageName":Ljava/lang/String;
    .end local p7    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local p8    # "userId":I
    :cond_295
    :goto_295
    throw v2
    :try_end_296
    .catchall {:try_start_292 .. :try_end_296} :catchall_296

    .line 94
    .end local v8    # "apkStream":Ljava/io/OutputStream;
    .restart local v3    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v11    # "sessionId":I
    .restart local v18    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v19    # "okay":Z
    .restart local p0    # "instream":Ljava/io/InputStream;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "deleteObserver":Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .restart local p3    # "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .restart local p4    # "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    .restart local p5    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local p6    # "installerPackageName":Ljava/lang/String;
    .restart local p7    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local p8    # "userId":I
    :catchall_296
    move-exception v0

    goto :goto_2a2

    :catchall_298
    move-exception v0

    move-object/from16 v9, p3

    move-object/from16 v12, p4

    move-object/from16 v15, p7

    move-object v10, v1

    move-object/from16 v1, p2

    :goto_2a2
    move-object v2, v0

    goto :goto_2c3

    .end local v19    # "okay":Z
    .local v3, "okay":Z
    .local v14, "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_2a4
    move-exception v0

    move-object/from16 v9, p3

    move-object/from16 v12, p4

    move-object/from16 v15, p7

    move-object v10, v1

    move/from16 v19, v3

    move-object v3, v14

    move-object/from16 v1, p2

    move-object v2, v0

    .end local v14    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v3, "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v19    # "okay":Z
    goto :goto_2c3

    .end local v18    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v19    # "okay":Z
    .local v3, "okay":Z
    .restart local v9    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v14    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_2b3
    move-exception v0

    move-object/from16 v12, p4

    move-object/from16 v15, p7

    move-object v10, v1

    move/from16 v19, v3

    move-object/from16 v18, v9

    move-object v3, v14

    move-object/from16 v1, p2

    move-object/from16 v9, p3

    move-object v2, v0

    .end local v9    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v14    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v3, "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v18    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v19    # "okay":Z
    :goto_2c3
    if-eqz v3, :cond_2ce

    :try_start_2c5
    invoke-virtual {v3}, Landroid/content/pm/PackageInstaller$Session;->close()V
    :try_end_2c8
    .catchall {:try_start_2c5 .. :try_end_2c8} :catchall_2c9

    goto :goto_2ce

    :catchall_2c9
    move-exception v0

    move-object v8, v0

    :try_start_2cb
    invoke-virtual {v2, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v11    # "sessionId":I
    .end local v18    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v19    # "okay":Z
    .end local p0    # "instream":Ljava/io/InputStream;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "deleteObserver":Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .end local p3    # "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .end local p4    # "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    .end local p5    # "info":Lcom/android/server/backup/FileMetadata;
    .end local p6    # "installerPackageName":Ljava/lang/String;
    .end local p7    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local p8    # "userId":I
    :cond_2ce
    :goto_2ce
    throw v2
    :try_end_2cf
    .catch Ljava/lang/Exception; {:try_start_2cb .. :try_end_2cf} :catch_2cf
    .catch Ljava/io/IOException; {:try_start_2cb .. :try_end_2cf} :catch_2e4

    .line 123
    .end local v3    # "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v11    # "sessionId":I
    .restart local v18    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v19    # "okay":Z
    .restart local p0    # "instream":Ljava/io/InputStream;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "deleteObserver":Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .restart local p3    # "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .restart local p4    # "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    .restart local p5    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local p6    # "installerPackageName":Ljava/lang/String;
    .restart local p7    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local p8    # "userId":I
    :catch_2cf
    move-exception v0

    goto :goto_2df

    .end local v18    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v19    # "okay":Z
    .local v3, "okay":Z
    .restart local v9    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :catch_2d1
    move-exception v0

    move-object/from16 v12, p4

    move-object/from16 v15, p7

    move-object v10, v1

    move/from16 v19, v3

    move-object/from16 v18, v9

    move-object/from16 v1, p2

    move-object/from16 v9, p3

    .line 124
    .end local v3    # "okay":Z
    .end local v9    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .local v0, "t":Ljava/lang/Exception;
    .restart local v18    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v19    # "okay":Z
    :goto_2df
    :try_start_2df
    invoke-virtual {v7, v11}, Landroid/content/pm/PackageInstaller;->abandonSession(I)V

    .line 126
    nop

    .end local v19    # "okay":Z
    .end local p0    # "instream":Ljava/io/InputStream;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "deleteObserver":Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .end local p3    # "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .end local p4    # "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    .end local p5    # "info":Lcom/android/server/backup/FileMetadata;
    .end local p6    # "installerPackageName":Ljava/lang/String;
    .end local p7    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local p8    # "userId":I
    throw v0
    :try_end_2e4
    .catch Ljava/io/IOException; {:try_start_2df .. :try_end_2e4} :catch_2e4

    .line 216
    .end local v0    # "t":Ljava/lang/Exception;
    .end local v5    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v6    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v7    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v11    # "sessionId":I
    .end local v18    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v19    # "okay":Z
    .restart local p0    # "instream":Ljava/io/InputStream;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "deleteObserver":Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .restart local p3    # "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .restart local p4    # "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    .restart local p5    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local p6    # "installerPackageName":Ljava/lang/String;
    .restart local p7    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local p8    # "userId":I
    :catch_2e4
    move-exception v0

    :goto_2e5
    move/from16 v3, v19

    goto :goto_2f4

    .end local v19    # "okay":Z
    .restart local v3    # "okay":Z
    :catch_2e8
    move-exception v0

    move-object/from16 v9, p3

    move-object/from16 v12, p4

    move-object/from16 v15, p7

    move-object v10, v1

    move/from16 v19, v3

    move-object/from16 v1, p2

    .line 217
    .local v0, "e":Ljava/io/IOException;
    :goto_2f4
    const-string v2, "Unable to transcribe restored apk for install"

    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v3, 0x0

    .line 221
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2fa
    return v3
.end method
