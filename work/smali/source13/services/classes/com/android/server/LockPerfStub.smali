.class public interface abstract Lcom/android/server/LockPerfStub;
.super Ljava/lang/Object;
.source "LockPerfStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LockPerfStub$SingletonHolder;
    }
.end annotation


# direct methods
.method public static getInstance()Lcom/android/server/LockPerfStub;
    .registers 1

    .line 14
    invoke-static {}, Lcom/android/server/LockPerfStub$SingletonHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/LockPerfStub;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract dumpRecentEvents(Ljava/io/File;ZII)V
.end method

.method public abstract onPerfEnd(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onPerfStart(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract perf(JLjava/lang/String;Ljava/lang/String;)V
.end method
