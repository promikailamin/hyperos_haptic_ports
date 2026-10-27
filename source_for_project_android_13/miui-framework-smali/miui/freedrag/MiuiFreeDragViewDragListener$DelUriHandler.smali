.class final Lmiui/freedrag/MiuiFreeDragViewDragListener$DelUriHandler;
.super Landroid/os/Handler;
.source "MiuiFreeDragViewDragListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/freedrag/MiuiFreeDragViewDragListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DelUriHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/freedrag/MiuiFreeDragViewDragListener;


# direct methods
.method public constructor blacklist <init>(Lmiui/freedrag/MiuiFreeDragViewDragListener;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lmiui/freedrag/MiuiFreeDragViewDragListener$DelUriHandler;->this$0:Lmiui/freedrag/MiuiFreeDragViewDragListener;

    .line 91
    invoke-static {}, Lmiui/freedrag/MiuiFreeDragThread;->getInstance()Lmiui/freedrag/MiuiFreeDragThread;

    move-result-object p1

    invoke-virtual {p1}, Lmiui/freedrag/MiuiFreeDragThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 92
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 96
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_48

    goto :goto_47

    .line 99
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DelUriHandler received MSG_DEL_TARGET_URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/freedrag/MiuiFreeDragViewDragListener$DelUriHandler;->this$0:Lmiui/freedrag/MiuiFreeDragViewDragListener;

    invoke-static {v1}, Lmiui/freedrag/MiuiFreeDragViewDragListener;->-$$Nest$fgetmDeferDelUri(Lmiui/freedrag/MiuiFreeDragViewDragListener;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiFreeDragViewDragListener"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lmiui/freedrag/MiuiFreeDragViewDragListener$DelUriHandler;->this$0:Lmiui/freedrag/MiuiFreeDragViewDragListener;

    invoke-static {v0}, Lmiui/freedrag/MiuiFreeDragViewDragListener;->-$$Nest$fgetmContext(Lmiui/freedrag/MiuiFreeDragViewDragListener;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 102
    .local v0, "resolver":Landroid/content/ContentResolver;
    if-eqz v0, :cond_47

    iget-object v1, p0, Lmiui/freedrag/MiuiFreeDragViewDragListener$DelUriHandler;->this$0:Lmiui/freedrag/MiuiFreeDragViewDragListener;

    invoke-static {v1}, Lmiui/freedrag/MiuiFreeDragViewDragListener;->-$$Nest$fgetmDeferDelUri(Lmiui/freedrag/MiuiFreeDragViewDragListener;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_47

    .line 103
    iget-object v1, p0, Lmiui/freedrag/MiuiFreeDragViewDragListener$DelUriHandler;->this$0:Lmiui/freedrag/MiuiFreeDragViewDragListener;

    invoke-static {v1}, Lmiui/freedrag/MiuiFreeDragViewDragListener;->-$$Nest$fgetmDeferDelUri(Lmiui/freedrag/MiuiFreeDragViewDragListener;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lmiui/freedrag/MiuiFreeDragViewDragListener$DelUriHandler;->this$0:Lmiui/freedrag/MiuiFreeDragViewDragListener;

    invoke-static {v1, v2}, Lmiui/freedrag/MiuiFreeDragViewDragListener;->-$$Nest$fputmDeferDelUri(Lmiui/freedrag/MiuiFreeDragViewDragListener;Landroid/net/Uri;)V

    .line 110
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_47
    :goto_47
    return-void

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
