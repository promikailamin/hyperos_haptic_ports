.class Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;
.super Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback$Stub;
.source "PackageManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SnapshotRuntimeProfileCallback"
.end annotation


# instance fields
.field private mDoneSignal:Ljava/util/concurrent/CountDownLatch;

.field private mErrCode:I

.field private mProfileReadFd:Landroid/os/ParcelFileDescriptor;

.field private mSuccess:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmErrCode(Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;)I
    .registers 1

    iget p0, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mErrCode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmProfileReadFd(Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;)Landroid/os/ParcelFileDescriptor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mProfileReadFd:Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method

.method private constructor <init>()V
    .registers 3

    .line 2122
    invoke-direct {p0}, Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback$Stub;-><init>()V

    .line 2124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mSuccess:Z

    .line 2125
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mErrCode:I

    .line 2126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mProfileReadFd:Landroid/os/ParcelFileDescriptor;

    .line 2127
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mDoneSignal:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .registers 3
    .param p1, "errCode"    # I

    .line 2145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mSuccess:Z

    .line 2146
    iput p1, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mErrCode:I

    .line 2147
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mDoneSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 2148
    return-void
.end method

.method public onSuccess(Landroid/os/ParcelFileDescriptor;)V
    .registers 3
    .param p1, "profileReadFd"    # Landroid/os/ParcelFileDescriptor;

    .line 2131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mSuccess:Z

    .line 2136
    :try_start_3
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mProfileReadFd:Landroid/os/ParcelFileDescriptor;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_9} :catch_a

    .line 2139
    goto :goto_e

    .line 2137
    :catch_a
    move-exception v0

    .line 2138
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2140
    .end local v0    # "e":Ljava/io/IOException;
    :goto_e
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mDoneSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 2141
    return-void
.end method

.method waitTillDone()Z
    .registers 6

    .line 2151
    const/4 v0, 0x0

    .line 2155
    .local v0, "done":Z
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mDoneSignal:Ljava/util/concurrent/CountDownLatch;

    const-wide/32 v2, 0x989680

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_c} :catch_e

    move v0, v1

    .line 2157
    goto :goto_f

    .line 2156
    :catch_e
    move-exception v1

    .line 2158
    :goto_f
    if-eqz v0, :cond_17

    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mSuccess:Z

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    return v1
.end method
