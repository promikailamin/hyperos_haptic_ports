.class public final Lcom/android/server/hdmi/HdmiCecController;
.super Ljava/lang/Object;
.source "HdmiCecController.java"


# static fields
.field public static final EMPTY_BODY:[B


# instance fields
.field public mControlHandler:Landroid/os/Handler;

.field public final mHdmiCecAtomWriter:Lcom/android/server/hdmi/HdmiCecAtomWriter;

.field public mIoHandler:Landroid/os/Handler;

.field public mLogicalAddressAllocationDelay:J

.field public mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

.field public final mMessageHistoryLock:Ljava/lang/Object;

.field public final mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

.field public mPollDevicesDelay:J

.field public final mRemoteDeviceAddressPredicate:Ljava/util/function/Predicate;

.field public final mService:Lcom/android/server/hdmi/HdmiControlService;

.field public final mSystemAudioAddressPredicate:Ljava/util/function/Predicate;


# direct methods
.method public static synthetic $r8$lambda$tdLKXEjHPp_1RAsHvqBRm0azGJ4(Lcom/android/server/hdmi/HdmiCecController;ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/ArrayList;J)V
    .registers 8

    .line 0
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/hdmi/HdmiCecController;->lambda$pollDevices$0(ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/ArrayList;J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmHdmiCecAtomWriter(Lcom/android/server/hdmi/HdmiCecController;)Lcom/android/server/hdmi/HdmiCecAtomWriter;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mHdmiCecAtomWriter:Lcom/android/server/hdmi/HdmiCecAtomWriter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNativeWrapperImpl(Lcom/android/server/hdmi/HdmiCecController;)Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/hdmi/HdmiCecController;)Lcom/android/server/hdmi/HdmiControlService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetCallingUid(Lcom/android/server/hdmi/HdmiCecController;)I
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->getCallingUid()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandleAllocateLogicalAddress(Lcom/android/server/hdmi/HdmiCecController;IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController;->handleAllocateLogicalAddress(IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleHotplug(Lcom/android/server/hdmi/HdmiCecController;IZ)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->handleHotplug(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleIncomingCecCommand(Lcom/android/server/hdmi/HdmiCecController;II[B)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController;->handleIncomingCecCommand(II[B)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrunDevicePolling(Lcom/android/server/hdmi/HdmiCecController;ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;JZ)V
    .registers 9

    .line 0
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/hdmi/HdmiCecController;->runDevicePolling(ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;JZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendPollMessage(Lcom/android/server/hdmi/HdmiCecController;III)Z
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController;->sendPollMessage(III)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smbuildBody(I[B)[B
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->buildBody(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 97
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    sput-object v0, Lcom/android/server/hdmi/HdmiCecController;->EMPTY_BODY:[B

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;Lcom/android/server/hdmi/HdmiCecAtomWriter;)V
    .registers 6

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$1;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecController$1;-><init>(Lcom/android/server/hdmi/HdmiCecController;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mRemoteDeviceAddressPredicate:Ljava/util/function/Predicate;

    .line 134
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$2;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecController$2;-><init>(Lcom/android/server/hdmi/HdmiCecController;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mSystemAudioAddressPredicate:Ljava/util/function/Predicate;

    .line 151
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xfa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 154
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistoryLock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 161
    iput-wide v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mLogicalAddressAllocationDelay:J

    .line 164
    iput-wide v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mPollDevicesDelay:J

    .line 169
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 170
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    .line 171
    iput-object p3, p0, Lcom/android/server/hdmi/HdmiCecController;->mHdmiCecAtomWriter:Lcom/android/server/hdmi/HdmiCecAtomWriter;

    return-void
.end method

.method public static buildBody(I[B)[B
    .registers 5

    .line 304
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    int-to-byte p0, p0

    const/4 v2, 0x0

    .line 305
    aput-byte p0, v0, v2

    .line 306
    array-length p0, p1

    invoke-static {p1, v2, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static create(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecAtomWriter;)Lcom/android/server/hdmi/HdmiCecController;
    .registers 6

    .line 186
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImplAidl;-><init>(Lcom/android/server/hdmi/HdmiCecController-IA;)V

    .line 187
    invoke-static {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecController;->createWithNativeWrapper(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;Lcom/android/server/hdmi/HdmiCecAtomWriter;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v0

    if-eqz v0, :cond_d

    return-object v0

    .line 191
    :cond_d
    const-string v0, "Unable to use CEC and HDMI Connection AIDL HALs"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;

    invoke-direct {v0, v1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl11;-><init>(Lcom/android/server/hdmi/HdmiCecController-IA;)V

    invoke-static {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecController;->createWithNativeWrapper(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;Lcom/android/server/hdmi/HdmiCecAtomWriter;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v0

    if-eqz v0, :cond_21

    return-object v0

    .line 197
    :cond_21
    const-string v0, "Unable to use cec@1.1"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;

    invoke-direct {v0, v1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapperImpl;-><init>(Lcom/android/server/hdmi/HdmiCecController-IA;)V

    invoke-static {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecController;->createWithNativeWrapper(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;Lcom/android/server/hdmi/HdmiCecAtomWriter;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object p0

    return-object p0
.end method

.method public static createWithNativeWrapper(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;Lcom/android/server/hdmi/HdmiCecAtomWriter;)Lcom/android/server/hdmi/HdmiCecController;
    .registers 4

    .line 206
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;-><init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;Lcom/android/server/hdmi/HdmiCecAtomWriter;)V

    .line 207
    invoke-interface {p1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeInit()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_15

    const/4 p0, 0x0

    .line 209
    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "Couldn\'t get tv.cec service."

    invoke-static {p1, p0}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    .line 212
    :cond_15
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecController;->init(Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;)V

    return-object v0
.end method

.method public static isLanguage(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_14

    .line 481
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_14

    .line 485
    :cond_a
    new-instance v1, Landroid/icu/util/ULocale$Builder;

    invoke-direct {v1}, Landroid/icu/util/ULocale$Builder;-><init>()V

    .line 487
    :try_start_f
    invoke-virtual {v1, p0}, Landroid/icu/util/ULocale$Builder;->setLanguage(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;
    :try_end_12
    .catch Landroid/icu/util/IllformedLocaleException; {:try_start_f .. :try_end_12} :catch_14

    const/4 p0, 0x1

    return p0

    :catch_14
    :cond_14
    :goto_14
    return v0
.end method


# virtual methods
.method public final addCecMessageToHistory(ZLcom/android/server/hdmi/HdmiCecMessage;Ljava/util/List;)V
    .registers 5

    .line 865
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 866
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController$MessageHistoryRecord;-><init>(ZLcom/android/server/hdmi/HdmiCecMessage;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->addEventToHistory(Lcom/android/server/hdmi/HdmiCecController$Dumpable;)V

    return-void
.end method

.method public final addEventToHistory(Lcom/android/server/hdmi/HdmiCecController$Dumpable;)V
    .registers 4

    .line 870
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 871
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 872
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    .line 873
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_18

    :catchall_16
    move-exception p0

    goto :goto_1a

    .line 875
    :cond_18
    :goto_18
    monitor-exit v0

    return-void

    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_16

    throw p0
.end method

.method public final addHotplugEventToHistory(IZ)V
    .registers 4

    .line 858
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 859
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$HotplugHistoryRecord;

    invoke-direct {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController$HotplugHistoryRecord;-><init>(IZ)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->addEventToHistory(Lcom/android/server/hdmi/HdmiCecController$Dumpable;)V

    return-void
.end method

.method public addLogicalAddress(I)I
    .registers 3

    .line 327
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 328
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 329
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    invoke-interface {p0, p1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeAddLogicalAddress(I)I

    move-result p0

    return p0

    :cond_10
    const/4 p0, 0x2

    return p0
.end method

.method public allocateLogicalAddress(IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V
    .registers 6

    .line 238
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 240
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mIoHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/hdmi/HdmiCecController$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController$3;-><init>(Lcom/android/server/hdmi/HdmiCecController;IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V

    iget-wide p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mLogicalAddressAllocationDelay:J

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final assertRunOnIoThread()V
    .registers 2

    .line 633
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mIoHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    if-ne v0, p0, :cond_d

    return-void

    .line 634
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Should run on io thread."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final assertRunOnServiceThread()V
    .registers 2

    .line 639
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mControlHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    if-ne v0, p0, :cond_d

    return-void

    .line 640
    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Should run on service thread."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clearLogicalAddress()V
    .registers 1

    .line 342
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 343
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    invoke-interface {p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeClearLogicalAddress()V

    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4

    .line 904
    const-string v0, "CEC message history:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 905
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 906
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 907
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecController$Dumpable;

    .line 908
    invoke-virtual {v1, p1, v0}, Lcom/android/server/hdmi/HdmiCecController$Dumpable;->dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/text/SimpleDateFormat;)V

    goto :goto_16

    .line 910
    :cond_26
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public enableAudioReturnChannel(IZ)V
    .registers 3

    .line 502
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 503
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    invoke-interface {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeEnableAudioReturnChannel(IZ)V

    return-void
.end method

.method public enableCec(Z)V
    .registers 4

    .line 405
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 406
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "enableCec: %b"

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    invoke-interface {p0, p1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->enableCec(Z)V

    return-void
.end method

.method public enableSystemCecControl(Z)V
    .registers 4

    .line 418
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 419
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "enableSystemCecControl: %b"

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    invoke-interface {p0, p1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->enableSystemCecControl(Z)V

    return-void
.end method

.method public enableWakeupByOtp(Z)V
    .registers 4

    .line 392
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 393
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "enableWakeupByOtp: %b"

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    invoke-interface {p0, p1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->enableWakeupByOtp(Z)V

    return-void
.end method

.method public flush(Ljava/lang/Runnable;)V
    .registers 3

    .line 659
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 660
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$6;

    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiCecController$6;-><init>(Lcom/android/server/hdmi/HdmiCecController;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->runOnIoThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getCallingUid()I
    .registers 2

    .line 735
    invoke-static {}, Landroid/os/Binder;->getCallingWorkSourceUid()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_b

    .line 737
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    :cond_b
    return p0
.end method

.method public getMessageHistorySize()I
    .registers 3

    .line 879
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 880
    :try_start_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ArrayBlockingQueue;->remainingCapacity()I

    move-result p0

    add-int/2addr v1, p0

    monitor-exit v0

    return v1

    :catchall_12
    move-exception p0

    .line 881
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public getPhysicalAddress()I
    .registers 1

    .line 357
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 358
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    invoke-interface {p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeGetPhysicalAddress()I

    move-result p0

    return p0
.end method

.method public getPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;
    .registers 1

    .line 312
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    invoke-interface {p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeGetPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;

    move-result-object p0

    return-object p0
.end method

.method public getVendorId()I
    .registers 1

    .line 379
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 380
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    invoke-interface {p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeGetVendorId()I

    move-result p0

    return p0
.end method

.method public getVersion()I
    .registers 1

    .line 368
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 369
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    invoke-interface {p0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeGetVersion()I

    move-result p0

    return p0
.end method

.method public final handleAllocateLogicalAddress(IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V
    .registers 13

    .line 260
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnIoThread()V

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 262
    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiUtils;->isEligibleAddressForDevice(II)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 263
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    const/4 v1, 0x0

    move v2, v1

    :goto_17
    const/16 v3, 0x10

    if-ge v2, v3, :cond_41

    .line 266
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    invoke-static {p1, v2}, Lcom/android/server/hdmi/HdmiUtils;->isEligibleAddressForDevice(II)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 268
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getCecVersion()I

    move-result v3

    .line 267
    invoke-static {v3, v2}, Lcom/android/server/hdmi/HdmiUtils;->isEligibleAddressForCecVersion(II)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 269
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 274
    :cond_41
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_46
    if-ge v3, v2, :cond_6c

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/lang/Integer;

    move v5, v1

    :goto_51
    const/4 v6, 0x3

    if-ge v5, v6, :cond_67

    .line 277
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/server/hdmi/HdmiCecController;->sendPollMessage(III)Z

    move-result v6

    if-eqz v6, :cond_64

    goto :goto_46

    :cond_64
    add-int/lit8 v5, v5, 0x1

    goto :goto_51

    .line 285
    :cond_67
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_6e

    :cond_6c
    const/16 v0, 0xf

    .line 292
    :goto_6e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, p2, v2}, [Ljava/lang/Object;

    move-result-object p2

    .line 291
    const-string v1, "New logical address for device [%d]: [preferred:%d, assigned:%d]"

    invoke-static {v1, p2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_8d

    .line 294
    new-instance p2, Lcom/android/server/hdmi/HdmiCecController$4;

    invoke-direct {p2, p0, p3, p1, v0}, Lcom/android/server/hdmi/HdmiCecController$4;-><init>(Lcom/android/server/hdmi/HdmiCecController;Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;II)V

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecController;->runOnServiceThread(Ljava/lang/Runnable;)V

    :cond_8d
    return-void
.end method

.method public final handleHotplug(IZ)V
    .registers 5

    .line 850
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 851
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Hotplug event:[port:%d, connected:%b]"

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 852
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->addHotplugEventToHistory(IZ)V

    .line 853
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->onHotplug(IZ)V

    return-void
.end method

.method public final handleIncomingCecCommand(II[B)V
    .registers 9

    .line 797
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 799
    array-length v0, p3

    const-string v1, "HdmiCecController"

    if-nez v0, :cond_e

    .line 800
    const-string p0, "Message with empty body received."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    const/4 v0, 0x0

    .line 804
    aget-byte v2, p3, v0

    array-length v3, p3

    const/4 v4, 0x1

    .line 805
    invoke-static {p3, v4, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p3

    .line 804
    invoke-static {p1, p2, v2, p3}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p3

    .line 807
    invoke-virtual {p3}, Lcom/android/server/hdmi/HdmiCecMessage;->getValidationResult()I

    move-result v2

    if-eqz v2, :cond_35

    .line 808
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid message received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[R]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 812
    invoke-virtual {p0, v4, p3, v0}, Lcom/android/server/hdmi/HdmiCecController;->addCecMessageToHistory(ZLcom/android/server/hdmi/HdmiCecMessage;Ljava/util/List;)V

    .line 814
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mHdmiCecAtomWriter:Lcom/android/server/hdmi/HdmiCecAtomWriter;

    .line 815
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->incomingMessageDirection(II)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->getCallingUid()I

    move-result p2

    .line 814
    invoke-virtual {v0, p3, p1, p2}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->messageReported(Lcom/android/server/hdmi/HdmiCecMessage;II)V

    .line 817
    invoke-virtual {p0, p3}, Lcom/android/server/hdmi/HdmiCecController;->onReceiveCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return-void
.end method

.method public final incomingMessageDirection(II)I
    .registers 7

    const/16 v0, 0xf

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 827
    :goto_9
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getLocalDeviceList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_17
    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 828
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v3

    if-ne v3, p1, :cond_2e

    move v2, v1

    :cond_2e
    if-ne v3, p2, :cond_17

    move v0, v1

    goto :goto_17

    :cond_32
    if-nez v2, :cond_38

    if-eqz v0, :cond_38

    const/4 p0, 0x3

    return p0

    :cond_38
    if-eqz v2, :cond_3e

    if-eqz v0, :cond_3e

    const/4 p0, 0x4

    return p0

    :cond_3e
    return v1
.end method

.method public final init(Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;)V
    .registers 4

    .line 217
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getIoLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mIoHandler:Landroid/os/Handler;

    .line 218
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getServiceLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mControlHandler:Landroid/os/Handler;

    .line 219
    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;-><init>(Lcom/android/server/hdmi/HdmiCecController;)V

    invoke-interface {p1, v0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->setCallback(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;)V

    return-void
.end method

.method public final isAcceptableAddress(I)Z
    .registers 3

    const/16 v0, 0xf

    if-ne p1, v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 675
    :cond_6
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecNetwork()Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->isAllocatedLocalDeviceAddress(I)Z

    move-result p0

    return p0
.end method

.method public isConnected(I)Z
    .registers 2

    .line 514
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 515
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    invoke-interface {p0, p1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeIsConnected(I)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$pollDevices$0(ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/ArrayList;J)V
    .registers 17

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide v6, p6

    .line 540
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/hdmi/HdmiCecController;->runDevicePolling(ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;JZ)V

    return-void
.end method

.method public maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V
    .registers 6

    .line 707
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 709
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v0

    .line 710
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    const/16 v2, 0xf

    if-eq v0, v2, :cond_20

    if-ne v1, v2, :cond_12

    goto :goto_20

    .line 716
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result p1

    if-nez p1, :cond_19

    goto :goto_20

    .line 721
    :cond_19
    invoke-static {v0, v1, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildFeatureAbortCommand(IIII)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p1

    .line 720
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    :cond_20
    :goto_20
    return-void
.end method

.method public onReceiveCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 5

    .line 681
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 682
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 683
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isCecControlEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_31

    .line 684
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessage;->isCecTransportMessage(I)Z

    move-result v0

    if-nez v0, :cond_31

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " received when cec disabled"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 692
    :cond_31
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isAddressAllocated()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecController;->isAcceptableAddress(I)Z

    move-result v0

    if-nez v0, :cond_44

    goto :goto_57

    .line 695
    :cond_44
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->handleCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)I

    move-result v0

    const/4 v2, -0x2

    if-ne v0, v2, :cond_51

    .line 698
    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecController;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    return-void

    :cond_51
    const/4 v1, -0x1

    if-eq v0, v1, :cond_57

    .line 701
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecController;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    :cond_57
    :goto_57
    return-void
.end method

.method public final pickPollCandidates(I)Ljava/util/List;
    .registers 5

    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    .line 554
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mRemoteDeviceAddressPredicate:Ljava/util/function/Predicate;

    goto :goto_a

    .line 550
    :cond_8
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mSystemAudioAddressPredicate:Ljava/util/function/Predicate;

    :goto_a
    const/high16 v0, 0x30000

    and-int/2addr p1, v0

    .line 559
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/high16 v1, 0x10000

    const/16 v2, 0xe

    if-eq p1, v1, :cond_2e

    :goto_18
    if-ltz v2, :cond_45

    .line 571
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 572
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    :cond_2e
    const/4 p1, 0x0

    :goto_2f
    if-gt p1, v2, :cond_45

    .line 563
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 564
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_42
    add-int/lit8 p1, p1, 0x1

    goto :goto_2f

    :cond_45
    return-object v0
.end method

.method public pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;IIIJ)V
    .registers 16

    .line 532
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 535
    invoke-virtual {p0, p3}, Lcom/android/server/hdmi/HdmiCecController;->pickPollCandidates(I)Ljava/util/List;

    move-result-object v3

    .line 536
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 538
    iget-object p3, p0, Lcom/android/server/hdmi/HdmiCecController;->mControlHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/hdmi/HdmiCecController$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v5, p1

    move v2, p2

    move v4, p4

    move-wide v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/server/hdmi/HdmiCecController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/hdmi/HdmiCecController;ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/ArrayList;J)V

    iget-wide p0, v1, Lcom/android/server/hdmi/HdmiCecController;->mPollDevicesDelay:J

    invoke-virtual {p3, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final runDevicePolling(ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;JZ)V
    .registers 20

    .line 585
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 586
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    if-eqz p4, :cond_1b

    .line 588
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "[P]:AllocatedAddress=%s"

    invoke-static {p1, p0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 589
    invoke-interface/range {p4 .. p5}, Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;->onPollingFinished(Ljava/util/List;)V

    :cond_1b
    return-void

    :cond_1c
    const/4 v0, 0x0

    .line 593
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/Integer;

    .line 596
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mIoHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/hdmi/HdmiCecController$5;

    move-object v2, p0

    move v3, p1

    move-object v7, p2

    move v5, p3

    move-object v8, p4

    move-object/from16 v6, p5

    move-wide/from16 v9, p6

    invoke-direct/range {v1 .. v10}, Lcom/android/server/hdmi/HdmiCecController$5;-><init>(Lcom/android/server/hdmi/HdmiCecController;ILjava/lang/Integer;ILjava/util/List;Ljava/util/List;Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;J)V

    if-eqz p8, :cond_39

    move-wide/from16 p0, p6

    goto :goto_3b

    :cond_39
    const-wide/16 p0, 0x0

    :goto_3b
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public runOnIoThread(Ljava/lang/Runnable;)V
    .registers 3

    .line 649
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mIoHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;

    invoke-direct {v0, p1}, Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public runOnServiceThread(Ljava/lang/Runnable;)V
    .registers 3

    .line 654
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mControlHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;

    invoke-direct {v0, p1}, Lcom/android/server/hdmi/WorkSourceUidPreservingRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 3

    .line 726
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    const/4 v0, 0x0

    .line 727
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecController;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void
.end method

.method public sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .registers 5

    .line 745
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 746
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 747
    new-instance v1, Lcom/android/server/hdmi/HdmiCecController$7;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecController$7;-><init>(Lcom/android/server/hdmi/HdmiCecController;Lcom/android/server/hdmi/HdmiCecMessage;Ljava/util/List;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecController;->runOnIoThread(Ljava/lang/Runnable;)V

    const/4 p2, 0x0

    .line 789
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/hdmi/HdmiCecController;->addCecMessageToHistory(ZLcom/android/server/hdmi/HdmiCecMessage;Ljava/util/List;)V

    return-void
.end method

.method public final sendPollMessage(III)Z
    .registers 9

    .line 615
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnIoThread()V

    const/4 v0, 0x0

    move v1, v0

    :goto_5
    if-ge v1, p3, :cond_2d

    .line 618
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    sget-object v3, Lcom/android/server/hdmi/HdmiCecController;->EMPTY_BODY:[B

    .line 619
    invoke-interface {v2, p1, p2, v3}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeSendCecCommand(II[B)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_13

    return v3

    :cond_13
    if-eq v2, v3, :cond_2a

    .line 626
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v3, v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 625
    const-string v3, "Failed to send a polling message(%d->%d) with return code %d"

    invoke-static {v3, v2}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2d
    return v0
.end method

.method public setHpdSignalType(II)V
    .registers 5

    .line 429
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 430
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "setHpdSignalType: portId %d, signal %d"

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    invoke-interface {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeSetHpdSignalType(II)V

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .registers 3

    .line 453
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 454
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecController;->isLanguage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 457
    :cond_a
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    invoke-interface {p0, p1}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeSetLanguage(Ljava/lang/String;)V

    return-void
.end method

.method public setLogicalAddressAllocationDelay(J)V
    .registers 3

    .line 465
    iput-wide p1, p0, Lcom/android/server/hdmi/HdmiCecController;->mLogicalAddressAllocationDelay:J

    return-void
.end method

.method public setMessageHistorySize(I)Z
    .registers 6

    const/16 v0, 0xfa

    const/4 v1, 0x0

    if-ge p1, v0, :cond_6

    return v1

    .line 888
    :cond_6
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 890
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistoryLock:Ljava/lang/Object;

    monitor-enter v2

    .line 891
    :try_start_e
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v3

    if-ge p1, v3, :cond_29

    .line 892
    :goto_16
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v3

    sub-int/2addr v3, p1

    if-ge v1, v3, :cond_29

    .line 893
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :catchall_27
    move-exception p0

    goto :goto_33

    .line 897
    :cond_29
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->addAll(Ljava/util/Collection;)Z

    .line 898
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecController;->mMessageHistory:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 899
    monitor-exit v2

    const/4 p0, 0x1

    return p0

    :goto_33
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_e .. :try_end_34} :catchall_27

    throw p0
.end method

.method public setPollDevicesDelay(J)V
    .registers 3

    .line 473
    iput-wide p1, p0, Lcom/android/server/hdmi/HdmiCecController;->mPollDevicesDelay:J

    return-void
.end method
