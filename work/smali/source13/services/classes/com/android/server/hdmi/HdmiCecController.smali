.class final Lcom/android/server/hdmi/HdmiCecController;
.super Ljava/lang/Object;
.source "HdmiCecController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecController$HotplugHistoryRecord;,
        Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;,
        Lcom/android/server/hdmi/HdmiCecController$Dumpable;,
        Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback11;,
        Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;,
        Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;,
        Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;,
        Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;,
        Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;,
        Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;
    }
.end annotation


# static fields
.field private static final ACTION_ON_RECEIVE_MSG:I = 0x2

.field private static final CEC_DISABLED_DROP_MSG:I = 0x4

.field private static final CEC_DISABLED_IGNORE:I = 0x1

.field private static final CEC_DISABLED_LOG_WARNING:I = 0x2

.field private static final EMPTY_BODY:[B

.field protected static final HDMI_CEC_HAL_DEATH_COOKIE:I = 0x161

.field private static final INITIAL_HDMI_MESSAGE_HISTORY_SIZE:I = 0xfa

.field private static final INVALID_PHYSICAL_ADDRESS:I = 0xffff

.field private static final MAX_DEDICATED_ADDRESS:I = 0xb

.field private static final NUM_LOGICAL_ADDRESS:I = 0x10

.field private static final TAG:Ljava/lang/String; = "HdmiCecController"


# instance fields
.field private mControlHandler:Landroid/os/Handler;

.field private final mHdmiCecAtomWriter:Lcom/android/server/hdmi/HdmiCecAtomWriter;

.field private mIoHandler:Landroid/os/Handler;

.field private mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lcom/android/server/hdmi/HdmiCecController$Dumpable;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessageHistoryLock:Ljava/lang/Object;

.field private final mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

.field private final mRemoteDeviceAddressPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/hdmi/HdmiControlService;

.field private final mSystemAudioAddressPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmHdmiCecAtomWriter(Lcom/android/server/hdmi/HdmiCecController;)Lcom/android/server/hdmi/HdmiCecAtomWriter;
    .registers 1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mHdmiCecAtomWriter:Lcom/android/server/hdmi/HdmiCecAtomWriter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNativeWrapperImpl(Lcom/android/server/hdmi/HdmiCecController;)Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/hdmi/HdmiCecController;)Lcom/android/server/hdmi/HdmiControlService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetCallingUid(Lcom/android/server/hdmi/HdmiCecController;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->getCallingUid()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandleAllocateLogicalAddress(Lcom/android/server/hdmi/HdmiCecController;IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController;->handleAllocateLogicalAddress(IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleHotplug(Lcom/android/server/hdmi/HdmiCecController;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->handleHotplug(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleIncomingCecCommand(Lcom/android/server/hdmi/HdmiCecController;II[B)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController;->handleIncomingCecCommand(II[B)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrunDevicePolling(Lcom/android/server/hdmi/HdmiCecController;ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/hdmi/HdmiCecController;->runDevicePolling(ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendPollMessage(Lcom/android/server/hdmi/HdmiCecController;III)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController;->sendPollMessage(III)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smbuildBody(I[B)[B
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->buildBody(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 88
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    sput-object v0, Lcom/android/server/hdmi/HdmiCecController;->EMPTY_BODY:[B

    return-void
.end method

.method private constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;Lcom/android/server/hdmi/HdmiCecAtomWriter;)V
    .registers 6
    .param p1, "service"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p2, "nativeWrapper"    # Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;
    .param p3, "atomWriter"    # Lcom/android/server/hdmi/HdmiCecAtomWriter;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$1;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecController$1;-><init>(Lcom/android/server/hdmi/HdmiCecController;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mRemoteDeviceAddressPredicate:Ljava/util/function/Predicate;

    .line 125
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$2;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecController$2;-><init>(Lcom/android/server/hdmi/HdmiCecController;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mSystemAudioAddressPredicate:Ljava/util/function/Predicate;

    .line 142
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xfa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 145
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistoryLock:Ljava/lang/Object;

    .line 154
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 155
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    .line 156
    iput-object p3, p0, Lcom/android/server/hdmi/HdmiCecController;->mHdmiCecAtomWriter:Lcom/android/server/hdmi/HdmiCecAtomWriter;

    .line 157
    return-void
.end method

.method private addCecMessageToHistory(ZLcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 4
    .param p1, "isReceived"    # Z
    .param p2, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 764
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 765
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;

    invoke-direct {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;-><init>(ZLcom/android/server/hdmi/HdmiCecMessage;)V

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->addEventToHistory(Lcom/android/server/hdmi/HdmiCecController$Dumpable;)V

    .line 766
    return-void
.end method

.method private addEventToHistory(Lcom/android/server/hdmi/HdmiCecController$Dumpable;)V
    .registers 4
    .param p1, "event"    # Lcom/android/server/hdmi/HdmiCecController$Dumpable;

    .line 769
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 770
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 771
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    .line 772
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 774
    :cond_15
    monitor-exit v0

    .line 775
    return-void

    .line 774
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private addHotplugEventToHistory(IZ)V
    .registers 4
    .param p1, "port"    # I
    .param p2, "connected"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 758
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 759
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$HotplugHistoryRecord;

    invoke-direct {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController$HotplugHistoryRecord;-><init>(IZ)V

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->addEventToHistory(Lcom/android/server/hdmi/HdmiCecController$Dumpable;)V

    .line 760
    return-void
.end method

.method private assertRunOnIoThread()V
    .registers 3

    .line 541
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mIoHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_d

    .line 544
    return-void

    .line 542
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should run on io thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertRunOnServiceThread()V
    .registers 3

    .line 547
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mControlHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_d

    .line 550
    return-void

    .line 548
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should run on service thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static buildBody(I[B)[B
    .registers 6
    .param p0, "opcode"    # I
    .param p1, "params"    # [B

    .line 283
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 284
    .local v0, "body":[B
    int-to-byte v2, p0

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    .line 285
    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    return-object v0
.end method

.method static create(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecAtomWriter;)Lcom/android/server/hdmi/HdmiCecController;
    .registers 6
    .param p0, "service"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "atomWriter"    # Lcom/android/server/hdmi/HdmiCecAtomWriter;

    .line 171
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;-><init>(Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11-IA;)V

    invoke-static {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecController;->createWithNativeWrapper(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;Lcom/android/server/hdmi/HdmiCecAtomWriter;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v0

    .line 173
    .local v0, "controller":Lcom/android/server/hdmi/HdmiCecController;
    if-eqz v0, :cond_d

    .line 174
    return-object v0

    .line 176
    :cond_d
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Unable to use cec@1.1"

    invoke-static {v3, v2}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    new-instance v2, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;

    invoke-direct {v2, v1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;-><init>(Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl-IA;)V

    invoke-static {p0, v2, p1}, Lcom/android/server/hdmi/HdmiCecController;->createWithNativeWrapper(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;Lcom/android/server/hdmi/HdmiCecAtomWriter;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v1

    return-object v1
.end method

.method static createWithNativeWrapper(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;Lcom/android/server/hdmi/HdmiCecAtomWriter;)Lcom/android/server/hdmi/HdmiCecController;
    .registers 7
    .param p0, "service"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "nativeWrapper"    # Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;
    .param p2, "atomWriter"    # Lcom/android/server/hdmi/HdmiCecAtomWriter;

    .line 185
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;Lcom/android/server/hdmi/HdmiCecAtomWriter;)V

    .line 186
    .local v0, "controller":Lcom/android/server/hdmi/HdmiCecController;
    invoke-interface {p1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeInit()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "nativePtr":Ljava/lang/String;
    if-nez v1, :cond_15

    .line 188
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Couldn\'t get tv.cec service."

    invoke-static {v3, v2}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    const/4 v2, 0x0

    return-object v2

    .line 191
    :cond_15
    invoke-direct {v0, p1}, Lcom/android/server/hdmi/HdmiCecController;->init(Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;)V

    .line 192
    return-object v0
.end method

.method private getCallingUid()I
    .registers 3

    .line 643
    invoke-static {}, Landroid/os/Binder;->getCallingWorkSourceUid()I

    move-result v0

    .line 644
    .local v0, "workSourceUid":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 645
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    return v1

    .line 647
    :cond_c
    return v0
.end method

.method private handleAllocateLogicalAddress(IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V
    .registers 14
    .param p1, "deviceType"    # I
    .param p2, "preferredAddress"    # I
    .param p3, "callback"    # Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$IoThreadOnly;
    .end annotation

    .line 239
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnIoThread()V

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v0, "logicalAddressesToPoll":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiUtils;->isEligibleAddressForDevice(II)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 242
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_15
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    const/16 v2, 0x10

    if-ge v1, v2, :cond_40

    .line 245
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    invoke-static {p1, v1}, Lcom/android/server/hdmi/HdmiUtils;->isEligibleAddressForDevice(II)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 247
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getCecVersion()I

    move-result v2

    .line 246
    invoke-static {v2, v1}, Lcom/android/server/hdmi/HdmiUtils;->isEligibleAddressForCecVersion(II)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 248
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 252
    .end local v1    # "i":I
    :cond_40
    const/16 v1, 0xf

    .line 253
    .local v1, "logicalAddress":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_46
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v3, :cond_73

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 254
    .local v3, "logicalAddressToPoll":Ljava/lang/Integer;
    const/4 v6, 0x0

    .line 255
    .local v6, "acked":Z
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_56
    if-ge v7, v4, :cond_6b

    .line 256
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v8, v9, v5}, Lcom/android/server/hdmi/HdmiCecController;->sendPollMessage(III)Z

    move-result v8

    if-eqz v8, :cond_68

    .line 257
    const/4 v6, 0x1

    .line 258
    goto :goto_6b

    .line 255
    :cond_68
    add-int/lit8 v7, v7, 0x1

    goto :goto_56

    .line 263
    .end local v7    # "j":I
    :cond_6b
    :goto_6b
    if-nez v6, :cond_72

    .line 264
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 265
    goto :goto_73

    .line 267
    .end local v3    # "logicalAddressToPoll":Ljava/lang/Integer;
    .end local v6    # "acked":Z
    :cond_72
    goto :goto_46

    .line 269
    :cond_73
    :goto_73
    move v2, v1

    .line 270
    .local v2, "assignedAddress":I
    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 271
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 270
    const-string v4, "New logical address for device [%d]: [preferred:%d, assigned:%d]"

    invoke-static {v4, v3}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    if-eqz p3, :cond_99

    .line 273
    new-instance v3, Lcom/android/server/hdmi/HdmiCecController$4;

    invoke-direct {v3, p0, p3, p1, v2}, Lcom/android/server/hdmi/HdmiCecController$4;-><init>(Lcom/android/server/hdmi/HdmiCecController;Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;II)V

    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecController;->runOnServiceThread(Ljava/lang/Runnable;)V

    .line 280
    :cond_99
    return-void
.end method

.method private handleHotplug(IZ)V
    .registers 6
    .param p1, "port"    # I
    .param p2, "connected"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 750
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 751
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Hotplug event:[port:%d, connected:%b]"

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 752
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->addHotplugEventToHistory(IZ)V

    .line 753
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->onHotplug(IZ)V

    .line 754
    return-void
.end method

.method private handleIncomingCecCommand(II[B)V
    .registers 10
    .param p1, "srcAddress"    # I
    .param p2, "dstAddress"    # I
    .param p3, "body"    # [B
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 697
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 699
    array-length v0, p3

    const-string v1, "HdmiCecController"

    if-nez v0, :cond_e

    .line 700
    const-string v0, "Message with empty body received."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    return-void

    .line 704
    :cond_e
    const/4 v0, 0x0

    aget-byte v2, p3, v0

    array-length v3, p3

    .line 705
    const/4 v4, 0x1

    invoke-static {p3, v4, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    .line 704
    invoke-static {p1, p2, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v2

    .line 707
    .local v2, "command":Lcom/android/server/hdmi/HdmiCecMessage;
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecMessage;->getValidationResult()I

    move-result v3

    if-eqz v3, :cond_37

    .line 708
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid message received: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[R]:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 712
    invoke-direct {p0, v4, v2}, Lcom/android/server/hdmi/HdmiCecController;->addCecMessageToHistory(ZLcom/android/server/hdmi/HdmiCecMessage;)V

    .line 714
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mHdmiCecAtomWriter:Lcom/android/server/hdmi/HdmiCecAtomWriter;

    .line 715
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->incomingMessageDirection(II)I

    move-result v1

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->getCallingUid()I

    move-result v3

    .line 714
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->messageReported(Lcom/android/server/hdmi/HdmiCecMessage;II)V

    .line 717
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiCecController;->onReceiveCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 718
    return-void
.end method

.method private incomingMessageDirection(II)I
    .registers 9
    .param p1, "srcAddress"    # I
    .param p2, "dstAddress"    # I

    .line 725
    const/4 v0, 0x0

    .line 726
    .local v0, "sourceIsLocal":Z
    const/4 v1, 0x1

    const/16 v2, 0xf

    if-ne p2, v2, :cond_8

    move v2, v1

    goto :goto_9

    :cond_8
    const/4 v2, 0x0

    .line 727
    .local v2, "destinationIsLocal":Z
    :goto_9
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDeviceList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 728
    .local v4, "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v5

    .line 729
    .local v5, "logicalAddress":I
    if-ne v5, p1, :cond_2e

    .line 730
    const/4 v0, 0x1

    .line 732
    :cond_2e
    if-ne v5, p2, :cond_31

    .line 733
    const/4 v2, 0x1

    .line 735
    .end local v4    # "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .end local v5    # "logicalAddress":I
    :cond_31
    goto :goto_17

    .line 737
    :cond_32
    if-nez v0, :cond_38

    if-eqz v2, :cond_38

    .line 738
    const/4 v1, 0x3

    return v1

    .line 739
    :cond_38
    if-eqz v0, :cond_3e

    if-eqz v2, :cond_3e

    .line 740
    const/4 v1, 0x4

    return v1

    .line 742
    :cond_3e
    return v1
.end method

.method private init(Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;)V
    .registers 4
    .param p1, "nativeWrapper"    # Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    .line 196
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getIoLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mIoHandler:Landroid/os/Handler;

    .line 197
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getServiceLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mControlHandler:Landroid/os/Handler;

    .line 198
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;-><init>(Lcom/android/server/hdmi/HdmiCecController;)V

    invoke-interface {p1, v0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->setCallback(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;)V

    .line 199
    return-void
.end method

.method private isAcceptableAddress(I)Z
    .registers 3
    .param p1, "address"    # I

    .line 580
    const/16 v0, 0xf

    if-ne p1, v0, :cond_6

    .line 581
    const/4 v0, 0x1

    return v0

    .line 583
    :cond_6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->isAllocatedLocalDeviceAddress(I)Z

    move-result v0

    return v0
.end method

.method static isLanguage(Ljava/lang/String;)Z
    .registers 4
    .param p0, "language"    # Ljava/lang/String;

    .line 394
    const/4 v0, 0x0

    if-eqz p0, :cond_16

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_16

    .line 398
    :cond_a
    new-instance v1, Landroid/icu/util/ULocale$Builder;

    invoke-direct {v1}, Landroid/icu/util/ULocale$Builder;-><init>()V

    .line 400
    .local v1, "builder":Landroid/icu/util/ULocale$Builder;
    :try_start_f
    invoke-virtual {v1, p0}, Landroid/icu/util/ULocale$Builder;->setLanguage(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;
    :try_end_12
    .catch Landroid/icu/util/IllformedLocaleException; {:try_start_f .. :try_end_12} :catch_14

    .line 401
    const/4 v0, 0x1

    return v0

    .line 402
    :catch_14
    move-exception v2

    .line 403
    .local v2, "e":Landroid/icu/util/IllformedLocaleException;
    return v0

    .line 395
    .end local v1    # "builder":Landroid/icu/util/ULocale$Builder;
    .end local v2    # "e":Landroid/icu/util/IllformedLocaleException;
    :cond_16
    :goto_16
    return v0
.end method

.method private pickPollCandidates(I)Ljava/util/List;
    .registers 8
    .param p1, "pickStrategy"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 454
    and-int/lit8 v0, p1, 0x3

    .line 455
    .local v0, "strategy":I
    const/4 v1, 0x0

    .line 456
    .local v1, "pickPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Integer;>;"
    packed-switch v0, :pswitch_data_4c

    .line 462
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mRemoteDeviceAddressPredicate:Ljava/util/function/Predicate;

    goto :goto_c

    .line 458
    :pswitch_9
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mSystemAudioAddressPredicate:Ljava/util/function/Predicate;

    .line 459
    nop

    .line 466
    :goto_c
    const/high16 v2, 0x30000

    and-int/2addr v2, p1

    .line 467
    .local v2, "iterationStrategy":I
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 468
    .local v3, "pollingCandidates":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    packed-switch v2, :pswitch_data_52

    .line 478
    const/16 v4, 0xe

    .local v4, "i":I
    goto :goto_34

    .line 470
    .end local v4    # "i":I
    :pswitch_1a
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1b
    const/16 v5, 0xe

    if-gt v4, v5, :cond_33

    .line 471
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 472
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 470
    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 475
    .end local v4    # "i":I
    :cond_33
    goto :goto_4a

    .line 478
    .restart local v4    # "i":I
    :goto_34
    if-ltz v4, :cond_4a

    .line 479
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 480
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 478
    :cond_47
    add-int/lit8 v4, v4, -0x1

    goto :goto_34

    .line 485
    .end local v4    # "i":I
    :cond_4a
    :goto_4a
    return-object v3

    nop

    :pswitch_data_4c
    .packed-switch 0x2
        :pswitch_9
    .end packed-switch

    :pswitch_data_52
    .packed-switch 0x10000
        :pswitch_1a
    .end packed-switch
.end method

.method private runDevicePolling(ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;)V
    .registers 16
    .param p1, "sourceAddress"    # I
    .param p3, "retryCount"    # I
    .param p4, "callback"    # Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 492
    .local p2, "candidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p5, "allocated":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 493
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 494
    if-eqz p4, :cond_1d

    .line 495
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "[P]:AllocatedAddress=%s"

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 496
    invoke-interface {p4, p5}, Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;->onPollingFinished(Ljava/util/List;)V

    .line 498
    :cond_1d
    return-void

    .line 501
    :cond_1e
    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 504
    .local v0, "candidate":Ljava/lang/Integer;
    new-instance v9, Lcom/android/server/hdmi/HdmiCecController$5;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    move-object v4, v0

    move v5, p3

    move-object v6, p5

    move-object v7, p2

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/hdmi/HdmiCecController$5;-><init>(Lcom/android/server/hdmi/HdmiCecController;ILjava/lang/Integer;ILjava/util/List;Ljava/util/List;Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;)V

    invoke-virtual {p0, v9}, Lcom/android/server/hdmi/HdmiCecController;->runOnIoThread(Ljava/lang/Runnable;)V

    .line 519
    return-void
.end method

.method private sendPollMessage(III)Z
    .registers 10
    .param p1, "sourceAddress"    # I
    .param p2, "destinationAddress"    # I
    .param p3, "retryCount"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$IoThreadOnly;
    .end annotation

    .line 523
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnIoThread()V

    .line 524
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    const/4 v1, 0x0

    if-ge v0, p3, :cond_33

    .line 526
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    sget-object v3, Lcom/android/server/hdmi/HdmiCecController;->EMPTY_BODY:[B

    .line 527
    invoke-interface {v2, p1, p2, v3}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeSendCecCommand(II[B)I

    move-result v2

    .line 529
    .local v2, "ret":I
    const/4 v3, 0x1

    if-nez v2, :cond_13

    .line 530
    return v3

    .line 531
    :cond_13
    if-eq v2, v3, :cond_30

    .line 533
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 534
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v3

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    .line 533
    const-string v1, "Failed to send a polling message(%d->%d) with return code %d"

    invoke-static {v1, v4}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 524
    .end local v2    # "ret":I
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 537
    .end local v0    # "i":I
    :cond_33
    return v1
.end method


# virtual methods
.method addLogicalAddress(I)I
    .registers 3
    .param p1, "newLogicalAddress"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 306
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 307
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 308
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    invoke-interface {v0, p1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeAddLogicalAddress(I)I

    move-result v0

    return v0

    .line 310
    :cond_10
    const/4 v0, 0x2

    return v0
.end method

.method allocateLogicalAddress(IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V
    .registers 5
    .param p1, "deviceType"    # I
    .param p2, "preferredAddress"    # I
    .param p3, "callback"    # Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 217
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 219
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController$3;-><init>(Lcom/android/server/hdmi/HdmiCecController;IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->runOnIoThread(Ljava/lang/Runnable;)V

    .line 225
    return-void
.end method

.method clearLogicalAddress()V
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 321
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 322
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeClearLogicalAddress()V

    .line 323
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 803
    const-string v0, "CEC message history:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 804
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 805
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 806
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiCecController$Dumpable;

    .line 807
    .local v2, "record":Lcom/android/server/hdmi/HdmiCecController$Dumpable;
    invoke-virtual {v2, p1, v0}, Lcom/android/server/hdmi/HdmiCecController$Dumpable;->dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/text/SimpleDateFormat;)V

    .line 808
    .end local v2    # "record":Lcom/android/server/hdmi/HdmiCecController$Dumpable;
    goto :goto_16

    .line 809
    :cond_26
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 810
    return-void
.end method

.method enableAudioReturnChannel(IZ)V
    .registers 4
    .param p1, "port"    # I
    .param p2, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 415
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 416
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    invoke-interface {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeEnableAudioReturnChannel(IZ)V

    .line 417
    return-void
.end method

.method flush(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 567
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 568
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$6;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiCecController$6;-><init>(Lcom/android/server/hdmi/HdmiCecController;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->runOnIoThread(Ljava/lang/Runnable;)V

    .line 576
    return-void
.end method

.method getMessageHistorySize()I
    .registers 4

    .line 778
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 779
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->remainingCapacity()I

    move-result v2

    add-int/2addr v1, v2

    monitor-exit v0

    return v1

    .line 780
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method getPhysicalAddress()I
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 336
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 337
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeGetPhysicalAddress()I

    move-result v0

    return v0
.end method

.method getPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;
    .registers 2

    .line 291
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeGetPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object v0

    return-object v0
.end method

.method getVendorId()I
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 358
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 359
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeGetVendorId()I

    move-result v0

    return v0
.end method

.method getVersion()I
    .registers 2
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 347
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 348
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeGetVersion()I

    move-result v0

    return v0
.end method

.method isConnected(I)Z
    .registers 3
    .param p1, "port"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 427
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 428
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    invoke-interface {v0, p1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeIsConnected(I)Z

    move-result v0

    return v0
.end method

.method maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V
    .registers 7
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .param p2, "reason"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 615
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 617
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v0

    .line 618
    .local v0, "src":I
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    .line 619
    .local v1, "dest":I
    const/16 v2, 0xf

    if-eq v0, v2, :cond_22

    if-ne v1, v2, :cond_12

    goto :goto_22

    .line 624
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v2

    .line 625
    .local v2, "originalOpcode":I
    if-nez v2, :cond_19

    .line 626
    return-void

    .line 628
    :cond_19
    nop

    .line 629
    invoke-static {v0, v1, v2, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildFeatureAbortCommand(IIII)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v3

    .line 628
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecController;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 630
    return-void

    .line 622
    .end local v2    # "originalOpcode":I
    :cond_22
    :goto_22
    return-void
.end method

.method onReceiveCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 5
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 589
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 590
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 591
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isControlEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_34

    .line 592
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessage;->isCecTransportMessage(I)Z

    move-result v0

    if-nez v0, :cond_34

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " received when cec disabled"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 600
    :cond_34
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isAddressAllocated()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->isAcceptableAddress(I)Z

    move-result v0

    if-nez v0, :cond_47

    .line 601
    return-void

    .line 603
    :cond_47
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->handleCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result v0

    .line 604
    .local v0, "messageState":I
    const/4 v2, -0x2

    if-ne v0, v2, :cond_54

    .line 606
    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecController;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    goto :goto_5a

    .line 607
    :cond_54
    const/4 v1, -0x1

    if-eq v0, v1, :cond_5a

    .line 609
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecController;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    .line 611
    :cond_5a
    :goto_5a
    return-void
.end method

.method pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;III)V
    .registers 12
    .param p1, "callback"    # Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;
    .param p2, "sourceAddress"    # I
    .param p3, "pickStrategy"    # I
    .param p4, "retryCount"    # I
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 445
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 448
    invoke-direct {p0, p3}, Lcom/android/server/hdmi/HdmiCecController;->pickPollCandidates(I)Ljava/util/List;

    move-result-object v6

    .line 449
    .local v6, "pollingCandidates":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 450
    .local v5, "allocated":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object v0, p0

    move v1, p2

    move-object v2, v6

    move v3, p4

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiCecController;->runDevicePolling(ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;)V

    .line 451
    return-void
.end method

.method runOnIoThread(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 557
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mIoHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;

    invoke-direct {v1, p1}, Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 558
    return-void
.end method

.method runOnServiceThread(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 562
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mControlHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;

    invoke-direct {v1, p1}, Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 563
    return-void
.end method

.method sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 3
    .param p1, "cecMessage"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 634
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 635
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecController;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 636
    return-void
.end method

.method sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .registers 4
    .param p1, "cecMessage"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .param p2, "callback"    # Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 653
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 654
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecController;->addCecMessageToHistory(ZLcom/android/server/hdmi/HdmiCecMessage;)V

    .line 655
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController$7;-><init>(Lcom/android/server/hdmi/HdmiCecController;Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->runOnIoThread(Ljava/lang/Runnable;)V

    .line 690
    return-void
.end method

.method setLanguage(Ljava/lang/String;)V
    .registers 3
    .param p1, "language"    # Ljava/lang/String;
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 382
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 383
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecController;->isLanguage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 384
    return-void

    .line 386
    :cond_a
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    invoke-interface {v0, p1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeSetLanguage(Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method setMessageHistorySize(I)Z
    .registers 6
    .param p1, "newSize"    # I

    .line 784
    const/16 v0, 0xfa

    if-ge p1, v0, :cond_6

    .line 785
    const/4 v0, 0x0

    return v0

    .line 787
    :cond_6
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 789
    .local v0, "newMessageHistory":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<Lcom/android/server/hdmi/HdmiCecController$Dumpable;>;"
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistoryLock:Ljava/lang/Object;

    monitor-enter v1

    .line 790
    :try_start_e
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v2

    if-ge p1, v2, :cond_28

    .line 791
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v3

    sub-int/2addr v3, p1

    if-ge v2, v3, :cond_28

    .line 792
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    .line 791
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 796
    .end local v2    # "i":I
    :cond_28
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->addAll(Ljava/util/Collection;)Z

    .line 797
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 798
    monitor-exit v1

    .line 799
    const/4 v1, 0x1

    return v1

    .line 798
    :catchall_32
    move-exception v2

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_e .. :try_end_34} :catchall_32

    throw v2
.end method

.method setOption(IZ)V
    .registers 6
    .param p1, "flag"    # I
    .param p2, "enabled"    # Z
    .annotation runtime Lcom/android/server/hdmi/HdmiAnnotations$ServiceThreadOnly;
    .end annotation

    .line 370
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 371
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "setOption: [flag:%d, enabled:%b]"

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    invoke-interface {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeSetOption(IZ)V

    .line 373
    return-void
.end method
