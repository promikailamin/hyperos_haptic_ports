.class public Landroid/view/SurfaceControlFeatureImpl;
.super Ljava/lang/Object;
.source "SurfaceControlFeatureImpl.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SurfaceControlFeatureImpl"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist checkNotReleased(Landroid/view/SurfaceControl;)V
    .registers 5
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;

    .line 27
    const-class v0, Ljava/lang/Void;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "checkNotReleased"

    invoke-static {p1, v2, v0, v1}, Lmiui/util/ReflectionUtils;->tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    .line 28
    return-void
.end method

.method public blacklist reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V
    .registers 6
    .param p1, "lhs"    # Landroid/view/SurfaceControl;
    .param p2, "rhs"    # Landroid/view/SurfaceControl;

    .line 49
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 50
    :try_start_3
    const-string v1, "SurfaceControlFeatureImpl"

    const-string v2, "Unimplement reparent in Android S."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    monitor-exit v0

    .line 53
    return-void

    .line 52
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public blacklist setBlur(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 6
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "sc"    # Landroid/view/SurfaceControl;
    .param p3, "isBlur"    # Z

    .line 34
    invoke-virtual {p0, p2}, Landroid/view/SurfaceControlFeatureImpl;->checkNotReleased(Landroid/view/SurfaceControl;)V

    .line 35
    const-string v0, "SurfaceControlFeatureImpl"

    const-string v1, "Unimplement setBlur in Android S."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-object p1
.end method

.method public blacklist setBlurMode(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 4
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "sc"    # Landroid/view/SurfaceControl;
    .param p3, "blurMode"    # I

    .line 45
    return-object p1
.end method

.method public blacklist setBlurRatio(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;
    .registers 4
    .param p1, "transaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "sc"    # Landroid/view/SurfaceControl;
    .param p3, "blurRatio"    # F

    .line 41
    return-object p1
.end method

.method public blacklist setColor(Landroid/view/SurfaceControl;[F)V
    .registers 6
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p2, "color"    # [F

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControlFeatureImpl;->checkNotReleased(Landroid/view/SurfaceControl;)V

    .line 12
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 13
    :try_start_6
    const-string v1, "SurfaceControlFeatureImpl"

    const-string v2, "Unimplement setColor in Android S."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    monitor-exit v0

    .line 16
    return-void

    .line 15
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public blacklist setLayerStack(Landroid/view/SurfaceControl;I)V
    .registers 6
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p2, "layerStack"    # I

    .line 19
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControlFeatureImpl;->checkNotReleased(Landroid/view/SurfaceControl;)V

    .line 20
    const-class v0, Landroid/view/SurfaceControl;

    monitor-enter v0

    .line 21
    :try_start_6
    const-string v1, "SurfaceControlFeatureImpl"

    const-string v2, "Unimplement setLayerStack in Android S."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 23
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_f

    throw v1
.end method
