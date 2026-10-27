.class Lcom/android/server/PersistentDataBlockService$1;
.super Landroid/service/persistentdata/IPersistentDataBlockService$Stub;
.source "PersistentDataBlockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PersistentDataBlockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PersistentDataBlockService;


# direct methods
.method constructor <init>(Lcom/android/server/PersistentDataBlockService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/PersistentDataBlockService;

    .line 483
    iput-object p1, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-direct {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;-><init>()V

    return-void
.end method

.method private enforcePersistentDataBlockAccess()V
    .registers 3

    .line 674
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fgetmContext(Lcom/android/server/PersistentDataBlockService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_PDB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_17

    .line 676
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$menforceUid(Lcom/android/server/PersistentDataBlockService;I)V

    .line 678
    :cond_17
    return-void
.end method


# virtual methods
.method public getDataBlockSize()I
    .registers 6

    .line 651
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService$1;->enforcePersistentDataBlockAccess()V

    .line 655
    const/4 v0, 0x0

    :try_start_4
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v4}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fgetmDataBlockFile(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_19} :catch_44

    .line 659
    .local v1, "inputStream":Ljava/io/DataInputStream;
    nop

    .line 662
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v2}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fgetmLock(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_21} :catch_31
    .catchall {:try_start_1a .. :try_end_21} :catchall_2f

    .line 663
    :try_start_21
    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v3, v1}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mgetTotalDataSizeLocked(Lcom/android/server/PersistentDataBlockService;Ljava/io/DataInputStream;)I

    move-result v3

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_2c

    .line 669
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 663
    return v3

    .line 664
    :catchall_2c
    move-exception v3

    :try_start_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    .end local v1    # "inputStream":Ljava/io/DataInputStream;
    .end local p0    # "this":Lcom/android/server/PersistentDataBlockService$1;
    :try_start_2e
    throw v3
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2f} :catch_31
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2f

    .line 669
    .restart local v1    # "inputStream":Ljava/io/DataInputStream;
    .restart local p0    # "this":Lcom/android/server/PersistentDataBlockService$1;
    :catchall_2f
    move-exception v0

    goto :goto_40

    .line 665
    :catch_31
    move-exception v2

    .line 666
    .local v2, "e":Ljava/io/IOException;
    :try_start_32
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "error reading data block size"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_2f

    .line 667
    nop

    .line 669
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 667
    return v0

    .line 669
    .end local v2    # "e":Ljava/io/IOException;
    :goto_40
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 670
    throw v0

    .line 656
    .end local v1    # "inputStream":Ljava/io/DataInputStream;
    :catch_44
    move-exception v1

    .line 657
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "partition not available"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    return v0
.end method

.method public getFlashLockState()I
    .registers 6

    .line 637
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$menforceOemUnlockReadPermission(Lcom/android/server/PersistentDataBlockService;)V

    .line 638
    const-string/jumbo v0, "ro.boot.flash.locked"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, "locked":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    packed-switch v1, :pswitch_data_32

    :cond_16
    goto :goto_2b

    :pswitch_17
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, v2

    goto :goto_2c

    :pswitch_21
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, v3

    goto :goto_2c

    :goto_2b
    move v1, v4

    :goto_2c
    packed-switch v1, :pswitch_data_3a

    .line 645
    return v4

    .line 643
    :pswitch_30
    return v2

    .line 641
    :pswitch_31
    return v3

    :pswitch_data_32
    .packed-switch 0x30
        :pswitch_21
        :pswitch_17
    .end packed-switch

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_31
        :pswitch_30
    .end packed-switch
.end method

.method public getMaximumDataBlockSize()J
    .registers 3

    .line 682
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$menforceUid(Lcom/android/server/PersistentDataBlockService;I)V

    .line 683
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mdoGetMaximumDataBlockSize(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOemUnlockEnabled()Z
    .registers 2

    .line 631
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$menforceOemUnlockReadPermission(Lcom/android/server/PersistentDataBlockService;)V

    .line 632
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mdoGetOemUnlockEnabled(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v0

    return v0
.end method

.method public getPersistentDataPackageName()Ljava/lang/String;
    .registers 3

    .line 699
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService$1;->enforcePersistentDataBlockAccess()V

    .line 700
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fgetmContext(Lcom/android/server/PersistentDataBlockService;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x10402a9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasFrpCredentialHandle()Z
    .registers 4

    .line 688
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService$1;->enforcePersistentDataBlockAccess()V

    .line 690
    :try_start_3
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fgetmInternalService(Lcom/android/server/PersistentDataBlockService;)Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/PersistentDataBlockManagerInternal;->getFrpCredentialHandle()[B

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_d} :catch_13

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0

    .line 691
    :catch_13
    move-exception v0

    .line 692
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "error reading frp handle"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 693
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "cannot read frp credential"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read()[B
    .registers 10

    .line 540
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$menforceUid(Lcom/android/server/PersistentDataBlockService;I)V

    .line 541
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$menforceChecksumValidity(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_15

    .line 542
    new-array v0, v1, [B

    return-object v0

    .line 547
    :cond_15
    const/4 v0, 0x0

    :try_start_16
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v5}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fgetmDataBlockFile(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_2b} :catch_c7

    .line 551
    .local v2, "inputStream":Ljava/io/DataInputStream;
    nop

    .line 554
    :try_start_2c
    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v3}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fgetmLock(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_33} :catch_9e
    .catchall {:try_start_2c .. :try_end_33} :catchall_9c

    .line 555
    :try_start_33
    iget-object v4, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v4, v2}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mgetTotalDataSizeLocked(Lcom/android/server/PersistentDataBlockService;Ljava/io/DataInputStream;)I

    move-result v4

    .line 557
    .local v4, "totalDataSize":I
    if-nez v4, :cond_4d

    .line 558
    new-array v1, v1, [B

    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_99

    .line 576
    :try_start_3e
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    .line 579
    goto :goto_4c

    .line 577
    :catch_42
    move-exception v0

    .line 578
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v5, "failed to close OutputStream"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    .end local v0    # "e":Ljava/io/IOException;
    :goto_4c
    return-object v1

    .line 561
    :cond_4d
    :try_start_4d
    new-array v5, v4, [B

    .line 562
    .local v5, "data":[B
    invoke-virtual {v2, v5, v1, v4}, Ljava/io/DataInputStream;->read([BII)I

    move-result v1

    .line 563
    .local v1, "read":I
    if-ge v1, v4, :cond_89

    .line 565
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to read entire data block. bytes read: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    monitor-exit v3
    :try_end_7a
    .catchall {:try_start_4d .. :try_end_7a} :catchall_99

    .line 576
    :try_start_7a
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_7e

    .line 579
    goto :goto_88

    .line 577
    :catch_7e
    move-exception v3

    .line 578
    .local v3, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    const-string v7, "failed to close OutputStream"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    .end local v3    # "e":Ljava/io/IOException;
    :goto_88
    return-object v0

    .line 569
    :cond_89
    :try_start_89
    monitor-exit v3
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_99

    .line 576
    :try_start_8a
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8e

    .line 579
    goto :goto_98

    .line 577
    :catch_8e
    move-exception v0

    .line 578
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v6, "failed to close OutputStream"

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    .end local v0    # "e":Ljava/io/IOException;
    :goto_98
    return-object v5

    .line 570
    .end local v1    # "read":I
    .end local v4    # "totalDataSize":I
    .end local v5    # "data":[B
    :catchall_99
    move-exception v1

    :try_start_9a
    monitor-exit v3
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    .end local v2    # "inputStream":Ljava/io/DataInputStream;
    .end local p0    # "this":Lcom/android/server/PersistentDataBlockService$1;
    :try_start_9b
    throw v1
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9c} :catch_9e
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9c

    .line 575
    .restart local v2    # "inputStream":Ljava/io/DataInputStream;
    .restart local p0    # "this":Lcom/android/server/PersistentDataBlockService$1;
    :catchall_9c
    move-exception v0

    goto :goto_b8

    .line 571
    :catch_9e
    move-exception v1

    .line 572
    .local v1, "e":Ljava/io/IOException;
    :try_start_9f
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "failed to read data"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a8
    .catchall {:try_start_9f .. :try_end_a8} :catchall_9c

    .line 573
    nop

    .line 576
    :try_start_a9
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ac} :catch_ad

    .line 579
    goto :goto_b7

    .line 577
    :catch_ad
    move-exception v3

    .line 578
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    const-string v5, "failed to close OutputStream"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    .end local v3    # "e":Ljava/io/IOException;
    :goto_b7
    return-object v0

    .line 576
    .end local v1    # "e":Ljava/io/IOException;
    :goto_b8
    :try_start_b8
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bb} :catch_bc

    .line 579
    goto :goto_c6

    .line 577
    :catch_bc
    move-exception v1

    .line 578
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "failed to close OutputStream"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    .end local v1    # "e":Ljava/io/IOException;
    :goto_c6
    throw v0

    .line 548
    .end local v2    # "inputStream":Ljava/io/DataInputStream;
    :catch_c7
    move-exception v1

    .line 549
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "partition not available?"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 550
    return-object v0
.end method

.method public setOemUnlockEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 611
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 612
    return-void

    .line 615
    :cond_7
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$menforceOemUnlockWritePermission(Lcom/android/server/PersistentDataBlockService;)V

    .line 616
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$menforceIsAdmin(Lcom/android/server/PersistentDataBlockService;)V

    .line 618
    if-eqz p1, :cond_23

    .line 620
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    const-string/jumbo v1, "no_oem_unlock"

    invoke-static {v0, v1}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$menforceUserRestriction(Lcom/android/server/PersistentDataBlockService;Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    const-string/jumbo v1, "no_factory_reset"

    invoke-static {v0, v1}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$menforceUserRestriction(Lcom/android/server/PersistentDataBlockService;Ljava/lang/String;)V

    .line 623
    :cond_23
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fgetmLock(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 624
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v1, p1}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mdoSetOemUnlockEnabledLocked(Lcom/android/server/PersistentDataBlockService;Z)V

    .line 625
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mcomputeAndWriteDigestLocked(Lcom/android/server/PersistentDataBlockService;)Z

    .line 626
    monitor-exit v0

    .line 627
    return-void

    .line 626
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_36

    throw v1
.end method

.method public wipe()V
    .registers 6

    .line 585
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$menforceOemUnlockWritePermission(Lcom/android/server/PersistentDataBlockService;)V

    .line 588
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fgetmInternalService(Lcom/android/server/PersistentDataBlockService;)Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/PersistentDataBlockManagerInternal;->getMITSModeData()[B

    move-result-object v0

    .line 589
    .local v0, "mitsData":[B
    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_2f

    const-string v1, "MITS_ENABLED"

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 590
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v1, v2}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fputmIsWritable(Lcom/android/server/PersistentDataBlockService;Z)V

    .line 591
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Skip wipe frp data."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    return-void

    .line 596
    :cond_2f
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fgetmLock(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 597
    :try_start_36
    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v3}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fgetmDataBlockFile(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mnativeWipe(Lcom/android/server/PersistentDataBlockService;Ljava/lang/String;)I

    move-result v3

    .line 599
    .local v3, "ret":I
    if-gez v3, :cond_4c

    .line 600
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v4, "failed to wipe persistent partition"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 602
    :cond_4c
    iget-object v4, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v4, v2}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fputmIsWritable(Lcom/android/server/PersistentDataBlockService;Z)V

    .line 603
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "persistent partition now wiped and unwritable"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    .end local v3    # "ret":I
    :goto_5b
    monitor-exit v1

    .line 606
    return-void

    .line 605
    :catchall_5d
    move-exception v2

    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_36 .. :try_end_5f} :catchall_5d

    throw v2
.end method

.method public write([B)I
    .registers 11
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$menforceUid(Lcom/android/server/PersistentDataBlockService;I)V

    .line 496
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mdoGetMaximumDataBlockSize(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v0

    .line 497
    .local v0, "maxBlockSize":J
    array-length v2, p1

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_18

    .line 499
    neg-long v2, v0

    long-to-int v2, v2

    return v2

    .line 504
    :cond_18
    const/4 v2, -0x1

    :try_start_19
    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v3}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mgetBlockOutputChannel(Lcom/android/server/PersistentDataBlockService;)Ljava/nio/channels/FileChannel;

    move-result-object v3
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1f} :catch_74

    .line 508
    .local v3, "channel":Ljava/nio/channels/FileChannel;
    nop

    .line 510
    array-length v4, p1

    add-int/lit8 v4, v4, 0x8

    const/16 v5, 0x20

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 512
    .local v4, "headerAndData":Ljava/nio/ByteBuffer;
    new-array v5, v5, [B

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 513
    const v5, 0x19901873

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 514
    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 515
    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 516
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 517
    iget-object v5, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v5}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fgetmLock(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 518
    :try_start_46
    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v6}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fgetmIsWritable(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v6

    if-nez v6, :cond_50

    .line 519
    monitor-exit v5
    :try_end_4f
    .catchall {:try_start_46 .. :try_end_4f} :catchall_71

    return v2

    .line 523
    :cond_50
    :try_start_50
    invoke-virtual {v3, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 524
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_57} :catch_65
    .catchall {:try_start_50 .. :try_end_57} :catchall_71

    .line 528
    nop

    .line 530
    :try_start_58
    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v6}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mcomputeAndWriteDigestLocked(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 531
    array-length v2, p1

    monitor-exit v5

    return v2

    .line 533
    :cond_63
    monitor-exit v5

    return v2

    .line 525
    :catch_65
    move-exception v6

    .line 526
    .local v6, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v7

    const-string v8, "failed writing to the persistent data block"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 527
    monitor-exit v5

    return v2

    .line 535
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_71
    move-exception v2

    monitor-exit v5
    :try_end_73
    .catchall {:try_start_58 .. :try_end_73} :catchall_71

    throw v2

    .line 505
    .end local v3    # "channel":Ljava/nio/channels/FileChannel;
    .end local v4    # "headerAndData":Ljava/nio/ByteBuffer;
    :catch_74
    move-exception v3

    .line 506
    .local v3, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "partition not available?"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 507
    return v2
.end method
