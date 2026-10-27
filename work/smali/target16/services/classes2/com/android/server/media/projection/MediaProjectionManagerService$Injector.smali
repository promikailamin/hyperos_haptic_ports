.class Lcom/android/server/media/projection/MediaProjectionManagerService$Injector;
.super Ljava/lang/Object;
.source "MediaProjectionManagerService.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createCallbackLooper()Landroid/os/Looper;
    .registers 1

    .line 246
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public createClock()Lcom/android/server/media/projection/MediaProjectionManagerService$Clock;
    .registers 1

    .line 241
    new-instance p0, Lcom/android/server/media/projection/MediaProjectionManagerService$Injector$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/server/media/projection/MediaProjectionManagerService$Injector$$ExternalSyntheticLambda0;-><init>()V

    return-object p0
.end method

.method public mediaProjectionMetricsLogger(Landroid/content/Context;)Lcom/android/server/media/projection/MediaProjectionMetricsLogger;
    .registers 2

    .line 250
    invoke-static {p1}, Lcom/android/server/media/projection/MediaProjectionMetricsLogger;->getInstance(Landroid/content/Context;)Lcom/android/server/media/projection/MediaProjectionMetricsLogger;

    move-result-object p0

    return-object p0
.end method

.method public shouldMediaProjectionPreventReusingConsent(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)Z
    .registers 4

    .line 236
    iget-object p0, p1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->packageName:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->uid:I

    .line 237
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p1

    const-wide/32 v0, 0xfddea07

    .line 236
    invoke-static {v0, v1, p0, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method
