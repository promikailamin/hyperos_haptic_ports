.class public Lcom/android/server/adb/AdbConnectionInfo;
.super Ljava/lang/Object;
.source "AdbConnectionInfo.java"


# instance fields
.field public mBssid:Ljava/lang/String;

.field public mPort:I

.field public mSsid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/adb/AdbConnectionInfo;->mBssid:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/android/server/adb/AdbConnectionInfo;->mSsid:Ljava/lang/String;

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/android/server/adb/AdbConnectionInfo;->mPort:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/adb/AdbConnectionInfo;->mBssid:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/android/server/adb/AdbConnectionInfo;->mSsid:Ljava/lang/String;

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lcom/android/server/adb/AdbConnectionInfo;->mPort:I

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .registers 2

    monitor-enter p0

    .line 61
    :try_start_1
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/adb/AdbConnectionInfo;->mBssid:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/adb/AdbConnectionInfo;->mSsid:Ljava/lang/String;

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/android/server/adb/AdbConnectionInfo;->mPort:I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 64
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v0
.end method

.method public declared-synchronized copy(Lcom/android/server/adb/AdbConnectionInfo;)V
    .registers 3

    monitor-enter p0

    .line 38
    :try_start_1
    iget-object v0, p1, Lcom/android/server/adb/AdbConnectionInfo;->mBssid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/adb/AdbConnectionInfo;->mBssid:Ljava/lang/String;

    .line 39
    iget-object v0, p1, Lcom/android/server/adb/AdbConnectionInfo;->mSsid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/adb/AdbConnectionInfo;->mSsid:Ljava/lang/String;

    .line 40
    iget p1, p1, Lcom/android/server/adb/AdbConnectionInfo;->mPort:I

    iput p1, p0, Lcom/android/server/adb/AdbConnectionInfo;->mPort:I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 41
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public declared-synchronized getBSSID()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 44
    :try_start_1
    iget-object v0, p0, Lcom/android/server/adb/AdbConnectionInfo;->mBssid:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized getPort()I
    .registers 2

    monitor-enter p0

    .line 52
    :try_start_1
    iget v0, p0, Lcom/android/server/adb/AdbConnectionInfo;->mPort:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized getSSID()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 48
    :try_start_1
    iget-object v0, p0, Lcom/android/server/adb/AdbConnectionInfo;->mSsid:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized setPort(I)V
    .registers 2

    monitor-enter p0

    .line 56
    :try_start_1
    iput p1, p0, Lcom/android/server/adb/AdbConnectionInfo;->mPort:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 57
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method
