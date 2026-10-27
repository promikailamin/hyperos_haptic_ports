.class public interface abstract Landroid/content/ServiceConnection;
.super Ljava/lang/Object;
.source "ServiceConnection.java"


# virtual methods
.method public whitelist onBindingDied(Landroid/content/ComponentName;)V
    .registers 2

    .line 105
    return-void
.end method

.method public whitelist onNullBinding(Landroid/content/ComponentName;)V
    .registers 2

    .line 122
    return-void
.end method

.method public abstract whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end method

.method public blacklist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;Landroid/app/IBinderSession;)V
    .registers 6

    .line 71
    if-eqz p3, :cond_20

    .line 72
    invoke-interface {p0}, Landroid/content/ServiceConnection;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binder session present but potentially unused for binding to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_20
    invoke-interface {p0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 76
    return-void
.end method

.method public abstract whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
.end method
