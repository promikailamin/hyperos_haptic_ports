.class public Lcom/android/server/LockPerfHelper;
.super Ljava/lang/Object;
.source "LockPerfHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onPerfEnd(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "methodDesc"    # Ljava/lang/String;

    .line 16
    invoke-static {}, Lcom/android/server/LockPerfStub;->getInstance()Lcom/android/server/LockPerfStub;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/server/LockPerfStub;->onPerfEnd(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static onPerfStart(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "methodName"    # Ljava/lang/String;
    .param p1, "methodDesc"    # Ljava/lang/String;

    .line 12
    invoke-static {}, Lcom/android/server/LockPerfStub;->getInstance()Lcom/android/server/LockPerfStub;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/server/LockPerfStub;->onPerfStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static perf(JLjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "start"    # J
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "methodDesc"    # Ljava/lang/String;

    .line 8
    invoke-static {}, Lcom/android/server/LockPerfStub;->getInstance()Lcom/android/server/LockPerfStub;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/LockPerfStub;->perf(JLjava/lang/String;Ljava/lang/String;)V

    .line 9
    return-void
.end method
