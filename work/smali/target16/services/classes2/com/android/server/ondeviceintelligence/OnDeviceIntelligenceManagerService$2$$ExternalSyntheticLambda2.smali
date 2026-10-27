.class public final synthetic Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureConsumer;


# instance fields
.field public final synthetic f$0:Landroid/app/ondeviceintelligence/IListFeaturesCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ondeviceintelligence/IListFeaturesCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda2;->f$0:Landroid/app/ondeviceintelligence/IListFeaturesCallback;

    return-void
.end method


# virtual methods
.method public final accept(Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda2;->f$0:Landroid/app/ondeviceintelligence/IListFeaturesCallback;

    invoke-static {p0, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->$r8$lambda$jOwqYeyW9RkEVZ0NwtNKD5M4HMI(Landroid/app/ondeviceintelligence/IListFeaturesCallback;Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;)V

    return-void
.end method
