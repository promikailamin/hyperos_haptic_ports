.class Lcom/android/server/DockObserver$2;
.super Lcom/android/server/ExtconUEventObserver;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DockObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DockObserver;


# direct methods
.method constructor <init>(Lcom/android/server/DockObserver;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/DockObserver;

    .line 355
    iput-object p1, p0, Lcom/android/server/DockObserver$2;->this$0:Lcom/android/server/DockObserver;

    invoke-direct {p0}, Lcom/android/server/ExtconUEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Landroid/os/UEventObserver$UEvent;)V
    .registers 8
    .param p1, "extconInfo"    # Lcom/android/server/ExtconUEventObserver$ExtconInfo;
    .param p2, "event"    # Landroid/os/UEventObserver$UEvent;

    .line 358
    iget-object v0, p0, Lcom/android/server/DockObserver$2;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v0}, Lcom/android/server/DockObserver;->-$$Nest$fgetmLock(Lcom/android/server/DockObserver;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 359
    :try_start_7
    const-string v1, "STATE"

    invoke-virtual {p2, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, "stateString":Ljava/lang/String;
    if-eqz v1, :cond_19

    .line 361
    iget-object v2, p0, Lcom/android/server/DockObserver$2;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v1}, Lcom/android/server/DockObserver$ExtconStateProvider;->fromString(Ljava/lang/String;)Lcom/android/server/DockObserver$ExtconStateProvider;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/DockObserver;->-$$Nest$msetDockStateFromProviderLocked(Lcom/android/server/DockObserver;Lcom/android/server/DockObserver$ExtconStateProvider;)V

    goto :goto_31

    .line 363
    :cond_19
    const-string v2, "DockObserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Extcon event missing STATE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    .end local v1    # "stateString":Ljava/lang/String;
    :goto_31
    monitor-exit v0

    .line 366
    return-void

    .line 365
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_33

    throw v1
.end method
