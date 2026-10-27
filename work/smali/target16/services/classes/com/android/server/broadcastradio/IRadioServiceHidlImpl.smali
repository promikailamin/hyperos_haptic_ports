.class public final Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;
.super Landroid/hardware/radio/IRadioService$Stub;
.source "IRadioServiceHidlImpl.java"


# instance fields
.field public final mHal1Client:Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

.field public final mHal2Client:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

.field public final mLock:Ljava/lang/Object;

.field public final mService:Lcom/android/server/broadcastradio/BroadcastRadioService;

.field public final mV1Modules:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/broadcastradio/BroadcastRadioService;Lcom/android/server/broadcastradio/RadioServiceUserController;)V
    .registers 5

    .line 63
    invoke-direct {p0}, Landroid/hardware/radio/IRadioService$Stub;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mLock:Ljava/lang/Object;

    .line 64
    const-string v0, "broadcast radio service cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mService:Lcom/android/server/broadcastradio/BroadcastRadioService;

    .line 65
    const-string/jumbo p1, "user controller cannot be null"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    new-instance p1, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

    invoke-direct {p1, p2}, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;-><init>(Lcom/android/server/broadcastradio/RadioServiceUserController;)V

    iput-object p1, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mHal1Client:Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

    .line 68
    invoke-virtual {p1}, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->loadModules()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mV1Modules:Ljava/util/List;

    .line 69
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->max()Ljava/util/OptionalInt;

    move-result-object p1

    .line 70
    new-instance v0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    .line 71
    invoke-virtual {p1}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-virtual {p1}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_45

    :cond_44
    const/4 p1, 0x0

    :goto_45
    invoke-direct {v0, p1, p2}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;-><init>(ILcom/android/server/broadcastradio/RadioServiceUserController;)V

    iput-object v0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mHal2Client:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/broadcastradio/BroadcastRadioService;Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)V
    .registers 5

    .line 77
    invoke-direct {p0}, Landroid/hardware/radio/IRadioService$Stub;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mLock:Ljava/lang/Object;

    .line 78
    const-string v0, "Broadcast radio service cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mService:Lcom/android/server/broadcastradio/BroadcastRadioService;

    .line 79
    const-string p1, "Broadcast radio service implementation for HIDL 1 HAL cannot be null"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mHal1Client:Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

    .line 81
    invoke-virtual {p2}, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->loadModules()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mV1Modules:Ljava/util/List;

    .line 82
    const-string p1, "Broadcast radio service implementation for HIDL 2 HAL cannot be null"

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mHal2Client:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    return-void
.end method

.method public static isDebugEnabled()Z
    .registers 2

    .line 168
    const-string v0, "BcRadioSrvHidl"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addAnnouncementListener([ILandroid/hardware/radio/IAnnouncementListener;)Landroid/hardware/radio/ICloseHandle;
    .registers 6

    .line 119
    invoke-static {}, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 120
    const-string v0, "BcRadioSrvHidl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding announcement listener for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_20
    const-string v0, "Enabled announcement types cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 123
    const-string v0, "Announcement listener cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mService:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->enforcePolicyAccess()V

    .line 126
    iget-object v0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_32
    iget-object v1, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mHal2Client:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-virtual {v1}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->hasAnyModules()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 128
    const-string p1, "BcRadioSrvHidl"

    const-string v1, "There are no HAL 2.0 modules registered"

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    new-instance p1, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;

    iget-object p0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mLock:Ljava/lang/Object;

    invoke-direct {p1, p2, p0}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;-><init>(Landroid/hardware/radio/IAnnouncementListener;Ljava/lang/Object;)V

    monitor-exit v0

    return-object p1

    :catchall_4a
    move-exception p0

    goto :goto_54

    .line 132
    :cond_4c
    iget-object p0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mHal2Client:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->addAnnouncementListener([ILandroid/hardware/radio/IAnnouncementListener;)Landroid/hardware/radio/ICloseHandle;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 133
    :goto_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_32 .. :try_end_55} :catchall_4a

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 138
    iget-object p1, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mService:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "android.permission.DUMP"

    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_3d

    .line 140
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Permission Denial: can\'t dump HIDL BroadcastRadioService from from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " without permission "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "android.permission.DUMP"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 140
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 145
    :cond_3d
    new-instance p1, Landroid/util/IndentingPrintWriter;

    invoke-direct {p1, p2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 146
    const-string p2, "BroadcastRadioService\n"

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 148
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 149
    const-string p2, "HAL1 client: %s\n"

    iget-object v0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mHal1Client:Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 151
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 152
    iget-object p2, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 153
    :try_start_5e
    const-string v0, "Modules of HAL1 client: %s\n"

    iget-object v1, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mV1Modules:Ljava/util/List;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 154
    monitor-exit p2
    :try_end_6a
    .catchall {:try_start_5e .. :try_end_6a} :catchall_83

    .line 155
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 157
    const-string p2, "HAL2 client:\n"

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 159
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 160
    iget-object p0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mHal2Client:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->dumpInfo(Landroid/util/IndentingPrintWriter;)V

    .line 161
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 163
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :catchall_83
    move-exception p0

    .line 154
    :try_start_84
    monitor-exit p2
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    throw p0
.end method

.method public listModules()Ljava/util/List;
    .registers 6

    .line 88
    iget-object v0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mService:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->enforcePolicyAccess()V

    .line 89
    iget-object v0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mHal2Client:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->listModules()Ljava/util/Collection;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 92
    :try_start_e
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mV1Modules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    iget-object p0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mV1Modules:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 94
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_28

    .line 95
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v2

    :catchall_28
    move-exception p0

    .line 94
    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public openTuner(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Landroid/hardware/radio/ITuner;
    .registers 8

    .line 102
    invoke-static {}, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 103
    const-string v0, "BcRadioSrvHidl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening module "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_1c
    iget-object v0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mService:Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/BroadcastRadioService;->enforcePolicyAccess()V

    .line 106
    const-string v0, "Callback must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_29
    iget-object v1, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mHal2Client:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-virtual {v1, p1}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->hasModule(I)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 109
    iget-object p0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mHal2Client:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->openSession(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Landroid/hardware/radio/ITuner;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_39
    move-exception p0

    goto :goto_43

    .line 111
    :cond_3b
    iget-object p0, p0, Lcom/android/server/broadcastradio/IRadioServiceHidlImpl;->mHal1Client:Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->openTuner(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Landroid/hardware/radio/ITuner;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 113
    :goto_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_29 .. :try_end_44} :catchall_39

    throw p0
.end method
