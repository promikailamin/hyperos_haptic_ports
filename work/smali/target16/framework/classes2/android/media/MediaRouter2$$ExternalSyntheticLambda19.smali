.class public final synthetic Landroid/media/MediaRouter2$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/List;

.field public final synthetic blacklist f$1:Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallbackRecord;

.field public final synthetic blacklist f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/List;Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallbackRecord;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaRouter2$$ExternalSyntheticLambda19;->f$0:Ljava/util/List;

    iput-object p2, p0, Landroid/media/MediaRouter2$$ExternalSyntheticLambda19;->f$1:Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallbackRecord;

    iput-object p3, p0, Landroid/media/MediaRouter2$$ExternalSyntheticLambda19;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/media/MediaRouter2$$ExternalSyntheticLambda19;->f$0:Ljava/util/List;

    iget-object v1, p0, Landroid/media/MediaRouter2$$ExternalSyntheticLambda19;->f$1:Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallbackRecord;

    iget-object v2, p0, Landroid/media/MediaRouter2$$ExternalSyntheticLambda19;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/media/MediaRouter2;->lambda$notifyDeviceSuggestionsUpdated$8(Ljava/util/List;Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallbackRecord;Ljava/lang/String;)V

    return-void
.end method
