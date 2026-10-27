.class public abstract Lcom/android/server/infra/AbstractPerUserSystemService;
.super Ljava/lang/Object;
.source "AbstractPerUserSystemService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/android/server/infra/AbstractPerUserSystemService<",
        "TS;TM;>;M:",
        "Lcom/android/server/infra/AbstractMasterSystemService<",
        "TM;TS;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mDisabled:Z

.field public final mLock:Ljava/lang/Object;

.field protected final mMaster:Lcom/android/server/infra/AbstractMasterSystemService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field private mServiceInfo:Landroid/content/pm/ServiceInfo;

.field private mSetupComplete:Z

.field protected final mTag:Ljava/lang/String;

.field protected final mUserId:I


# direct methods
.method protected constructor <init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V
    .registers 5
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .line 73
    .local p0, "this":Lcom/android/server/infra/AbstractPerUserSystemService;, "Lcom/android/server/infra/AbstractPerUserSystemService<TS;TM;>;"
    .local p1, "master":Lcom/android/server/infra/AbstractMasterSystemService;, "TM;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    .line 75
    iput-object p2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    .line 76
    iput p3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    .line 77
    invoke-direct {p0, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateIsSetupComplete(I)V

    .line 78
    return-void
.end method

.method private getServiceComponent(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 10
    .param p1, "componentName"    # Ljava/lang/String;

    .line 195
    .local p0, "this":Lcom/android/server/infra/AbstractPerUserSystemService;, "Lcom/android/server/infra/AbstractPerUserSystemService<TS;TM;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    const/4 v1, 0x0

    .line 197
    .local v1, "serviceInfo":Landroid/content/pm/ServiceInfo;
    const/4 v2, 0x0

    .line 198
    .local v2, "serviceComponent":Landroid/content/ComponentName;
    :try_start_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_f0

    if-nez v3, :cond_5c

    .line 200
    :try_start_b
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    move-object v2, v3

    .line 201
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const-wide/16 v4, 0x0

    iget v6, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-interface {v3, v2, v4, v5, v6}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    move-object v1, v3

    .line 203
    if-nez v1, :cond_37

    .line 204
    iget-object v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad service name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_37} :catch_38
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_37} :catch_38
    .catchall {:try_start_b .. :try_end_37} :catchall_f0

    .line 209
    :cond_37
    goto :goto_5c

    .line 206
    :catch_38
    move-exception v3

    .line 207
    .local v3, "e":Ljava/lang/Exception;
    :try_start_39
    iget-object v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error getting service info for \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_39 .. :try_end_5b} :catchall_f0

    .line 208
    const/4 v1, 0x0

    .line 212
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5c
    :goto_5c
    const/4 v3, 0x0

    if-eqz v1, :cond_9c

    .line 213
    :try_start_5f
    invoke-virtual {p0, v2}, Lcom/android/server/infra/AbstractPerUserSystemService;->newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 214
    iget-object v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v4, v4, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v4, :cond_c8

    .line 215
    iget-object v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set component for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " as "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and info as "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c8

    .line 219
    :cond_9c
    iput-object v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 220
    iget-object v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v4, v4, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v4, :cond_c8

    .line 221
    iget-object v4, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reset component for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_c8} :catch_c9
    .catchall {:try_start_5f .. :try_end_c8} :catchall_f0

    .line 227
    :cond_c8
    :goto_c8
    goto :goto_ee

    .line 224
    :catch_c9
    move-exception v4

    .line 225
    .local v4, "e":Ljava/lang/Exception;
    :try_start_ca
    iget-object v5, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad ServiceInfo for \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\': "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iput-object v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 228
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_ee
    monitor-exit v0

    return-object v2

    .line 229
    .end local v1    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v2    # "serviceComponent":Landroid/content/ComponentName;
    :catchall_f0
    move-exception v1

    monitor-exit v0
    :try_end_f2
    .catchall {:try_start_ca .. :try_end_f2} :catchall_f0

    throw v1
.end method

.method private updateIsSetupComplete(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 82
    .local p0, "this":Lcom/android/server/infra/AbstractPerUserSystemService;, "Lcom/android/server/infra/AbstractPerUserSystemService<TS;TM;>;"
    nop

    .line 83
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 82
    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "setupComplete":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mSetupComplete:Z

    .line 85
    return-void
.end method


# virtual methods
.method protected dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 405
    .local p0, "this":Lcom/android/server/infra/AbstractPerUserSystemService;, "Lcom/android/server/infra/AbstractPerUserSystemService<TS;TM;>;"
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 406
    const-string v0, "User: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 407
    iget v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 408
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_2f

    .line 409
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 410
    const-string v0, "Service Label: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceLabelLocked()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 412
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 413
    const-string v0, "Target SDK: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getTargedSdkLocked()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 416
    :cond_2f
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    if-eqz v0, :cond_49

    .line 417
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 418
    const-string v0, "Name resolver: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    iget v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-interface {v0, p2, v1}, Lcom/android/server/infra/ServiceNameResolver;->dumpShort(Ljava/io/PrintWriter;I)V

    .line 420
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 422
    :cond_49
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 423
    const-string v0, "Disabled by UserManager: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 424
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mDisabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 425
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 426
    const-string v0, "Setup complete: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 427
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mSetupComplete:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 428
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_78

    .line 429
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 430
    const-string v0, "Service UID: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 433
    :cond_78
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 434
    return-void
.end method

.method protected final getComponentNameForMultipleLocked(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 276
    .local p0, "this":Lcom/android/server/infra/AbstractPerUserSystemService;, "Lcom/android/server/infra/AbstractPerUserSystemService<TS;TM;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    iget v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-interface {v0, v1}, Lcom/android/server/infra/ServiceNameResolver;->getServiceNameList(I)[Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "services":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    array-length v2, v0

    if-ge v1, v2, :cond_1c

    .line 278
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 279
    aget-object v2, v0, v1

    return-object v2

    .line 277
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 282
    .end local v1    # "i":I
    :cond_1c
    const/4 v1, 0x0

    return-object v1
.end method

.method protected final getComponentNameLocked()Ljava/lang/String;
    .registers 3

    .line 266
    .local p0, "this":Lcom/android/server/infra/AbstractPerUserSystemService;, "Lcom/android/server/infra/AbstractPerUserSystemService<TS;TM;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    iget v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-interface {v0, v1}, Lcom/android/server/infra/ServiceNameResolver;->getServiceName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getContext()Landroid/content/Context;
    .registers 2

    .line 399
    .local p0, "this":Lcom/android/server/infra/AbstractPerUserSystemService;, "Lcom/android/server/infra/AbstractPerUserSystemService<TS;TM;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v0}, Lcom/android/server/infra/AbstractMasterSystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final getMaster()Lcom/android/server/infra/AbstractMasterSystemService;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .line 243
    .local p0, "this":Lcom/android/server/infra/AbstractPerUserSystemService;, "Lcom/android/server/infra/AbstractPerUserSystemService<TS;TM;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    return-object v0
.end method

.method public final getServiceComponentName()Landroid/content/ComponentName;
    .registers 3

    .line 316
    .local p0, "this":Lcom/android/server/infra/AbstractPerUserSystemService;, "Lcom/android/server/infra/AbstractPerUserSystemService<TS;TM;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 317
    :try_start_3
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v1, :cond_9

    const/4 v1, 0x0

    goto :goto_d

    :cond_9
    invoke-virtual {v1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    :goto_d
    monitor-exit v0

    return-object v1

    .line 318
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public final getServiceIconLocked()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 349
    .local p0, "this":Lcom/android/server/infra/AbstractPerUserSystemService;, "Lcom/android/server/infra/AbstractPerUserSystemService<TS;TM;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_12

    .line 350
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 349
    :goto_12
    return-object v0
.end method

.method public final getServiceInfo()Landroid/content/pm/ServiceInfo;
    .registers 2

    .line 307
    .local p0, "this":Lcom/android/server/infra/AbstractPerUserSystemService;, "Lcom/android/server/infra/AbstractPerUserSystemService<TS;TM;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public final getServiceLabelLocked()Ljava/lang/CharSequence;
    .registers 5

    .line 338
    .local p0, "this":Lcom/android/server/infra/AbstractPerUserSystemService;, "Lcom/android/server/infra/AbstractPerUserSystemService<TS;TM;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_14

    .line 339
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x5

    .line 338
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/ServiceInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;FI)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_14
    return-object v0
.end method

.method public final getServicePackageName()Ljava/lang/String;
    .registers 3

    .line 327
    .local p0, "this":Lcom/android/server/infra/AbstractPerUserSystemService;, "Lcom/android/server/infra/AbstractPerUserSystemService<TS;TM;>;"
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 328
    .local v0, "serviceComponent":Landroid/content/ComponentName;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_c
    return-object v1
.end method

.method protected final getServiceUidLocked()I
    .registers 3

    .line 252
    .local p0, "this":Lcom/android/server/infra/AbstractPerUserSystemService;, "Lcom/android/server/infra/AbstractPerUserSystemService<TS;TM;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_14

    .line 253
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "getServiceUidLocked(): no mServiceInfo"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_12
    const/4 v0, -0x1

    return v0

    .line 256
    :cond_14
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    return v0
.end method

.method public final getTargedSdkLocked()I
    .registers 2

    .line 384
    .local p0, "this":Lcom/android/server/infra/AbstractPerUserSystemService;, "Lcom/android/server/infra/AbstractPerUserSystemService<TS;TM;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    :goto_a
    return v0
.end method

.method public final getUserId()I
    .registers 2

    .line 236
    .local p0, "this":Lcom/android/server/infra/AbstractPerUserSystemService;, "Lcom/android/server/infra/AbstractPerUserSystemService<TS;TM;>;"
    iget v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    return v0
.end method

.method protected handlePackageUpdateLocked(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 112
    .local p0, "this":Lcom/android/server/infra/AbstractPerUserSystemService;, "Lcom/android/server/infra/AbstractPerUserSystemService<TS;TM;>;"
    return-void
.end method

.method public final isDebug()Z
    .registers 2

    .line 367
    .local p0, "this":Lcom/android/server/infra/AbstractPerUserSystemService;, "Lcom/android/server/infra/AbstractPerUserSystemService<TS;TM;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    return v0
.end method

.method protected final isDisabledByUserRestrictionsLocked()Z
    .registers 2

    .line 126
    .local p0, "this":Lcom/android/server/infra/AbstractPerUserSystemService;, "Lcom/android/server/infra/AbstractPerUserSystemService<TS;TM;>;"
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mDisabled:Z

    return v0
.end method

.method protected isEnabledLocked()Z
    .registers 2

    .line 119
    .local p0, "this":Lcom/android/server/infra/AbstractPerUserSystemService;, "Lcom/android/server/infra/AbstractPerUserSystemService<TS;TM;>;"
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mSetupComplete:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mDisabled:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method protected final isSetupCompletedLocked()Z
    .registers 2

    .line 392
    .local p0, "this":Lcom/android/server/infra/AbstractPerUserSystemService;, "Lcom/android/server/infra/AbstractPerUserSystemService<TS;TM;>;"
    iget-boolean v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mSetupComplete:Z

    return v0
.end method

.method public final isTemporaryServiceSetLocked()Z
    .registers 3

    .line 290
    .local p0, "this":Lcom/android/server/infra/AbstractPerUserSystemService;, "Lcom/android/server/infra/AbstractPerUserSystemService<TS;TM;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    iget v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-interface {v0, v1}, Lcom/android/server/infra/ServiceNameResolver;->isTemporary(I)Z

    move-result v0

    return v0
.end method

.method public final isVerbose()Z
    .registers 2

    .line 375
    .local p0, "this":Lcom/android/server/infra/AbstractPerUserSystemService;, "Lcom/android/server/infra/AbstractPerUserSystemService<TS;TM;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    return v0
.end method

.method protected newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 4
    .param p1, "serviceComponent"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 103
    .local p0, "this":Lcom/android/server/infra/AbstractPerUserSystemService;, "Lcom/android/server/infra/AbstractPerUserSystemService<TS;TM;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "not overridden"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final removeSelfFromCache()V
    .registers 4

    .line 357
    .local p0, "this":Lcom/android/server/infra/AbstractPerUserSystemService;, "Lcom/android/server/infra/AbstractPerUserSystemService<TS;TM;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 358
    :try_start_5
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget v2, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceListLocked(I)Ljava/util/List;

    .line 359
    monitor-exit v0

    .line 360
    return-void

    .line 359
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v1
.end method

.method protected final resetTemporaryServiceLocked()V
    .registers 3

    .line 298
    .local p0, "this":Lcom/android/server/infra/AbstractPerUserSystemService;, "Lcom/android/server/infra/AbstractPerUserSystemService<TS;TM;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    iget v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-interface {v0, v1}, Lcom/android/server/infra/ServiceNameResolver;->resetTemporaryService(I)V

    .line 299
    return-void
.end method

.method protected updateLocked(Z)Z
    .registers 6
    .param p1, "disabled"    # Z

    .line 145
    .local p0, "this":Lcom/android/server/infra/AbstractPerUserSystemService;, "Lcom/android/server/infra/AbstractPerUserSystemService<TS;TM;>;"
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    move-result v0

    .line 146
    .local v0, "wasEnabled":Z
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v1, :cond_51

    .line 147
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateLocked(u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): wasEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSetupComplete="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mSetupComplete:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", disabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mDisabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mDisabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_51
    iget v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-direct {p0, v1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateIsSetupComplete(I)V

    .line 153
    iput-boolean p1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mDisabled:Z

    .line 155
    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    .line 156
    invoke-interface {v1}, Lcom/android/server/infra/ServiceNameResolver;->isConfiguredInMultipleMode()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 157
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateServiceInfoListLocked()[Landroid/content/ComponentName;

    goto :goto_6f

    .line 159
    :cond_6c
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateServiceInfoLocked()Landroid/content/ComponentName;

    .line 161
    :goto_6f
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->isEnabledLocked()Z

    move-result v1

    if-eq v0, v1, :cond_77

    const/4 v1, 0x1

    goto :goto_78

    :cond_77
    const/4 v1, 0x0

    :goto_78
    return v1
.end method

.method protected final updateServiceInfoListLocked()[Landroid/content/ComponentName;
    .registers 5

    .line 178
    .local p0, "this":Lcom/android/server/infra/AbstractPerUserSystemService;, "Lcom/android/server/infra/AbstractPerUserSystemService<TS;TM;>;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    if-nez v0, :cond_8

    .line 179
    const/4 v0, 0x0

    return-object v0

    .line 181
    :cond_8
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {v0}, Lcom/android/server/infra/ServiceNameResolver;->isConfiguredInMultipleMode()Z

    move-result v0

    if-nez v0, :cond_21

    .line 182
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getComponentNameLocked()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "componentName":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponent(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    aput-object v3, v1, v2

    return-object v1

    .line 185
    .end local v0    # "componentName":Ljava/lang/String;
    :cond_21
    iget-object v0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    iget v1, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-interface {v0, v1}, Lcom/android/server/infra/ServiceNameResolver;->getServiceNameList(I)[Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "componentNames":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [Landroid/content/ComponentName;

    .line 188
    .local v1, "serviceComponents":[Landroid/content/ComponentName;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2f
    array-length v3, v0

    if-ge v2, v3, :cond_3d

    .line 189
    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponent(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    aput-object v3, v1, v2

    .line 188
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 191
    .end local v2    # "i":I
    :cond_3d
    return-object v1
.end method

.method protected final updateServiceInfoLocked()Landroid/content/ComponentName;
    .registers 3

    .line 169
    .local p0, "this":Lcom/android/server/infra/AbstractPerUserSystemService;, "Lcom/android/server/infra/AbstractPerUserSystemService<TS;TM;>;"
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateServiceInfoListLocked()[Landroid/content/ComponentName;

    move-result-object v0

    .line 170
    .local v0, "componentNames":[Landroid/content/ComponentName;
    if-eqz v0, :cond_e

    array-length v1, v0

    if-nez v1, :cond_a

    goto :goto_e

    :cond_a
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v1, 0x0

    :goto_f
    return-object v1
.end method
