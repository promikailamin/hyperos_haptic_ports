.class Landroid/service/dreams/DreamService$OverlayConnection;
.super Ljava/lang/Object;
.source "DreamService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/dreams/DreamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OverlayConnection"
.end annotation


# instance fields
.field private blacklist mBound:Z

.field private blacklist mOverlay:Landroid/service/dreams/IDreamOverlay;

.field private final blacklist mRequests:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/util/function/Consumer<",
            "Landroid/service/dreams/IDreamOverlay;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/service/dreams/DreamService$OverlayConnection;->mRequests:Ljava/util/ArrayDeque;

    .line 259
    return-void
.end method

.method private blacklist evaluate()V
    .registers 3

    .line 294
    iget-object v0, p0, Landroid/service/dreams/DreamService$OverlayConnection;->mOverlay:Landroid/service/dreams/IDreamOverlay;

    if-nez v0, :cond_5

    .line 295
    return-void

    .line 300
    :cond_5
    :goto_5
    iget-object v0, p0, Landroid/service/dreams/DreamService$OverlayConnection;->mRequests:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 301
    iget-object v0, p0, Landroid/service/dreams/DreamService$OverlayConnection;->mRequests:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    .line 302
    .local v0, "request":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/service/dreams/IDreamOverlay;>;"
    iget-object v1, p0, Landroid/service/dreams/DreamService$OverlayConnection;->mOverlay:Landroid/service/dreams/IDreamOverlay;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 303
    .end local v0    # "request":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/service/dreams/IDreamOverlay;>;"
    goto :goto_5

    .line 304
    :cond_1b
    return-void
.end method


# virtual methods
.method public blacklist bind(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "overlayService"    # Landroid/content/ComponentName;
    .param p3, "dreamService"    # Landroid/content/ComponentName;

    .line 263
    if-nez p2, :cond_3

    .line 264
    return-void

    .line 267
    :cond_3
    invoke-static {p1, p3}, Landroid/service/dreams/DreamService;->-$$Nest$smfetchServiceInfo(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 269
    .local v0, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 270
    .local v1, "overlayIntent":Landroid/content/Intent;
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 271
    nop

    .line 272
    invoke-static {p1, v0}, Landroid/service/dreams/DreamService;->-$$Nest$smfetchShouldShowComplications(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)Z

    move-result v2

    .line 271
    const-string v3, "android.service.dreams.SHOW_COMPLICATIONS"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 274
    const v2, 0x4000001

    invoke-virtual {p1, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 276
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/service/dreams/DreamService$OverlayConnection;->mBound:Z

    .line 277
    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 309
    invoke-static {p2}, Landroid/service/dreams/IDreamOverlay$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamOverlay;

    move-result-object v0

    iput-object v0, p0, Landroid/service/dreams/DreamService$OverlayConnection;->mOverlay:Landroid/service/dreams/IDreamOverlay;

    .line 310
    invoke-direct {p0}, Landroid/service/dreams/DreamService$OverlayConnection;->evaluate()V

    .line 311
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 316
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/dreams/DreamService$OverlayConnection;->mOverlay:Landroid/service/dreams/IDreamOverlay;

    .line 317
    return-void
.end method

.method public blacklist request(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/service/dreams/IDreamOverlay;",
            ">;)V"
        }
    .end annotation

    .line 289
    .local p1, "request":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/service/dreams/IDreamOverlay;>;"
    iget-object v0, p0, Landroid/service/dreams/DreamService$OverlayConnection;->mRequests:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 290
    invoke-direct {p0}, Landroid/service/dreams/DreamService$OverlayConnection;->evaluate()V

    .line 291
    return-void
.end method

.method public blacklist unbind(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 280
    iget-boolean v0, p0, Landroid/service/dreams/DreamService$OverlayConnection;->mBound:Z

    if-nez v0, :cond_5

    .line 281
    return-void

    .line 284
    :cond_5
    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/dreams/DreamService$OverlayConnection;->mBound:Z

    .line 286
    return-void
.end method
