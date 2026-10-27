.class public abstract Lcom/android/server/permission/jarjar/kotlin/jdk7/AutoCloseableKt;
.super Ljava/lang/Object;
.source "AutoCloseableJVM.kt"


# direct methods
.method public static final closeFinally(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    .registers 2

    if-eqz p0, :cond_10

    if-nez p1, :cond_8

    .line 42
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    return-void

    .line 45
    :cond_8
    :try_start_8
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_c

    return-void

    :catchall_c
    move-exception p0

    .line 47
    invoke-static {p1, p0}, Lcom/android/server/permission/jarjar/kotlin/ExceptionsKt__ExceptionsKt;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_10
    return-void
.end method
