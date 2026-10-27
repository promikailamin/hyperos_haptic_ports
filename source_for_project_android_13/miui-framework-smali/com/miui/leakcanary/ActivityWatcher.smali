.class public Lcom/miui/leakcanary/ActivityWatcher;
.super Ljava/lang/Object;
.source "ActivityWatcher.java"

# interfaces
.implements Lcom/miui/leakcanary/InstallableWatcher;


# instance fields
.field private final blacklist application:Landroid/app/Application;

.field private final blacklist lifecycleCallbacks:Lcom/miui/leakcanary/internal/ActivityLifecycleCallbacks;


# direct methods
.method public constructor blacklist <init>(Landroid/app/Application;)V
    .registers 3
    .param p1, "application"    # Landroid/app/Application;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lcom/miui/leakcanary/ActivityWatcher$1;

    invoke-direct {v0, p0}, Lcom/miui/leakcanary/ActivityWatcher$1;-><init>(Lcom/miui/leakcanary/ActivityWatcher;)V

    iput-object v0, p0, Lcom/miui/leakcanary/ActivityWatcher;->lifecycleCallbacks:Lcom/miui/leakcanary/internal/ActivityLifecycleCallbacks;

    .line 20
    iput-object p1, p0, Lcom/miui/leakcanary/ActivityWatcher;->application:Landroid/app/Application;

    .line 21
    return-void
.end method


# virtual methods
.method public blacklist install()V
    .registers 3

    .line 24
    iget-object v0, p0, Lcom/miui/leakcanary/ActivityWatcher;->application:Landroid/app/Application;

    iget-object v1, p0, Lcom/miui/leakcanary/ActivityWatcher;->lifecycleCallbacks:Lcom/miui/leakcanary/internal/ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 25
    return-void
.end method

.method public blacklist uninstall()V
    .registers 3

    .line 28
    iget-object v0, p0, Lcom/miui/leakcanary/ActivityWatcher;->application:Landroid/app/Application;

    iget-object v1, p0, Lcom/miui/leakcanary/ActivityWatcher;->lifecycleCallbacks:Lcom/miui/leakcanary/internal/ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 29
    return-void
.end method
