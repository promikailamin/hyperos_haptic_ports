.class public final synthetic Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureConsumer;


# instance fields
.field public final synthetic f$0:Landroid/app/ondeviceintelligence/ITokenInfoCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ondeviceintelligence/ITokenInfoCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda20;->f$0:Landroid/app/ondeviceintelligence/ITokenInfoCallback;

    return-void
.end method


# virtual methods
.method public final accept(Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda20;->f$0:Landroid/app/ondeviceintelligence/ITokenInfoCallback;

    invoke-static {p0, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->$r8$lambda$pro06-5QwJaNnGx2B1y5j_U5JNM(Landroid/app/ondeviceintelligence/ITokenInfoCallback;Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;)V

    return-void
.end method
