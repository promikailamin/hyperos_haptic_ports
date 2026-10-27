.class Landroid/media/midi/MidiDeviceServer$1;
.super Landroid/media/midi/IMidiDeviceServer$Stub;
.source "MidiDeviceServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiDeviceServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/midi/MidiDeviceServer;


# direct methods
.method constructor blacklist <init>(Landroid/media/midi/MidiDeviceServer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 208
    iput-object p1, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-direct {p0}, Landroid/media/midi/IMidiDeviceServer$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist closeDevice()V
    .registers 2

    .line 350
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v0}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmCallback(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceServer$Callback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 351
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v0}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmCallback(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceServer$Callback;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/midi/MidiDeviceServer$Callback;->onClose()V

    .line 353
    :cond_11
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 354
    return-void
.end method

.method public blacklist closePort(Landroid/os/IBinder;)V
    .registers 4

    .line 333
    nop

    .line 334
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v0}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 335
    :try_start_8
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/midi/MidiDeviceServer$PortClient;

    .line 336
    if-eqz p1, :cond_1e

    .line 337
    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceServer$PortClient;->getInputPort()Landroid/media/midi/MidiInputPort;

    move-result-object v1

    .line 338
    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceServer$PortClient;->close()V

    goto :goto_1f

    .line 336
    :cond_1e
    const/4 v1, 0x0

    .line 340
    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_38

    .line 341
    if-eqz v1, :cond_37

    .line 342
    iget-object p1, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {p1}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object p1

    monitor-enter p1

    .line 343
    :try_start_29
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v0}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    monitor-exit p1

    goto :goto_37

    :catchall_34
    move-exception v0

    monitor-exit p1
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_34

    throw v0

    .line 346
    :cond_37
    :goto_37
    return-void

    .line 340
    :catchall_38
    move-exception p1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p1
.end method

.method public blacklist connectPorts(Landroid/os/IBinder;Ljava/io/FileDescriptor;I)I
    .registers 7

    .line 359
    new-instance v0, Landroid/media/midi/MidiInputPort;

    invoke-direct {v0, p2, p3}, Landroid/media/midi/MidiInputPort;-><init>(Ljava/io/FileDescriptor;I)V

    .line 360
    iget-object p2, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {p2}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmOutputPortDispatchers(Landroid/media/midi/MidiDeviceServer;)[Lcom/android/internal/midi/MidiDispatcher;

    move-result-object p2

    aget-object p2, p2, p3

    .line 361
    monitor-enter p2

    .line 362
    :try_start_e
    invoke-virtual {p2}, Lcom/android/internal/midi/MidiDispatcher;->getSender()Landroid/media/midi/MidiSender;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/media/midi/MidiSender;->connect(Landroid/media/midi/MidiReceiver;)V

    .line 363
    invoke-virtual {p2}, Lcom/android/internal/midi/MidiDispatcher;->getReceiverCount()I

    move-result v1

    .line 364
    iget-object v2, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v2}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmOutputPortOpenCount(Landroid/media/midi/MidiDeviceServer;)[I

    move-result-object v2

    aput v1, v2, p3

    .line 365
    iget-object p3, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {p3}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$mupdateDeviceStatus(Landroid/media/midi/MidiDeviceServer;)V

    .line 366
    monitor-exit p2
    :try_end_27
    .catchall {:try_start_e .. :try_end_27} :catchall_64

    .line 368
    iget-object p2, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {p2}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPorts(Landroid/media/midi/MidiDeviceServer;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    new-instance p2, Landroid/media/midi/MidiDeviceServer$OutputPortClient;

    iget-object p3, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-direct {p2, p3, p1, v0}, Landroid/media/midi/MidiDeviceServer$OutputPortClient;-><init>(Landroid/media/midi/MidiDeviceServer;Landroid/os/IBinder;Landroid/media/midi/MidiInputPort;)V

    .line 370
    iget-object p3, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {p3}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object p3

    monitor-enter p3

    .line 371
    :try_start_3e
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    monitor-exit p3
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_61

    .line 373
    iget-object p1, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {p1}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object p1

    monitor-enter p1

    .line 374
    :try_start_4f
    iget-object p3, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {p3}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object p3

    invoke-virtual {p3, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    monitor-exit p1
    :try_end_59
    .catchall {:try_start_4f .. :try_end_59} :catchall_5e

    .line 376
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    return p1

    .line 375
    :catchall_5e
    move-exception p2

    :try_start_5f
    monitor-exit p1
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw p2

    .line 372
    :catchall_61
    move-exception p1

    :try_start_62
    monitor-exit p3
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw p1

    .line 366
    :catchall_64
    move-exception p1

    :try_start_65
    monitor-exit p2
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw p1
.end method

.method public blacklist getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;
    .registers 2

    .line 381
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v0}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmDeviceInfo(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist openInputPort(Landroid/os/IBinder;I)Ljava/io/FileDescriptor;
    .registers 9

    .line 212
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v0}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmDeviceInfo(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceInfo;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 213
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_17

    goto :goto_1f

    .line 214
    :cond_17
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Can\'t access private device from different UID"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 218
    :cond_1f
    :goto_1f
    const/4 v0, 0x0

    if-ltz p2, :cond_151

    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortCount(Landroid/media/midi/MidiDeviceServer;)I

    move-result v1

    if-lt p2, v1, :cond_2c

    goto/16 :goto_151

    .line 223
    :cond_2c
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortOutputPorts(Landroid/media/midi/MidiDeviceServer;)[Landroid/media/midi/MidiOutputPort;

    move-result-object v1

    monitor-enter v1

    .line 224
    :try_start_33
    iget-object v2, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v2}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortOutputPorts(Landroid/media/midi/MidiDeviceServer;)[Landroid/media/midi/MidiOutputPort;

    move-result-object v2

    aget-object v2, v2, p2

    if-eqz v2, :cond_5d

    .line 225
    const-string p1, "MidiDeviceServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, " already open"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    monitor-exit v1

    return-object v0

    .line 229
    :cond_5d
    iget-object v2, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v2}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$misUmpDevice(Landroid/media/midi/MidiDeviceServer;)Z

    move-result v2

    if-eqz v2, :cond_f8

    .line 230
    iget-object v2, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v2}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmOutputPortCount(Landroid/media/midi/MidiDeviceServer;)I

    move-result v2

    if-lt p2, v2, :cond_87

    .line 231
    const-string p1, "MidiDeviceServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "out portNumber out of range in openInputPort: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    monitor-exit v1

    return-object v0

    .line 234
    :cond_87
    iget-object v2, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v2}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmUmpUidLock(Landroid/media/midi/MidiDeviceServer;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_8e
    .catchall {:try_start_33 .. :try_end_8e} :catchall_14e

    .line 235
    :try_start_8e
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmUmpInputPortUids(Landroid/media/midi/MidiDeviceServer;)[I

    move-result-object v3

    aget v3, v3, p2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_b4

    .line 236
    const-string p1, "MidiDeviceServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "input port already open in openInputPort: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    monitor-exit v2
    :try_end_b2
    .catchall {:try_start_8e .. :try_end_b2} :catchall_f5

    :try_start_b2
    monitor-exit v1
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_14e

    return-object v0

    .line 239
    :cond_b4
    :try_start_b4
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmUmpOutputPortUids(Landroid/media/midi/MidiDeviceServer;)[I

    move-result-object v3

    aget v3, v3, p2

    if-eq v3, v4, :cond_e7

    .line 240
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmUmpOutputPortUids(Landroid/media/midi/MidiDeviceServer;)[I

    move-result-object v4

    aget v4, v4, p2

    if-eq v3, v4, :cond_e7

    .line 241
    const-string p1, "MidiDeviceServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "different uid for output in openInputPort: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    monitor-exit v2
    :try_end_e5
    .catchall {:try_start_b4 .. :try_end_e5} :catchall_f5

    :try_start_e5
    monitor-exit v1
    :try_end_e6
    .catchall {:try_start_e5 .. :try_end_e6} :catchall_14e

    return-object v0

    .line 244
    :cond_e7
    :try_start_e7
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmUmpInputPortUids(Landroid/media/midi/MidiDeviceServer;)[I

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    aput v4, v3, p2

    .line 245
    monitor-exit v2

    goto :goto_f8

    :catchall_f5
    move-exception p1

    monitor-exit v2
    :try_end_f7
    .catchall {:try_start_e7 .. :try_end_f7} :catchall_f5

    :try_start_f7
    throw p1
    :try_end_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_14e

    .line 249
    :cond_f8
    :goto_f8
    :try_start_f8
    invoke-static {}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$smcreateSeqPacketSocketPair()[Ljava/io/FileDescriptor;

    move-result-object v2

    .line 250
    new-instance v3, Landroid/media/midi/MidiOutputPort;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-direct {v3, v4, p2}, Landroid/media/midi/MidiOutputPort;-><init>(Ljava/io/FileDescriptor;I)V

    .line 251
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortOutputPorts(Landroid/media/midi/MidiDeviceServer;)[Landroid/media/midi/MidiOutputPort;

    move-result-object v4

    aput-object v3, v4, p2

    .line 252
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortReceivers(Landroid/media/midi/MidiDeviceServer;)[Landroid/media/midi/MidiReceiver;

    move-result-object v4

    aget-object v4, v4, p2

    invoke-virtual {v3, v4}, Landroid/media/midi/MidiOutputPort;->connect(Landroid/media/midi/MidiReceiver;)V

    .line 253
    new-instance v4, Landroid/media/midi/MidiDeviceServer$InputPortClient;

    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-direct {v4, v5, p1, v3}, Landroid/media/midi/MidiDeviceServer$InputPortClient;-><init>(Landroid/media/midi/MidiDeviceServer;Landroid/os/IBinder;Landroid/media/midi/MidiOutputPort;)V

    .line 254
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3
    :try_end_125
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_125} :catch_144
    .catchall {:try_start_f8 .. :try_end_125} :catchall_14e

    .line 255
    :try_start_125
    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v5}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    monitor-exit v3
    :try_end_12f
    .catchall {:try_start_125 .. :try_end_12f} :catchall_141

    .line 257
    :try_start_12f
    iget-object p1, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {p1}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortOpen(Landroid/media/midi/MidiDeviceServer;)[Z

    move-result-object p1

    const/4 v3, 0x1

    aput-boolean v3, p1, p2

    .line 258
    iget-object p1, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {p1}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$mupdateDeviceStatus(Landroid/media/midi/MidiDeviceServer;)V

    .line 259
    aget-object p1, v2, v3
    :try_end_13f
    .catch Ljava/io/IOException; {:try_start_12f .. :try_end_13f} :catch_144
    .catchall {:try_start_12f .. :try_end_13f} :catchall_14e

    :try_start_13f
    monitor-exit v1
    :try_end_140
    .catchall {:try_start_13f .. :try_end_140} :catchall_14e

    return-object p1

    .line 256
    :catchall_141
    move-exception p1

    :try_start_142
    monitor-exit v3
    :try_end_143
    .catchall {:try_start_142 .. :try_end_143} :catchall_141

    :try_start_143
    throw p1
    :try_end_144
    .catch Ljava/io/IOException; {:try_start_143 .. :try_end_144} :catch_144
    .catchall {:try_start_143 .. :try_end_144} :catchall_14e

    .line 260
    :catch_144
    move-exception p1

    .line 261
    :try_start_145
    const-string p1, "MidiDeviceServer"

    const-string p2, "unable to create FileDescriptors in openInputPort"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    monitor-exit v1

    return-object v0

    .line 264
    :catchall_14e
    move-exception p1

    monitor-exit v1
    :try_end_150
    .catchall {:try_start_145 .. :try_end_150} :catchall_14e

    throw p1

    .line 219
    :cond_151
    :goto_151
    const-string p1, "MidiDeviceServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "portNumber out of range in openInputPort: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-object v0
.end method

.method public blacklist openOutputPort(Landroid/os/IBinder;I)Ljava/io/FileDescriptor;
    .registers 9

    .line 269
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v0}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmDeviceInfo(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceInfo;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 270
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_17

    goto :goto_1f

    .line 271
    :cond_17
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Can\'t access private device from different UID"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 275
    :cond_1f
    :goto_1f
    const/4 v0, 0x0

    if-ltz p2, :cond_14c

    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmOutputPortCount(Landroid/media/midi/MidiDeviceServer;)I

    move-result v1

    if-lt p2, v1, :cond_2c

    goto/16 :goto_14c

    .line 280
    :cond_2c
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$misUmpDevice(Landroid/media/midi/MidiDeviceServer;)Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 281
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortCount(Landroid/media/midi/MidiDeviceServer;)I

    move-result v1

    if-lt p2, v1, :cond_55

    .line 282
    const-string p1, "MidiDeviceServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in portNumber out of range in openOutputPort: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-object v0

    .line 285
    :cond_55
    iget-object v1, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v1}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmUmpUidLock(Landroid/media/midi/MidiDeviceServer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 286
    :try_start_5c
    iget-object v2, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v2}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmUmpOutputPortUids(Landroid/media/midi/MidiDeviceServer;)[I

    move-result-object v2

    aget v2, v2, p2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_81

    .line 287
    const-string p1, "MidiDeviceServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "output port already open in openOutputPort: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    monitor-exit v1

    return-object v0

    .line 290
    :cond_81
    iget-object v2, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v2}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmUmpInputPortUids(Landroid/media/midi/MidiDeviceServer;)[I

    move-result-object v2

    aget v2, v2, p2

    if-eq v2, v3, :cond_b3

    .line 291
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmUmpInputPortUids(Landroid/media/midi/MidiDeviceServer;)[I

    move-result-object v3

    aget v3, v3, p2

    if-eq v2, v3, :cond_b3

    .line 292
    const-string p1, "MidiDeviceServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "different uid for input in openOutputPort: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    monitor-exit v1

    return-object v0

    .line 295
    :cond_b3
    iget-object v2, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v2}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmUmpOutputPortUids(Landroid/media/midi/MidiDeviceServer;)[I

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    aput v3, v2, p2

    .line 296
    monitor-exit v1

    goto :goto_c4

    :catchall_c1
    move-exception p1

    monitor-exit v1
    :try_end_c3
    .catchall {:try_start_5c .. :try_end_c3} :catchall_c1

    throw p1

    .line 300
    :cond_c4
    :goto_c4
    :try_start_c4
    invoke-static {}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$smcreateSeqPacketSocketPair()[Ljava/io/FileDescriptor;

    move-result-object v1

    .line 301
    new-instance v2, Landroid/media/midi/MidiInputPort;

    const/4 v3, 0x0

    aget-object v4, v1, v3

    invoke-direct {v2, v4, p2}, Landroid/media/midi/MidiInputPort;-><init>(Ljava/io/FileDescriptor;I)V

    .line 305
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmDeviceInfo(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/midi/MidiDeviceInfo;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_e2

    .line 306
    aget-object v4, v1, v3

    invoke-static {v4, v3}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 308
    :cond_e2
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmOutputPortDispatchers(Landroid/media/midi/MidiDeviceServer;)[Lcom/android/internal/midi/MidiDispatcher;

    move-result-object v3

    aget-object v3, v3, p2

    .line 309
    monitor-enter v3
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_c4 .. :try_end_eb} :catch_143

    .line 310
    :try_start_eb
    invoke-virtual {v3}, Lcom/android/internal/midi/MidiDispatcher;->getSender()Landroid/media/midi/MidiSender;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/media/midi/MidiSender;->connect(Landroid/media/midi/MidiReceiver;)V

    .line 311
    invoke-virtual {v3}, Lcom/android/internal/midi/MidiDispatcher;->getReceiverCount()I

    move-result v4

    .line 312
    iget-object v5, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v5}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmOutputPortOpenCount(Landroid/media/midi/MidiDeviceServer;)[I

    move-result-object v5

    aput v4, v5, p2

    .line 313
    iget-object p2, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {p2}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$mupdateDeviceStatus(Landroid/media/midi/MidiDeviceServer;)V

    .line 314
    monitor-exit v3
    :try_end_104
    .catchall {:try_start_eb .. :try_end_104} :catchall_140

    .line 316
    :try_start_104
    iget-object p2, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {p2}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPorts(Landroid/media/midi/MidiDeviceServer;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    new-instance p2, Landroid/media/midi/MidiDeviceServer$OutputPortClient;

    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-direct {p2, v3, p1, v2}, Landroid/media/midi/MidiDeviceServer$OutputPortClient;-><init>(Landroid/media/midi/MidiDeviceServer;Landroid/os/IBinder;Landroid/media/midi/MidiInputPort;)V

    .line 318
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3
    :try_end_11b
    .catch Ljava/io/IOException; {:try_start_104 .. :try_end_11b} :catch_143

    .line 319
    :try_start_11b
    iget-object v4, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v4}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    monitor-exit v3
    :try_end_125
    .catchall {:try_start_11b .. :try_end_125} :catchall_13d

    .line 321
    :try_start_125
    iget-object p1, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {p1}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object p1

    monitor-enter p1
    :try_end_12c
    .catch Ljava/io/IOException; {:try_start_125 .. :try_end_12c} :catch_143

    .line 322
    :try_start_12c
    iget-object v3, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v3}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    monitor-exit p1
    :try_end_136
    .catchall {:try_start_12c .. :try_end_136} :catchall_13a

    .line 324
    const/4 p1, 0x1

    :try_start_137
    aget-object p1, v1, p1
    :try_end_139
    .catch Ljava/io/IOException; {:try_start_137 .. :try_end_139} :catch_143

    return-object p1

    .line 323
    :catchall_13a
    move-exception p2

    :try_start_13b
    monitor-exit p1
    :try_end_13c
    .catchall {:try_start_13b .. :try_end_13c} :catchall_13a

    :try_start_13c
    throw p2
    :try_end_13d
    .catch Ljava/io/IOException; {:try_start_13c .. :try_end_13d} :catch_143

    .line 320
    :catchall_13d
    move-exception p1

    :try_start_13e
    monitor-exit v3
    :try_end_13f
    .catchall {:try_start_13e .. :try_end_13f} :catchall_13d

    :try_start_13f
    throw p1
    :try_end_140
    .catch Ljava/io/IOException; {:try_start_13f .. :try_end_140} :catch_143

    .line 314
    :catchall_140
    move-exception p1

    :try_start_141
    monitor-exit v3
    :try_end_142
    .catchall {:try_start_141 .. :try_end_142} :catchall_140

    :try_start_142
    throw p1
    :try_end_143
    .catch Ljava/io/IOException; {:try_start_142 .. :try_end_143} :catch_143

    .line 325
    :catch_143
    move-exception p1

    .line 326
    const-string p1, "MidiDeviceServer"

    const-string p2, "unable to create FileDescriptors in openOutputPort"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-object v0

    .line 276
    :cond_14c
    :goto_14c
    const-string p1, "MidiDeviceServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "portNumber out of range in openOutputPort: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-object v0
.end method

.method public blacklist setDeviceInfo(Landroid/media/midi/MidiDeviceInfo;)V
    .registers 4

    .line 386
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1e

    .line 389
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v0}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmDeviceInfo(Landroid/media/midi/MidiDeviceServer;)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    if-nez v0, :cond_16

    .line 392
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$1;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v0, p1}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fputmDeviceInfo(Landroid/media/midi/MidiDeviceServer;Landroid/media/midi/MidiDeviceInfo;)V

    .line 393
    return-void

    .line 390
    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setDeviceInfo should only be called once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 387
    :cond_1e
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "setDeviceInfo should only be called by MidiService"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
