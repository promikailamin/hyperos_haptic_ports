.class Lcom/android/server/media/MediaSessionRecord$3;
.super Ljava/lang/Object;
.source "MediaSessionRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/media/MediaSessionRecord;

    .line 896
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$3;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 899
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$3;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmOptimisticVolume(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$3;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmCurrentVolume(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v1

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 900
    .local v0, "needUpdate":Z
    :goto_11
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$3;->this$0:Lcom/android/server/media/MediaSessionRecord;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fputmOptimisticVolume(Lcom/android/server/media/MediaSessionRecord;I)V

    .line 901
    if-eqz v0, :cond_1e

    .line 902
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$3;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mpushVolumeUpdate(Lcom/android/server/media/MediaSessionRecord;)V

    .line 904
    :cond_1e
    return-void
.end method
