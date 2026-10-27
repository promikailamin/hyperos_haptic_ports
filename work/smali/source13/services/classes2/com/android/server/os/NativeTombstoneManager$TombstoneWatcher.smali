.class Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;
.super Landroid/os/FileObserver;
.source "NativeTombstoneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/NativeTombstoneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TombstoneWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/os/NativeTombstoneManager;


# direct methods
.method constructor <init>(Lcom/android/server/os/NativeTombstoneManager;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/os/NativeTombstoneManager;

    .line 554
    iput-object p1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;->this$0:Lcom/android/server/os/NativeTombstoneManager;

    .line 558
    invoke-static {}, Lcom/android/server/os/NativeTombstoneManager;->-$$Nest$sfgetTOMBSTONE_DIR()Ljava/io/File;

    move-result-object v0

    const/16 v1, 0x180

    invoke-direct {p0, v0, v1}, Landroid/os/FileObserver;-><init>(Ljava/io/File;I)V

    .line 559
    return-void
.end method


# virtual methods
.method synthetic lambda$onEvent$0$com-android-server-os-NativeTombstoneManager$TombstoneWatcher(Ljava/lang/String;)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .line 564
    iget-object v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;->this$0:Lcom/android/server/os/NativeTombstoneManager;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/server/os/NativeTombstoneManager;->-$$Nest$sfgetTOMBSTONE_DIR()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/server/os/NativeTombstoneManager;->-$$Nest$mhandleTombstone(Lcom/android/server/os/NativeTombstoneManager;Ljava/io/File;)V

    .line 565
    return-void
.end method

.method public onEvent(ILjava/lang/String;)V
    .registers 5
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 563
    iget-object v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;->this$0:Lcom/android/server/os/NativeTombstoneManager;

    invoke-static {v0}, Lcom/android/server/os/NativeTombstoneManager;->-$$Nest$fgetmHandler(Lcom/android/server/os/NativeTombstoneManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 566
    return-void
.end method
