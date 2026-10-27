.class public Landroid/security/GenerateRkpKey;
.super Ljava/lang/Object;
.source "GenerateRkpKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/GenerateRkpKey$Status;
    }
.end annotation


# static fields
.field private static final blacklist DELAY_MS:I = 0x64

.field private static final blacklist NOTIFY_EMPTY:I = 0x0

.field private static final blacklist NOTIFY_KEY_GENERATED:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "GenerateRkpKey"

.field private static final blacklist TIMEOUT_MS:I = 0x3e8


# instance fields
.field private blacklist mBinder:Landroid/security/IGenerateRkpKeyService;

.field private blacklist mConnection:Landroid/content/ServiceConnection;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCountDownLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCountDownLatch(Landroid/security/GenerateRkpKey;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    iget-object p0, p0, Landroid/security/GenerateRkpKey;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBinder(Landroid/security/GenerateRkpKey;Landroid/security/IGenerateRkpKeyService;)V
    .registers 2

    iput-object p1, p0, Landroid/security/GenerateRkpKey;->mBinder:Landroid/security/IGenerateRkpKeyService;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Landroid/security/GenerateRkpKey$1;

    invoke-direct {v0, p0}, Landroid/security/GenerateRkpKey$1;-><init>(Landroid/security/GenerateRkpKey;)V

    iput-object v0, p0, Landroid/security/GenerateRkpKey;->mConnection:Landroid/content/ServiceConnection;

    .line 101
    iput-object p1, p0, Landroid/security/GenerateRkpKey;->mContext:Landroid/content/Context;

    .line 102
    return-void
.end method

.method private blacklist bindAndSendCommand(II)I
    .registers 13
    .param p1, "command"    # I
    .param p2, "securityLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    const-string v0, "Interrupted: "

    const-string v1, "GenerateRkpKey"

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Landroid/security/GenerateRkpKey;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 107
    new-instance v2, Landroid/content/Intent;

    const-class v4, Landroid/security/IGenerateRkpKeyService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v2, "intent":Landroid/content/Intent;
    :try_start_17
    iget-object v4, p0, Landroid/security/GenerateRkpKey;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v5, 0x64

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_20} :catch_21

    .line 113
    goto :goto_25

    .line 111
    :catch_21
    move-exception v4

    .line 112
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_25
    iget-object v4, p0, Landroid/security/GenerateRkpKey;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v4

    .line 115
    .local v4, "comp":Landroid/content/ComponentName;
    const/4 v5, 0x0

    .line 116
    .local v5, "returnCode":I
    if-nez v4, :cond_34

    .line 118
    return v5

    .line 120
    :cond_34
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 121
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    .line 122
    .local v6, "executor":Ljava/util/concurrent/Executor;
    iget-object v7, p0, Landroid/security/GenerateRkpKey;->mContext:Landroid/content/Context;

    iget-object v8, p0, Landroid/security/GenerateRkpKey;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v7, v2, v3, v6, v8}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 126
    :try_start_45
    iget-object v3, p0, Landroid/security/GenerateRkpKey;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v7, 0x3e8

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v7, v8, v9}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_4e
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_4e} :catch_4f

    .line 129
    goto :goto_53

    .line 127
    :catch_4f
    move-exception v3

    .line 128
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_53
    iget-object v0, p0, Landroid/security/GenerateRkpKey;->mBinder:Landroid/security/IGenerateRkpKeyService;

    if-eqz v0, :cond_69

    .line 131
    packed-switch p1, :pswitch_data_80

    .line 139
    const-string v0, "Invalid case for command"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 136
    :pswitch_60
    invoke-interface {v0, p2}, Landroid/security/IGenerateRkpKeyService;->notifyKeyGenerated(I)V

    .line 137
    goto :goto_70

    .line 133
    :pswitch_64
    invoke-interface {v0, p2}, Landroid/security/IGenerateRkpKeyService;->generateKey(I)I

    move-result v5

    .line 134
    goto :goto_70

    .line 142
    :cond_69
    const-string v0, "Binder object is null; failed to bind to GenerateRkpKeyService."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/16 v5, 0x8

    .line 145
    :goto_70
    iget-object v0, p0, Landroid/security/GenerateRkpKey;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/security/GenerateRkpKey;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 146
    return v5

    .line 123
    :cond_78
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Failed to bind to GenerateRkpKeyService"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_64
        :pswitch_60
    .end packed-switch
.end method


# virtual methods
.method public blacklist notifyEmpty(I)I
    .registers 3
    .param p1, "securityLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/security/GenerateRkpKey;->bindAndSendCommand(II)I

    move-result v0

    return v0
.end method

.method public blacklist notifyKeyGenerated(I)V
    .registers 3
    .param p1, "securityLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/security/GenerateRkpKey;->bindAndSendCommand(II)I

    .line 165
    return-void
.end method
