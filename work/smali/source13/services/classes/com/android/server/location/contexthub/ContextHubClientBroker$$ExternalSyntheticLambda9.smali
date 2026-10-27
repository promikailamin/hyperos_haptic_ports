.class public final synthetic Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/location/contexthub/ContextHubClientBroker;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->lambda$onHubReset$7$com-android-server-location-contexthub-ContextHubClientBroker()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
