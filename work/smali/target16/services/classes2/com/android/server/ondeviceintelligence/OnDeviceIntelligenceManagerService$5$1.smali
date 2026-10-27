.class public Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "OnDeviceIntelligenceManagerService.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;


# direct methods
.method public constructor <init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;)V
    .registers 2

    .line 914
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5$1;->this$1:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .registers 2

    .line 917
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 918
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5$1;->this$1:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p0, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$msetRemoteInferenceServiceUid(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;I)V

    return-void
.end method
