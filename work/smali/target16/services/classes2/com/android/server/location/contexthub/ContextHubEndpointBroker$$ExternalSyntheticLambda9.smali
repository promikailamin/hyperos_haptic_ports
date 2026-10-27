.class public final synthetic Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/location/contexthub/ContextHubEndpointBroker$CallbackConsumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/hardware/contexthub/HubMessage;


# direct methods
.method public synthetic constructor <init>(ILandroid/hardware/contexthub/HubMessage;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda9;->f$0:I

    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda9;->f$1:Landroid/hardware/contexthub/HubMessage;

    return-void
.end method


# virtual methods
.method public final accept(Landroid/hardware/contexthub/IContextHubEndpointCallback;)V
    .registers 3

    .line 0
    iget v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda9;->f$0:I

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda9;->f$1:Landroid/hardware/contexthub/HubMessage;

    invoke-static {v0, p0, p1}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->$r8$lambda$rfbZxhHKvrzlxVirlUWcIokl2L0(ILandroid/hardware/contexthub/HubMessage;Landroid/hardware/contexthub/IContextHubEndpointCallback;)V

    return-void
.end method
