.class public final synthetic Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;

.field public final synthetic f$1:Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;

    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5$$ExternalSyntheticLambda2;->f$1:Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5$$ExternalSyntheticLambda2;->f$1:Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;

    invoke-static {v0, p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;->$r8$lambda$baymUP91x4Tob7pA9O_IsnBcjzM(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;)V

    return-void
.end method
