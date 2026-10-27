.class public final synthetic Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/app/ondeviceintelligence/Feature;


# direct methods
.method public synthetic constructor <init>(ILandroid/app/ondeviceintelligence/Feature;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda1;->f$0:I

    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda1;->f$1:Landroid/app/ondeviceintelligence/Feature;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda1;->f$0:I

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1$$ExternalSyntheticLambda1;->f$1:Landroid/app/ondeviceintelligence/Feature;

    check-cast p1, Landroid/app/ondeviceintelligence/ILifecycleListener;

    invoke-static {v0, p0, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$1;->$r8$lambda$fFMULDJ6YaLDE9b7E_A4pb8jkNQ(ILandroid/app/ondeviceintelligence/Feature;Landroid/app/ondeviceintelligence/ILifecycleListener;)V

    return-void
.end method
