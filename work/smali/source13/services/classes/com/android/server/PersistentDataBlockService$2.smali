.class Lcom/android/server/PersistentDataBlockService$2;
.super Ljava/lang/Object;
.source "PersistentDataBlockService.java"

# interfaces
.implements Lcom/android/server/PersistentDataBlockManagerInternal;


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

    .line 705
    iput-object p1, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readInternal(JI)[B
    .registers 8
    .param p1, "offset"    # J
    .param p3, "maxLength"    # I

    .line 803
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$menforceChecksumValidity(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 809
    :try_start_8
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v3}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fgetmDataBlockFile(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_1d} :catch_54

    .line 813
    .local v0, "inputStream":Ljava/io/DataInputStream;
    nop

    .line 816
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fgetmLock(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_25} :catch_46
    .catchall {:try_start_1e .. :try_end_25} :catchall_44

    .line 817
    :try_start_25
    invoke-virtual {v0, p1, p2}, Ljava/io/DataInputStream;->skip(J)J

    .line 818
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 819
    .local v2, "length":I
    if-lez v2, :cond_3b

    if-le v2, p3, :cond_31

    goto :goto_3b

    .line 822
    :cond_31
    new-array v3, v2, [B

    .line 823
    .local v3, "bytes":[B
    invoke-virtual {v0, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 824
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_25 .. :try_end_37} :catchall_41

    .line 829
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 824
    return-object v3

    .line 820
    .end local v3    # "bytes":[B
    :cond_3b
    :goto_3b
    const/4 v3, 0x0

    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_41

    .line 829
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 820
    return-object v3

    .line 825
    .end local v2    # "length":I
    :catchall_41
    move-exception v2

    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    .end local v0    # "inputStream":Ljava/io/DataInputStream;
    .end local p0    # "this":Lcom/android/server/PersistentDataBlockService$2;
    .end local p1    # "offset":J
    .end local p3    # "maxLength":I
    :try_start_43
    throw v2
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_44} :catch_46
    .catchall {:try_start_43 .. :try_end_44} :catchall_44

    .line 829
    .restart local v0    # "inputStream":Ljava/io/DataInputStream;
    .restart local p0    # "this":Lcom/android/server/PersistentDataBlockService$2;
    .restart local p1    # "offset":J
    .restart local p3    # "maxLength":I
    :catchall_44
    move-exception v1

    goto :goto_50

    .line 826
    :catch_46
    move-exception v1

    .line 827
    .local v1, "e":Ljava/io/IOException;
    :try_start_47
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "persistent partition not readable"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "inputStream":Ljava/io/DataInputStream;
    .end local p0    # "this":Lcom/android/server/PersistentDataBlockService$2;
    .end local p1    # "offset":J
    .end local p3    # "maxLength":I
    throw v2
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_44

    .line 829
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "inputStream":Ljava/io/DataInputStream;
    .restart local p0    # "this":Lcom/android/server/PersistentDataBlockService$2;
    .restart local p1    # "offset":J
    .restart local p3    # "maxLength":I
    :goto_50
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 830
    throw v1

    .line 811
    .end local v0    # "inputStream":Ljava/io/DataInputStream;
    :catch_54
    move-exception v0

    .line 812
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "persistent partition not available"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 804
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_5e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "invalid checksum"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeDataBuffer(JLjava/nio/ByteBuffer;)V
    .registers 8
    .param p1, "offset"    # J
    .param p3, "dataBuffer"    # Ljava/nio/ByteBuffer;

    .line 784
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fgetmLock(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 785
    :try_start_7
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fgetmIsWritable(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 786
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_36

    return-void

    .line 789
    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mgetBlockOutputChannel(Lcom/android/server/PersistentDataBlockService;)Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 790
    .local v1, "channel":Ljava/nio/channels/FileChannel;
    invoke-virtual {v1, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 791
    invoke-virtual {v1, p3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 792
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_21} :catch_29
    .catchall {:try_start_11 .. :try_end_21} :catchall_36

    .line 796
    .end local v1    # "channel":Ljava/nio/channels/FileChannel;
    nop

    .line 798
    :try_start_22
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mcomputeAndWriteDigestLocked(Lcom/android/server/PersistentDataBlockService;)Z

    .line 799
    monitor-exit v0

    .line 800
    return-void

    .line 793
    :catch_29
    move-exception v1

    .line 794
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "unable to access persistent partition"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 795
    monitor-exit v0

    return-void

    .line 799
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_22 .. :try_end_38} :catchall_36

    throw v1
.end method

.method private writeInternal([BJI)V
    .registers 9
    .param p1, "data"    # [B
    .param p2, "offset"    # J
    .param p4, "dataLength"    # I

    .line 768
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    array-length v2, p1

    if-lez v2, :cond_8

    goto :goto_a

    :cond_8
    move v2, v1

    goto :goto_b

    :cond_a
    :goto_a
    move v2, v0

    :goto_b
    const-string v3, "data must be null or non-empty"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 769
    if-eqz p1, :cond_17

    array-length v2, p1

    if-gt v2, p4, :cond_16

    goto :goto_17

    :cond_16
    move v0, v1

    :cond_17
    :goto_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data must not be longer than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 773
    add-int/lit8 v0, p4, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 774
    .local v0, "dataBuffer":Ljava/nio/ByteBuffer;
    if-nez p1, :cond_36

    goto :goto_37

    :cond_36
    array-length v1, p1

    :goto_37
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 775
    if-eqz p1, :cond_3f

    .line 776
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 778
    :cond_3f
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 780
    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/PersistentDataBlockService$2;->writeDataBuffer(JLjava/nio/ByteBuffer;)V

    .line 781
    return-void
.end method


# virtual methods
.method public clearMITSModeData()V
    .registers 5

    .line 762
    invoke-virtual {p0}, Lcom/android/server/PersistentDataBlockService$2;->getMITSModeData()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x10

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    .line 763
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mgetMITSModeDataOffset(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/PersistentDataBlockService$2;->writeDataBuffer(JLjava/nio/ByteBuffer;)V

    .line 764
    return-void
.end method

.method public clearTestHarnessModeData()V
    .registers 5

    .line 733
    invoke-virtual {p0}, Lcom/android/server/PersistentDataBlockService$2;->getTestHarnessModeData()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x270c

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    .line 734
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mgetTestHarnessModeDataOffset(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/PersistentDataBlockService$2;->writeDataBuffer(JLjava/nio/ByteBuffer;)V

    .line 735
    return-void
.end method

.method public forceOemUnlockEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 835
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fgetmLock(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 836
    :try_start_7
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v1, p1}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mdoSetOemUnlockEnabledLocked(Lcom/android/server/PersistentDataBlockService;Z)V

    .line 837
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mcomputeAndWriteDigestLocked(Lcom/android/server/PersistentDataBlockService;)Z

    .line 838
    monitor-exit v0

    .line 839
    return-void

    .line 838
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getAllowedUid()I
    .registers 2

    .line 739
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fgetmAllowedUid(Lcom/android/server/PersistentDataBlockService;)I

    move-result v0

    return v0
.end method

.method public getFrpCredentialHandle()[B
    .registers 4

    .line 714
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mgetFrpCredentialDataOffset(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v0

    const/16 v2, 0x3e4

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/PersistentDataBlockService$2;->readInternal(JI)[B

    move-result-object v0

    return-object v0
.end method

.method public getMITSModeData()[B
    .registers 4

    .line 753
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mgetMITSModeDataOffset(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v0

    const/16 v2, 0x10

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/PersistentDataBlockService$2;->readInternal(JI)[B

    move-result-object v0

    .line 754
    .local v0, "data":[B
    if-nez v0, :cond_12

    .line 755
    const/4 v1, 0x0

    new-array v1, v1, [B

    return-object v1

    .line 757
    :cond_12
    return-object v0
.end method

.method public getTestHarnessModeData()[B
    .registers 4

    .line 724
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mgetTestHarnessModeDataOffset(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v0

    const/16 v2, 0x270c

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/PersistentDataBlockService$2;->readInternal(JI)[B

    move-result-object v0

    .line 725
    .local v0, "data":[B
    if-nez v0, :cond_12

    .line 726
    const/4 v1, 0x0

    new-array v1, v1, [B

    return-object v1

    .line 728
    :cond_12
    return-object v0
.end method

.method public setFrpCredentialHandle([B)V
    .registers 5
    .param p1, "handle"    # [B

    .line 709
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mgetFrpCredentialDataOffset(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v0

    const/16 v2, 0x3e4

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/PersistentDataBlockService$2;->writeInternal([BJI)V

    .line 710
    return-void
.end method

.method public setMITSModeData([B)V
    .registers 5
    .param p1, "data"    # [B

    .line 746
    const-string/jumbo v0, "ro.mits.enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 747
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mgetMITSModeDataOffset(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v0

    const/16 v2, 0x10

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/PersistentDataBlockService$2;->writeInternal([BJI)V

    .line 749
    :cond_15
    return-void
.end method

.method public setTestHarnessModeData([B)V
    .registers 5
    .param p1, "data"    # [B

    .line 719
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mgetTestHarnessModeDataOffset(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v0

    const/16 v2, 0x270c

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/PersistentDataBlockService$2;->writeInternal([BJI)V

    .line 720
    return-void
.end method
