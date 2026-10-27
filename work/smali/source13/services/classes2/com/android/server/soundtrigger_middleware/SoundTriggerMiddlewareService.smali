.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;
.super Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub;
.source "SoundTriggerMiddlewareService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$Lifecycle;,
        Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SoundTriggerMiddlewareService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;


# direct methods
.method private constructor <init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;Landroid/content/Context;)V
    .registers 4
    .param p1, "delegate"    # Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;
    .param p2, "context"    # Landroid/content/Context;

    .line 77
    invoke-direct {p0}, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub;-><init>()V

    .line 78
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    .line 79
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->mContext:Landroid/content/Context;

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;Landroid/content/Context;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;Landroid/content/Context;)V

    return-void
.end method

.method private establishIdentityDirect(Landroid/media/permission/Identity;)Landroid/media/permission/SafeCloseable;
    .registers 3
    .param p1, "originatorIdentity"    # Landroid/media/permission/Identity;

    .line 132
    invoke-static {p1}, Landroid/media/permission/PermissionUtil;->establishIdentityDirect(Landroid/media/permission/Identity;)Landroid/media/permission/SafeCloseable;

    move-result-object v0

    return-object v0
.end method

.method private establishIdentityIndirect(Landroid/media/permission/Identity;Landroid/media/permission/Identity;)Landroid/media/permission/SafeCloseable;
    .registers 5
    .param p1, "middlemanIdentity"    # Landroid/media/permission/Identity;
    .param p2, "originatorIdentity"    # Landroid/media/permission/Identity;

    .line 126
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SOUNDTRIGGER_DELEGATE_IDENTITY"

    invoke-static {v0, v1, p1, p2}, Landroid/media/permission/PermissionUtil;->establishIdentityIndirect(Landroid/content/Context;Ljava/lang/String;Landroid/media/permission/Identity;Landroid/media/permission/Identity;)Landroid/media/permission/SafeCloseable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public attachAsMiddleman(ILandroid/media/permission/Identity;Landroid/media/permission/Identity;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    .registers 9
    .param p1, "handle"    # I
    .param p2, "middlemanIdentity"    # Landroid/media/permission/Identity;
    .param p3, "originatorIdentity"    # Landroid/media/permission/Identity;
    .param p4, "callback"    # Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 109
    nop

    .line 110
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/permission/Identity;

    .line 111
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/permission/Identity;

    .line 109
    invoke-direct {p0, v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->establishIdentityIndirect(Landroid/media/permission/Identity;Landroid/media/permission/Identity;)Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 112
    .local v0, "ignored":Landroid/media/permission/SafeCloseable;
    :try_start_11
    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;

    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    invoke-interface {v2, p1, p4}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;->attach(ILandroid/media/soundtrigger_middleware/ISoundTriggerCallback;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;-><init>(Landroid/media/soundtrigger_middleware/ISoundTriggerModule;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService-IA;)V
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_23

    .line 113
    if-eqz v0, :cond_22

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 112
    :cond_22
    return-object v1

    .line 109
    :catchall_23
    move-exception v1

    if-eqz v0, :cond_2e

    :try_start_26
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2e
    :goto_2e
    throw v1
.end method

.method public attachAsOriginator(ILandroid/media/permission/Identity;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    .registers 8
    .param p1, "handle"    # I
    .param p2, "identity"    # Landroid/media/permission/Identity;
    .param p3, "callback"    # Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;

    .line 101
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/permission/Identity;

    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->establishIdentityDirect(Landroid/media/permission/Identity;)Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 102
    .local v0, "ignored":Landroid/media/permission/SafeCloseable;
    :try_start_a
    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;

    iget-object v2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    invoke-interface {v2, p1, p3}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;->attach(ILandroid/media/soundtrigger_middleware/ISoundTriggerCallback;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService;-><init>(Landroid/media/soundtrigger_middleware/ISoundTriggerModule;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$ModuleService-IA;)V
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_1c

    .line 103
    if-eqz v0, :cond_1b

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 102
    :cond_1b
    return-object v1

    .line 101
    :catchall_1c
    move-exception v1

    if-eqz v0, :cond_27

    :try_start_1f
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_27

    :catchall_23
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_27
    :goto_27
    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    instance-of v1, v0, Lcom/android/server/soundtrigger_middleware/Dumpable;

    if-eqz v1, :cond_b

    .line 119
    check-cast v0, Lcom/android/server/soundtrigger_middleware/Dumpable;

    invoke-interface {v0, p2}, Lcom/android/server/soundtrigger_middleware/Dumpable;->dump(Ljava/io/PrintWriter;)V

    .line 121
    :cond_b
    return-void
.end method

.method public listModulesAsMiddleman(Landroid/media/permission/Identity;Landroid/media/permission/Identity;)[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    .registers 6
    .param p1, "middlemanIdentity"    # Landroid/media/permission/Identity;
    .param p2, "originatorIdentity"    # Landroid/media/permission/Identity;

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->establishIdentityIndirect(Landroid/media/permission/Identity;Landroid/media/permission/Identity;)Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 94
    .local v0, "ignored":Landroid/media/permission/SafeCloseable;
    :try_start_4
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    invoke-interface {v1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;->listModules()[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;

    move-result-object v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_10

    .line 95
    if-eqz v0, :cond_f

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 94
    :cond_f
    return-object v1

    .line 92
    :catchall_10
    move-exception v1

    if-eqz v0, :cond_1b

    :try_start_13
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1b
    :goto_1b
    throw v1
.end method

.method public listModulesAsOriginator(Landroid/media/permission/Identity;)[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    .registers 5
    .param p1, "identity"    # Landroid/media/permission/Identity;

    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->establishIdentityDirect(Landroid/media/permission/Identity;)Landroid/media/permission/SafeCloseable;

    move-result-object v0

    .line 85
    .local v0, "ignored":Landroid/media/permission/SafeCloseable;
    :try_start_4
    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;->mDelegate:Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;

    invoke-interface {v1}, Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;->listModules()[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;

    move-result-object v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_10

    .line 86
    if-eqz v0, :cond_f

    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V

    .line 85
    :cond_f
    return-object v1

    .line 84
    :catchall_10
    move-exception v1

    if-eqz v0, :cond_1b

    :try_start_13
    invoke-interface {v0}, Landroid/media/permission/SafeCloseable;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1b
    :goto_1b
    throw v1
.end method
