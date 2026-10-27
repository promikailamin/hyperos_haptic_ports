.class public final synthetic Lcom/android/server/wearable/RemoteWearableSensingService$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .registers 2

    .line 0
    check-cast p1, Landroid/service/wearable/IWearableSensingService;

    invoke-static {p1}, Lcom/android/server/wearable/RemoteWearableSensingService;->$r8$lambda$z7O_VcqmQMfnLLhOA8QO8FJ2wqI(Landroid/service/wearable/IWearableSensingService;)V

    return-void
.end method
