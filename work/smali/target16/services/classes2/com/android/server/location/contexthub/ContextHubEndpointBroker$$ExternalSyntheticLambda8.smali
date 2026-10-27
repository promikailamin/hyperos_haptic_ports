.class public final synthetic Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/contexthub/ContextHubEndpointBroker;

.field public final synthetic f$1:Landroid/hardware/contexthub/HubEndpointInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;Landroid/hardware/contexthub/HubEndpointInfo;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/location/contexthub/ContextHubEndpointBroker;

    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda8;->f$1:Landroid/hardware/contexthub/HubEndpointInfo;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/location/contexthub/ContextHubEndpointBroker;

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubEndpointBroker$$ExternalSyntheticLambda8;->f$1:Landroid/hardware/contexthub/HubEndpointInfo;

    invoke-static {v0, p0}, Lcom/android/server/location/contexthub/ContextHubEndpointBroker;->$r8$lambda$NsS0-hMxPEi2jfauChoBahOGZNc(Lcom/android/server/location/contexthub/ContextHubEndpointBroker;Landroid/hardware/contexthub/HubEndpointInfo;)V

    return-void
.end method
