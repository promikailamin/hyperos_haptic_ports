.class Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;
.super Landroid/os/ShellCommand;
.source "TestHarnessModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/testharness/TestHarnessModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestHarnessModeShellCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/testharness/TestHarnessModeService;


# direct methods
.method private constructor <init>(Lcom/android/server/testharness/TestHarnessModeService;)V
    .registers 2

    .line 331
    iput-object p1, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/testharness/TestHarnessModeService;Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;-><init>(Lcom/android/server/testharness/TestHarnessModeService;)V

    return-void
.end method

.method private checkPermissions()V
    .registers 4

    .line 386
    iget-object v0, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    invoke-virtual {v0}, Lcom/android/server/testharness/TestHarnessModeService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ENABLE_TEST_HARNESS_MODE"

    const-string v2, "You must hold android.permission.ENABLE_TEST_HARNESS_MODE to enable Test Harness Mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method private getBytesFromFile(Ljava/io/File;)[B
    .registers 9
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 431
    const/4 v0, 0x0

    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_3c

    .line 434
    :cond_a
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    .line 435
    .local v1, "path":Ljava/nio/file/Path;
    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {v1, v0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    .line 436
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_14
    invoke-static {v1}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v2

    long-to-int v2, v2

    .line 437
    .local v2, "size":I
    new-array v3, v2, [B

    .line 438
    .local v3, "bytes":[B
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_30

    .line 439
    .local v4, "numBytes":I
    if-ne v4, v2, :cond_28

    .line 442
    nop

    .line 443
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 442
    :cond_27
    return-object v3

    .line 440
    :cond_28
    :try_start_28
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Failed to read the whole file"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local v1    # "path":Ljava/nio/file/Path;
    .end local p0    # "this":Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;
    .end local p1    # "file":Ljava/io/File;
    throw v5
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    .line 435
    .end local v2    # "size":I
    .end local v3    # "bytes":[B
    .end local v4    # "numBytes":I
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "path":Ljava/nio/file/Path;
    .restart local p0    # "this":Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;
    .restart local p1    # "file":Ljava/io/File;
    :catchall_30
    move-exception v2

    if-eqz v0, :cond_3b

    :try_start_33
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_3b

    :catchall_37
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3b
    :goto_3b
    throw v2

    .line 432
    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local v1    # "path":Ljava/nio/file/Path;
    :cond_3c
    :goto_3c
    new-array v0, v0, [B

    return-object v0
.end method

.method private handleEnable()I
    .registers 12

    .line 398
    const-string v0, "Failed to enable Test Harness Mode"

    const-string v1, "ShellCommand"

    const-class v2, Landroid/debug/AdbManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/debug/AdbManagerInternal;

    .line 399
    .local v2, "adbManager":Landroid/debug/AdbManagerInternal;
    invoke-virtual {v2}, Landroid/debug/AdbManagerInternal;->getAdbKeysFile()Ljava/io/File;

    move-result-object v3

    .line 400
    .local v3, "adbKeys":Ljava/io/File;
    invoke-virtual {v2}, Landroid/debug/AdbManagerInternal;->getAdbTempKeysFile()Ljava/io/File;

    move-result-object v4

    .line 403
    .local v4, "adbTempKeys":Ljava/io/File;
    const/4 v5, 0x1

    :try_start_15
    invoke-direct {p0, v3}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->getBytesFromFile(Ljava/io/File;)[B

    move-result-object v6

    .line 404
    .local v6, "adbKeysBytes":[B
    invoke-direct {p0, v4}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->getBytesFromFile(Ljava/io/File;)[B

    move-result-object v7

    .line 406
    .local v7, "adbTempKeysBytes":[B
    new-instance v8, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;

    invoke-direct {v8, v6, v7}, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;-><init>([B[B)V

    .line 407
    .local v8, "persistentData":Lcom/android/server/testharness/TestHarnessModeService$PersistentData;
    iget-object v9, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    invoke-static {v9}, Lcom/android/server/testharness/TestHarnessModeService;->-$$Nest$mgetPersistentDataBlock(Lcom/android/server/testharness/TestHarnessModeService;)Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v9

    .line 408
    .local v9, "blockManager":Lcom/android/server/PersistentDataBlockManagerInternal;
    if-nez v9, :cond_37

    .line 409
    const-string v10, "Failed to enable Test Harness Mode. No implementation of PersistentDataBlockManagerInternal was bound."

    invoke-static {v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 412
    return v5

    .line 414
    :cond_37
    invoke-virtual {v8}, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->toBytes()[B

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/android/server/PersistentDataBlockManagerInternal;->setTestHarnessModeData([B)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_3e} :catch_67

    .line 419
    .end local v6    # "adbKeysBytes":[B
    .end local v7    # "adbTempKeysBytes":[B
    .end local v8    # "persistentData":Lcom/android/server/testharness/TestHarnessModeService$PersistentData;
    .end local v9    # "blockManager":Lcom/android/server/PersistentDataBlockManagerInternal;
    nop

    .line 421
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.FACTORY_RESET"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 422
    .local v0, "i":Landroid/content/Intent;
    const-string v6, "android"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    const/high16 v6, 0x10000000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 424
    const-string v6, "android.intent.extra.REASON"

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    const-string v1, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 426
    iget-object v1, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    invoke-virtual {v1}, Lcom/android/server/testharness/TestHarnessModeService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 427
    const/4 v1, 0x0

    return v1

    .line 415
    .end local v0    # "i":Landroid/content/Intent;
    :catch_67
    move-exception v6

    .line 416
    .local v6, "e":Ljava/io/IOException;
    const-string v7, "Failed to store ADB keys."

    invoke-static {v1, v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 417
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 418
    return v5
.end method

.method private isDeviceSecure()Z
    .registers 3

    .line 393
    iget-object v0, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    invoke-virtual {v0}, Lcom/android/server/testharness/TestHarnessModeService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/KeyguardManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 394
    .local v0, "keyguardManager":Landroid/app/KeyguardManager;
    iget-object v1, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    invoke-static {v1}, Lcom/android/server/testharness/TestHarnessModeService;->-$$Nest$mgetPrimaryUser(Lcom/android/server/testharness/TestHarnessModeService;)Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 7
    .param p1, "cmd"    # Ljava/lang/String;

    .line 334
    if-nez p1, :cond_7

    .line 335
    invoke-virtual {p0, p1}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 337
    :cond_7
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v1, :sswitch_data_d0

    :cond_12
    goto :goto_3b

    :sswitch_13
    const-string/jumbo v1, "restore"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x3

    goto :goto_3b

    :sswitch_1e
    const-string v1, "has_mits"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    move v0, v3

    goto :goto_3b

    :sswitch_28
    const-string v1, "disable_mits"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    move v0, v4

    goto :goto_3b

    :sswitch_32
    const-string v1, "enable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    move v0, v2

    :goto_3b
    packed-switch v0, :pswitch_data_e2

    .line 381
    invoke-virtual {p0, p1}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 367
    :pswitch_43
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->checkPermissions()V

    .line 368
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 370
    .local v0, "originalId":J
    :try_start_4a
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->isDeviceSecure()Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 371
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Test Harness Mode cannot be enabled if there is a lock screen"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_4a .. :try_end_59} :catchall_66

    .line 374
    nop

    .line 378
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 374
    return v2

    .line 376
    :cond_5e
    :try_start_5e
    invoke-direct {p0}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->handleEnable()I

    move-result v2
    :try_end_62
    .catchall {:try_start_5e .. :try_end_62} :catchall_66

    .line 378
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 376
    return v2

    .line 378
    :catchall_66
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 379
    throw v2

    .line 353
    .end local v0    # "originalId":J
    :pswitch_6b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 355
    .local v0, "cId":J
    :try_start_6f
    iget-object v2, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    invoke-static {v2}, Lcom/android/server/testharness/TestHarnessModeService;->-$$Nest$misMITSModeEnabled(Lcom/android/server/testharness/TestHarnessModeService;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 356
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string/jumbo v3, "yes"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_81
    .catchall {:try_start_6f .. :try_end_81} :catchall_95

    .line 357
    nop

    .line 362
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 357
    return v4

    .line 359
    :cond_86
    :try_start_86
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string/jumbo v4, "no"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_90
    .catchall {:try_start_86 .. :try_end_90} :catchall_95

    .line 360
    nop

    .line 362
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 360
    return v3

    .line 362
    :catchall_95
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 363
    throw v2

    .line 340
    .end local v0    # "cId":J
    :pswitch_9a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 342
    .local v0, "callingId":J
    :try_start_9e
    iget-object v2, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    invoke-static {v2}, Lcom/android/server/testharness/TestHarnessModeService;->-$$Nest$misMITSModeEnabled(Lcom/android/server/testharness/TestHarnessModeService;)Z

    move-result v2

    if-eqz v2, :cond_bd

    .line 343
    iget-object v2, p0, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->this$0:Lcom/android/server/testharness/TestHarnessModeService;

    invoke-static {v2}, Lcom/android/server/testharness/TestHarnessModeService;->-$$Nest$mgetPersistentDataBlock(Lcom/android/server/testharness/TestHarnessModeService;)Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/PersistentDataBlockManagerInternal;->clearMITSModeData()V

    .line 344
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "MITS disabled"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_b8
    .catchall {:try_start_9e .. :try_end_b8} :catchall_cb

    .line 345
    nop

    .line 350
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 345
    return v4

    .line 347
    :cond_bd
    :try_start_bd
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v4, "MITS already disabled"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_c6
    .catchall {:try_start_bd .. :try_end_c6} :catchall_cb

    .line 348
    nop

    .line 350
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 348
    return v3

    .line 350
    :catchall_cb
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 351
    throw v2

    :sswitch_data_d0
    .sparse-switch
        -0x4d6ada7d -> :sswitch_32
        -0x3ac6b3ee -> :sswitch_28
        0x861dba0 -> :sswitch_1e
        0x416ad28e -> :sswitch_13
    .end sparse-switch

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_9a
        :pswitch_6b
        :pswitch_43
        :pswitch_43
    .end packed-switch
.end method

.method public onHelp()V
    .registers 3

    .line 448
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService$TestHarnessModeShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 449
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "About:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 450
    const-string v1, "  Test Harness Mode is a mode that the device can be placed in to prepare"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 451
    const-string v1, "  the device for running UI tests. The device is placed into this mode by"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 452
    const-string v1, "  first wiping all data from the device, preserving ADB keys."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 454
    const-string v1, "  By default, the following settings are configured:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 455
    const-string v1, "    * Package Verifier is disabled"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 456
    const-string v1, "    * Stay Awake While Charging is enabled"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 457
    const-string v1, "    * OTA Updates are disabled"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 458
    const-string v1, "    * Auto-Sync for accounts is disabled"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 460
    const-string v1, "  Other apps may configure themselves differently in Test Harness Mode by"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 461
    const-string v1, "  checking ActivityManager.isRunningInUserTestHarness()"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 462
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 463
    const-string v1, "Test Harness Mode commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 464
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 465
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 467
    const-string v1, "  enable|restore"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    const-string v1, "    Erase all data from this device and enable Test Harness Mode,"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    const-string v1, "    preserving the stored ADB keys currently on the device and toggling"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 470
    const-string v1, "    settings in a way that are conducive to Instrumentation testing."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    return-void
.end method
