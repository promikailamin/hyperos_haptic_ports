.class public final synthetic Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureConsumer;


# instance fields
.field public final synthetic f$0:Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda6;->f$0:Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;

    return-void
.end method


# virtual methods
.method public final accept(Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2$$ExternalSyntheticLambda6;->f$0:Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;

    invoke-static {p0, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$2;->$r8$lambda$neJaDlCZohFcATi1hQjcb1yDXLw(Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;)V

    return-void
.end method
