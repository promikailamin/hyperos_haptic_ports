.class public Lcom/android/server/ConsumerIrService;
.super Landroid/hardware/IConsumerIrService$Stub;
.source "ConsumerIrService.java"


# static fields
.field private static final DEVICE_REGION:Ljava/lang/String;

.field private static final EVENT_APP_ID:Ljava/lang/String; = "31000000091"

.field private static final EVENT_NAME:Ljava/lang/String; = "ir"

.field private static final FLAG_NON_ANONYMOUS:I = 0x2

.field private static final KEY_EVENT_TYPE:Ljava/lang/String; = "ir_status"

.field private static final MAX_XMIT_TIME:I = 0x1e8480

.field private static final ONE_TRACK_ACTION:Ljava/lang/String; = "onetrack.action.TRACK_EVENT"

.field private static final TAG:Ljava/lang/String; = "ConsumerIrService"


# instance fields
.field private mAidlService:Landroid/hardware/ir/IConsumerIr;

.field private final mContext:Landroid/content/Context;

.field private final mHalLock:Ljava/lang/Object;

.field private final mHasNativeHal:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 58
    const-string/jumbo v0, "ro.miui.region"

    const-string v1, "CN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ConsumerIrService;->DEVICE_REGION:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Landroid/hardware/IConsumerIrService$Stub;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ConsumerIrService;->mAidlService:Landroid/hardware/ir/IConsumerIr;

    .line 62
    iput-object p1, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    .line 63
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 65
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "ConsumerIrService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/ConsumerIrService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 66
    invoke-virtual {v2, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 68
    invoke-direct {p0}, Lcom/android/server/ConsumerIrService;->getHalService()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.consumerir"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 71
    if-eqz v1, :cond_39

    goto :goto_43

    .line 72
    :cond_39
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "FEATURE_CONSUMER_IR present, but no IR HAL loaded!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    :cond_41
    if-nez v1, :cond_44

    .line 77
    :goto_43
    return-void

    .line 75
    :cond_44
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IR HAL present, but FEATURE_CONSUMER_IR is not set!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getHalService()Z
    .registers 3

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/hardware/ir/IConsumerIr;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "fqName":Ljava/lang/String;
    nop

    .line 88
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 87
    invoke-static {v1}, Landroid/hardware/ir/IConsumerIr$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ir/IConsumerIr;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ConsumerIrService;->mAidlService:Landroid/hardware/ir/IConsumerIr;

    .line 89
    if-eqz v1, :cond_24

    .line 90
    const/4 v1, 0x1

    return v1

    .line 94
    :cond_24
    invoke-static {}, Lcom/android/server/ConsumerIrService;->getHidlHalService()Z

    move-result v1

    return v1
.end method

.method private static native getHidlHalService()Z
.end method

.method private static native halGetCarrierFrequencies()[I
.end method

.method private static native halTransmit(I[I)I
.end method

.method private reportIrToOneTrack()V
    .registers 3

    .line 105
    sget-object v0, Lcom/android/server/ConsumerIrService;->DEVICE_REGION:Ljava/lang/String;

    const-string v1, "IN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 106
    return-void

    .line 108
    :cond_b
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/ConsumerIrService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/ConsumerIrService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ConsumerIrService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    return-void
.end method

.method private throwIfNoIrEmitter()V
    .registers 3

    .line 98
    iget-boolean v0, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    if-eqz v0, :cond_5

    .line 101
    return-void

    .line 99
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "IR emitter not available"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCarrierFrequencies()[I
    .registers 7

    .line 175
    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TRANSMIT_IR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4f

    .line 180
    invoke-direct {p0}, Lcom/android/server/ConsumerIrService;->throwIfNoIrEmitter()V

    .line 182
    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_10
    iget-object v1, p0, Lcom/android/server/ConsumerIrService;->mAidlService:Landroid/hardware/ir/IConsumerIr;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_4c

    if-eqz v1, :cond_46

    .line 185
    :try_start_14
    invoke-interface {v1}, Landroid/hardware/ir/IConsumerIr;->getCarrierFreqs()[Landroid/hardware/ir/ConsumerIrFreqRange;

    move-result-object v1

    .line 186
    .local v1, "output":[Landroid/hardware/ir/ConsumerIrFreqRange;
    array-length v2, v1

    if-gtz v2, :cond_22

    .line 187
    const-string v2, "ConsumerIrService"

    const-string v3, "Error getting carrier frequencies."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_22
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    .line 190
    .local v2, "result":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_28
    array-length v4, v1

    if-ge v3, v4, :cond_40

    .line 191
    mul-int/lit8 v4, v3, 0x2

    aget-object v5, v1, v3

    iget v5, v5, Landroid/hardware/ir/ConsumerIrFreqRange;->minHz:I

    aput v5, v2, v4

    .line 192
    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-object v5, v1, v3

    iget v5, v5, Landroid/hardware/ir/ConsumerIrFreqRange;->maxHz:I

    aput v5, v2, v4
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_3d} :catch_42
    .catchall {:try_start_14 .. :try_end_3d} :catchall_4c

    .line 190
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 194
    .end local v3    # "i":I
    :cond_40
    :try_start_40
    monitor-exit v0

    return-object v2

    .line 195
    .end local v1    # "output":[Landroid/hardware/ir/ConsumerIrFreqRange;
    .end local v2    # "result":[I
    :catch_42
    move-exception v1

    .line 196
    .local v1, "ignore":Landroid/os/RemoteException;
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    .line 199
    .end local v1    # "ignore":Landroid/os/RemoteException;
    :cond_46
    invoke-static {}, Lcom/android/server/ConsumerIrService;->halGetCarrierFrequencies()[I

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 201
    :catchall_4c
    move-exception v1

    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_40 .. :try_end_4e} :catchall_4c

    throw v1

    .line 177
    :cond_4f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires TRANSMIT_IR permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasIrEmitter()Z
    .registers 2

    .line 81
    iget-boolean v0, p0, Lcom/android/server/ConsumerIrService;->mHasNativeHal:Z

    return v0
.end method

.method synthetic lambda$reportIrToOneTrack$0$com-android-server-ConsumerIrService()V
    .registers 6

    .line 110
    const-string v0, "ConsumerIrService"

    :try_start_2
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "onetrack.action.TRACK_EVENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.miui.analytics"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string v2, "APP_ID"

    const-string v3, "31000000091"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v2, "EVENT_NAME"

    const-string/jumbo v3, "ir"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string v2, "PACKAGE"

    iget-object v3, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 116
    .local v2, "params":Landroid/os/Bundle;
    sget-object v3, Lcom/android/server/ConsumerIrService;->DEVICE_REGION:Ljava/lang/String;

    const-string v4, "CN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 117
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 119
    :cond_3c
    const-string/jumbo v3, "ir_status"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 120
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 121
    iget-object v3, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4b} :catch_4d

    .line 124
    nop

    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "params":Landroid/os/Bundle;
    goto :goto_68

    .line 122
    :catch_4d
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error reportIrToOneTrack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_68
    const-string/jumbo v1, "reportIrToOneTrack"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void
.end method

.method public transmit(Ljava/lang/String;I[I)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "carrierFrequency"    # I
    .param p3, "pattern"    # [I

    .line 132
    iget-object v0, p0, Lcom/android/server/ConsumerIrService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TRANSMIT_IR"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7f

    .line 137
    const-wide/16 v0, 0x0

    .line 139
    .local v0, "totalXmitTime":J
    array-length v2, p3

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_21

    aget v4, p3, v3

    .line 140
    .local v4, "slice":I
    if-lez v4, :cond_19

    .line 143
    int-to-long v5, v4

    add-long/2addr v0, v5

    .line 139
    .end local v4    # "slice":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 141
    .restart local v4    # "slice":I
    :cond_19
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Non-positive IR slice"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 146
    .end local v4    # "slice":I
    :cond_21
    const-wide/32 v2, 0x1e8480

    cmp-long v2, v0, v2

    if-gtz v2, :cond_77

    .line 150
    invoke-direct {p0}, Lcom/android/server/ConsumerIrService;->throwIfNoIrEmitter()V

    .line 153
    iget-object v2, p0, Lcom/android/server/ConsumerIrService;->mHalLock:Ljava/lang/Object;

    monitor-enter v2

    .line 154
    :try_start_2e
    iget-object v3, p0, Lcom/android/server/ConsumerIrService;->mAidlService:Landroid/hardware/ir/IConsumerIr;
    :try_end_30
    .catchall {:try_start_2e .. :try_end_30} :catchall_74

    if-eqz v3, :cond_51

    .line 156
    :try_start_32
    invoke-interface {v3, p2, p3}, Landroid/hardware/ir/IConsumerIr;->transmit(I[I)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_35} :catch_36
    .catchall {:try_start_32 .. :try_end_35} :catchall_74

    .line 159
    goto :goto_6f

    .line 157
    :catch_36
    move-exception v3

    .line 158
    .local v3, "ignore":Landroid/os/RemoteException;
    :try_start_37
    const-string v4, "ConsumerIrService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error transmitting frequency: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    nop

    .end local v3    # "ignore":Landroid/os/RemoteException;
    goto :goto_6f

    .line 161
    :cond_51
    invoke-static {p2, p3}, Lcom/android/server/ConsumerIrService;->halTransmit(I[I)I

    move-result v3

    .line 163
    .local v3, "err":I
    if-gez v3, :cond_6f

    .line 164
    const-string v4, "ConsumerIrService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error transmitting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .end local v3    # "err":I
    :cond_6f
    :goto_6f
    monitor-exit v2
    :try_end_70
    .catchall {:try_start_37 .. :try_end_70} :catchall_74

    .line 170
    invoke-direct {p0}, Lcom/android/server/ConsumerIrService;->reportIrToOneTrack()V

    .line 171
    return-void

    .line 167
    :catchall_74
    move-exception v3

    :try_start_75
    monitor-exit v2
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw v3

    .line 147
    :cond_77
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "IR pattern too long"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 134
    .end local v0    # "totalXmitTime":J
    :cond_7f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires TRANSMIT_IR permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
