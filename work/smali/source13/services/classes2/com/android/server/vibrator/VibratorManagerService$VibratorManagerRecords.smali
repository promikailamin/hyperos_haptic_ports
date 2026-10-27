.class final Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;
.super Ljava/lang/Object;
.source "VibratorManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibratorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VibratorManagerRecords"
.end annotation


# instance fields
.field private final mPreviousExternalVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/vibrator/Vibration$DebugInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousVibrations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/vibrator/Vibration$DebugInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPreviousVibrationsLimit:I


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1, "limit"    # I

    .line 1458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1452
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mPreviousVibrations:Landroid/util/SparseArray;

    .line 1454
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mPreviousExternalVibrations:Ljava/util/LinkedList;

    .line 1459
    iput p1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mPreviousVibrationsLimit:I

    .line 1460
    return-void
.end method


# virtual methods
.method declared-synchronized dumpProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    monitor-enter p0

    .line 1501
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mPreviousVibrations:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4a

    .line 1503
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mPreviousVibrations:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_6a

    .line 1515
    const-wide v1, 0x20b00000010L

    .local v1, "fieldId":J
    goto :goto_2b

    .line 1508
    .end local v1    # "fieldId":J
    :sswitch_19
    const-wide v1, 0x20b0000000eL

    .line 1510
    .restart local v1    # "fieldId":J
    goto :goto_2b

    .line 1505
    .end local v1    # "fieldId":J
    :sswitch_1f
    const-wide v1, 0x20b0000000dL

    .line 1506
    .restart local v1    # "fieldId":J
    goto :goto_2b

    .line 1512
    .end local v1    # "fieldId":J
    :sswitch_25
    const-wide v1, 0x20b0000000fL

    .line 1513
    .restart local v1    # "fieldId":J
    nop

    .line 1517
    :goto_2b
    iget-object v3, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mPreviousVibrations:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/vibrator/Vibration$DebugInfo;

    .line 1518
    .local v4, "info":Lcom/android/server/vibrator/Vibration$DebugInfo;
    invoke-virtual {v4, p1, v1, v2}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1519
    .end local v4    # "info":Lcom/android/server/vibrator/Vibration$DebugInfo;
    goto :goto_37

    .line 1501
    .end local v1    # "fieldId":J
    .end local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;
    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1522
    .end local v0    # "i":I
    :cond_4a
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mPreviousExternalVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_50
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_65

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/Vibration$DebugInfo;

    .line 1523
    .local v1, "info":Lcom/android/server/vibrator/Vibration$DebugInfo;
    const-wide v2, 0x20b00000011L

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/vibrator/Vibration$DebugInfo;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    :try_end_64
    .catchall {:try_start_2 .. :try_end_64} :catchall_67

    .line 1525
    .end local v1    # "info":Lcom/android/server/vibrator/Vibration$DebugInfo;
    goto :goto_50

    .line 1526
    :cond_65
    monitor-exit p0

    return-void

    .line 1500
    .end local p1    # "proto":Landroid/util/proto/ProtoOutputStream;
    :catchall_67
    move-exception p1

    monitor-exit p0

    throw p1

    :sswitch_data_6a
    .sparse-switch
        0x11 -> :sswitch_25
        0x21 -> :sswitch_1f
        0x31 -> :sswitch_19
    .end sparse-switch
.end method

.method declared-synchronized dumpText(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 1483
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mPreviousVibrations:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_56

    .line 1484
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1485
    const-string v1, "  Previous vibrations for usage "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1486
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mPreviousVibrations:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/VibrationAttributes;->usageToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1487
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1488
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mPreviousVibrations:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/vibrator/Vibration$DebugInfo;

    .line 1489
    .local v2, "info":Lcom/android/server/vibrator/Vibration$DebugInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1490
    .end local v2    # "info":Lcom/android/server/vibrator/Vibration$DebugInfo;
    goto :goto_30

    .line 1483
    .end local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;
    :cond_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1493
    .end local v0    # "i":I
    :cond_56
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1494
    const-string v0, "  Previous external vibrations:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1495
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mPreviousExternalVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_64
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_87

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vibrator/Vibration$DebugInfo;

    .line 1496
    .local v1, "info":Lcom/android/server/vibrator/Vibration$DebugInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_86
    .catchall {:try_start_2 .. :try_end_86} :catchall_89

    .line 1497
    .end local v1    # "info":Lcom/android/server/vibrator/Vibration$DebugInfo;
    goto :goto_64

    .line 1498
    :cond_87
    monitor-exit p0

    return-void

    .line 1482
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_89
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized record(Lcom/android/server/vibrator/Vibration;)V
    .registers 5
    .param p1, "vib"    # Lcom/android/server/vibrator/Vibration;

    monitor-enter p0

    .line 1463
    :try_start_1
    iget-object v0, p1, Lcom/android/server/vibrator/Vibration;->attrs:Landroid/os/VibrationAttributes;

    invoke-virtual {v0}, Landroid/os/VibrationAttributes;->getUsage()I

    move-result v0

    .line 1464
    .local v0, "usage":I
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mPreviousVibrations:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_19

    .line 1465
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mPreviousVibrations:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1467
    .end local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;
    :cond_19
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mPreviousVibrations:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    invoke-virtual {p1}, Lcom/android/server/vibrator/Vibration;->getDebugInfo()Lcom/android/server/vibrator/Vibration$DebugInfo;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->record(Ljava/util/LinkedList;Lcom/android/server/vibrator/Vibration$DebugInfo;)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 1468
    monitor-exit p0

    return-void

    .line 1462
    .end local v0    # "usage":I
    .end local p1    # "vib":Lcom/android/server/vibrator/Vibration;
    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized record(Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;)V
    .registers 4
    .param p1, "vib"    # Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;

    monitor-enter p0

    .line 1471
    :try_start_1
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mPreviousExternalVibrations:Ljava/util/LinkedList;

    invoke-virtual {p1}, Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;->getDebugInfo()Lcom/android/server/vibrator/Vibration$DebugInfo;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->record(Ljava/util/LinkedList;Lcom/android/server/vibrator/Vibration$DebugInfo;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1472
    monitor-exit p0

    return-void

    .line 1470
    .end local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;
    .end local p1    # "vib":Lcom/android/server/vibrator/VibratorManagerService$ExternalVibrationHolder;
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized record(Ljava/util/LinkedList;Lcom/android/server/vibrator/Vibration$DebugInfo;)V
    .registers 5
    .param p2, "info"    # Lcom/android/server/vibrator/Vibration$DebugInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/vibrator/Vibration$DebugInfo;",
            ">;",
            "Lcom/android/server/vibrator/Vibration$DebugInfo;",
            ")V"
        }
    .end annotation

    .local p1, "records":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/vibrator/Vibration$DebugInfo;>;"
    monitor-enter p0

    .line 1476
    :try_start_1
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;->mPreviousVibrationsLimit:I

    if-le v0, v1, :cond_c

    .line 1477
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 1479
    .end local p0    # "this":Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerRecords;
    :cond_c
    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 1480
    monitor-exit p0

    return-void

    .line 1475
    .end local p1    # "records":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/vibrator/Vibration$DebugInfo;>;"
    .end local p2    # "info":Lcom/android/server/vibrator/Vibration$DebugInfo;
    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method
