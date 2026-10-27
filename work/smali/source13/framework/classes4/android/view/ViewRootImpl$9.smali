.class Landroid/view/ViewRootImpl$9;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/window/SurfaceSyncer$SyncTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    .line 11940
    iput-object p1, p0, Landroid/view/ViewRootImpl$9;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onSyncComplete$0()V
    .registers 0

    .line 11953
    return-void
.end method


# virtual methods
.method public blacklist onReadyToSync(Landroid/window/SurfaceSyncer$SyncBufferCallback;)V
    .registers 3
    .param p1, "syncBufferCallback"    # Landroid/window/SurfaceSyncer$SyncBufferCallback;

    .line 11943
    iget-object v0, p0, Landroid/view/ViewRootImpl$9;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->-$$Nest$mreadyToSync(Landroid/view/ViewRootImpl;Landroid/window/SurfaceSyncer$SyncBufferCallback;)V

    .line 11944
    return-void
.end method

.method public blacklist onSyncComplete()V
    .registers 3

    .line 11948
    iget-object v0, p0, Landroid/view/ViewRootImpl$9;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v1, Landroid/view/ViewRootImpl$9$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/view/ViewRootImpl$9$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 11955
    return-void
.end method
