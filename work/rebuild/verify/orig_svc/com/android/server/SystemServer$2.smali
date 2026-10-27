.class public Lcom/android/server/SystemServer$2;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/server/SystemServer;)V
    .registers 2

    .line 1079
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 1081
    invoke-static {}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logPostGcMemorySnapshot()V

    return-void
.end method
