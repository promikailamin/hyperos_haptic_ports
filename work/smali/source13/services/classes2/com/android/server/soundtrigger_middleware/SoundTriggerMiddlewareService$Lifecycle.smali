.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "SoundTriggerMiddlewareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 221
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 222
    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 8

    .line 226
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/soundtrigger_middleware/HalFactory;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory;

    invoke-direct {v1}, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 228
    .local v0, "factories":[Lcom/android/server/soundtrigger_middleware/HalFactory;
    new-instance v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;

    new-instance v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;

    new-instance v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;

    new-instance v4, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;

    new-instance v5, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;

    new-instance v6, Lcom/android/server/soundtrigger_middleware/AudioSessionProviderImpl;

    invoke-direct {v6}, Lcom/android/server/soundtrigger_middleware/AudioSessionProviderImpl;-><init>()V

    invoke-direct {v5, v0, v6}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl;-><init>([Lcom/android/server/soundtrigger_middleware/HalFactory;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider;)V

    invoke-direct {v4, v5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareValidation;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;)V

    .line 234
    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewarePermission;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;Landroid/content/Context;)V

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;)V

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService;-><init>(Lcom/android/server/soundtrigger_middleware/ISoundTriggerMiddlewareInternal;Landroid/content/Context;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService-IA;)V

    .line 228
    const-string/jumbo v2, "soundtrigger_middleware"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 235
    return-void
.end method
