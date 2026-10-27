.class Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;
.super Landroid/bluetooth/IBluetoothActivityEnergyInfoListener$Stub;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnBluetoothActivityEnergyInfoProxy"
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

    .line 899
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothActivityEnergyInfoListener$Stub;-><init>()V

    .line 894
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mLock:Ljava/lang/Object;

    .line 900
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 901
    iput-object p2, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mCallback:Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

    .line 902
    return-void
.end method

.method static synthetic blacklist lambda$onBluetoothActivityEnergyInfoAvailable$0(Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;)V
    .registers 2
    .param p0, "callback"    # Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

    .line 920
    const/16 v0, 0xb

    invoke-interface {p0, v0}, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;->onBluetoothActivityEnergyInfoError(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onBluetoothActivityEnergyInfoAvailable$1(Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .registers 2
    .param p0, "callback"    # Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;
    .param p1, "info"    # Landroid/bluetooth/BluetoothActivityEnergyInfo;

    .line 923
    invoke-interface {p0, p1}, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;->onBluetoothActivityEnergyInfoAvailable(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V

    return-void
.end method

.method static synthetic blacklist lambda$onError$2(Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;I)V
    .registers 2
    .param p0, "callback"    # Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;
    .param p1, "errorCode"    # I

    .line 947
    invoke-interface {p0, p1}, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;->onBluetoothActivityEnergyInfoError(I)V

    return-void
.end method


# virtual methods
.method public blacklist onBluetoothActivityEnergyInfoAvailable(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/bluetooth/BluetoothActivityEnergyInfo;

    .line 908
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 909
    :try_start_3
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_35

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mCallback:Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

    if-nez v2, :cond_c

    goto :goto_35

    .line 912
    :cond_c
    nop

    .line 913
    .local v1, "executor":Ljava/util/concurrent/Executor;
    nop

    .line 914
    .local v2, "callback":Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 915
    iput-object v3, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mCallback:Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

    .line 916
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_37

    .line 917
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 919
    .local v3, "identity":J
    if-nez p1, :cond_23

    .line 920
    :try_start_1a
    new-instance v0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda1;

    invoke-direct {v0, v2}, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2b

    .line 923
    :cond_23
    new-instance v0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda2;

    invoke-direct {v0, v2, p1}, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda2;-><init>(Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;Landroid/bluetooth/BluetoothActivityEnergyInfo;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_30

    .line 926
    :goto_2b
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 927
    nop

    .line 928
    return-void

    .line 926
    :catchall_30
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 927
    throw v0

    .line 910
    .end local v1    # "executor":Ljava/util/concurrent/Executor;
    .end local v2    # "callback":Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;
    .end local v3    # "identity":J
    :cond_35
    :goto_35
    :try_start_35
    monitor-exit v0

    return-void

    .line 916
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public blacklist onError(I)V
    .registers 7
    .param p1, "errorCode"    # I

    .line 936
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 937
    :try_start_3
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_2a

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mCallback:Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

    if-nez v2, :cond_c

    goto :goto_2a

    .line 940
    :cond_c
    nop

    .line 941
    .local v1, "executor":Ljava/util/concurrent/Executor;
    nop

    .line 942
    .local v2, "callback":Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 943
    iput-object v3, p0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy;->mCallback:Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;

    .line 944
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_2c

    .line 945
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 947
    .local v3, "identity":J
    :try_start_18
    new-instance v0, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda0;

    invoke-direct {v0, v2, p1}, Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoProxy$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;I)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_25

    .line 950
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 951
    nop

    .line 952
    return-void

    .line 950
    :catchall_25
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 951
    throw v0

    .line 938
    .end local v1    # "executor":Ljava/util/concurrent/Executor;
    .end local v2    # "callback":Landroid/bluetooth/BluetoothAdapter$OnBluetoothActivityEnergyInfoCallback;
    .end local v3    # "identity":J
    :cond_2a
    :goto_2a
    :try_start_2a
    monitor-exit v0

    return-void

    .line 944
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2c

    throw v1
.end method
