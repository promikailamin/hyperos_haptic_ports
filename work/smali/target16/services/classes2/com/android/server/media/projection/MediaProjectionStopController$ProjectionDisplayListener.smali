.class public final Lcom/android/server/media/projection/MediaProjectionStopController$ProjectionDisplayListener;
.super Ljava/lang/Object;
.source "MediaProjectionStopController.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/projection/MediaProjectionStopController;


# direct methods
.method public constructor <init>(Lcom/android/server/media/projection/MediaProjectionStopController;)V
    .registers 2

    .line 276
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionStopController$ProjectionDisplayListener;->this$0:Lcom/android/server/media/projection/MediaProjectionStopController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/projection/MediaProjectionStopController;Lcom/android/server/media/projection/MediaProjectionStopController-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/projection/MediaProjectionStopController$ProjectionDisplayListener;-><init>(Lcom/android/server/media/projection/MediaProjectionStopController;)V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 3

    .line 284
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionStopController$ProjectionDisplayListener;->this$0:Lcom/android/server/media/projection/MediaProjectionStopController;

    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionStopController;->-$$Nest$fgetmCurrentRecordedDisplay(Lcom/android/server/media/projection/MediaProjectionStopController;)I

    move-result v0

    if-ne p1, v0, :cond_12

    .line 285
    iget-object p1, p0, Lcom/android/server/media/projection/MediaProjectionStopController$ProjectionDisplayListener;->this$0:Lcom/android/server/media/projection/MediaProjectionStopController;

    invoke-virtual {p1}, Lcom/android/server/media/projection/MediaProjectionStopController;->clearRecordedDisplay()V

    .line 286
    iget-object p0, p0, Lcom/android/server/media/projection/MediaProjectionStopController$ProjectionDisplayListener;->this$0:Lcom/android/server/media/projection/MediaProjectionStopController;

    invoke-virtual {p0}, Lcom/android/server/media/projection/MediaProjectionStopController;->onDisplayRemoved()V

    :cond_12
    return-void
.end method
