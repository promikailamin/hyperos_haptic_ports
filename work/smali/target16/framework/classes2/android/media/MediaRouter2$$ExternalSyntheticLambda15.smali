.class public final synthetic Landroid/media/MediaRouter2$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallbackRecord;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallbackRecord;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaRouter2$$ExternalSyntheticLambda15;->f$0:Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallbackRecord;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/media/MediaRouter2$$ExternalSyntheticLambda15;->f$0:Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallbackRecord;

    invoke-static {v0}, Landroid/media/MediaRouter2;->lambda$notifyCallbacksDeviceSuggestionRequested$9(Landroid/media/MediaRouter2$DeviceSuggestionsUpdatesCallbackRecord;)V

    return-void
.end method
