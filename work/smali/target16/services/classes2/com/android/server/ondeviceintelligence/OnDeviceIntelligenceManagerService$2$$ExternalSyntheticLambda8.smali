.class public final synthetic Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureConsumer;


# instance fields
.field public final synthetic f$0:Landroid/app/ondeviceintelligence/IStreamingResponseCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ondeviceintelligence/IStreamingResponseCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda8;->f$0:Landroid/app/ondeviceintelligence/IStreamingResponseCallback;

    return-void
.end method


# virtual methods
.method public final accept(Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda8;->f$0:Landroid/app/ondeviceintelligence/IStreamingResponseCallback;

    invoke-static {p0, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->$r8$lambda$NU4w6hrRdU0emG-hSax0GxVNMOM(Landroid/app/ondeviceintelligence/IStreamingResponseCallback;Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;)V

    return-void
.end method
