.class public abstract Landroid/app/ServiceStartNotAllowedException;
.super Ljava/lang/IllegalStateException;
.source "ServiceStartNotAllowedException.java"


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 26
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static blacklist newInstance(ZLjava/lang/String;)Landroid/app/ServiceStartNotAllowedException;
    .registers 2

    .line 37
    if-eqz p0, :cond_8

    .line 38
    new-instance p0, Landroid/app/ForegroundServiceStartNotAllowedException;

    invoke-direct {p0, p1}, Landroid/app/ForegroundServiceStartNotAllowedException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 40
    :cond_8
    new-instance p0, Landroid/app/BackgroundServiceStartNotAllowedException;

    invoke-direct {p0, p1}, Landroid/app/BackgroundServiceStartNotAllowedException;-><init>(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public declared-synchronized whitelist test-api getCause()Ljava/lang/Throwable;
    .registers 2

    monitor-enter p0

    .line 48
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0
.end method
