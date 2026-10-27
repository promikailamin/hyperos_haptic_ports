.class public Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor$Builder;
.super Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder;
.source "IntelligenceServiceExecutor.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 104
    invoke-direct {p0}, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor;
    .registers 3

    .line 110
    new-instance v0, Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor;-><init>(Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor$Builder;Lcom/android/server/ondeviceintelligence/executors/IntelligenceServiceExecutor-IA;)V

    return-object v0
.end method
