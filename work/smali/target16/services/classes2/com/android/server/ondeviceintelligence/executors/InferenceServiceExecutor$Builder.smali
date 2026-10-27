.class public Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor$Builder;
.super Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder;
.source "InferenceServiceExecutor.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 103
    invoke-direct {p0}, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor;
    .registers 3

    .line 109
    new-instance v0, Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor;-><init>(Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor$Builder;Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor-IA;)V

    return-object v0
.end method
