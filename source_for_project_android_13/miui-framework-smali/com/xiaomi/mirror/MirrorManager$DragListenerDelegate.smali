.class final Lcom/xiaomi/mirror/MirrorManager$DragListenerDelegate;
.super Landroid/os/Handler;
.source "MirrorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/MirrorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DragListenerDelegate"
.end annotation


# static fields
.field public static final blacklist MSG_DRAG_FINISH:I = 0x2

.field public static final blacklist MSG_DRAG_START:I = 0x1


# instance fields
.field public final blacklist mListener:Lcom/xiaomi/mirror/MirrorManager$DragListener;


# direct methods
.method public constructor blacklist <init>(Lcom/xiaomi/mirror/MirrorManager$DragListener;Landroid/os/Handler;)V
    .registers 4
    .param p1, "listener"    # Lcom/xiaomi/mirror/MirrorManager$DragListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1269
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_b
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1270
    iput-object p1, p0, Lcom/xiaomi/mirror/MirrorManager$DragListenerDelegate;->mListener:Lcom/xiaomi/mirror/MirrorManager$DragListener;

    .line 1271
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 1275
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_36

    goto :goto_34

    .line 1283
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 1284
    .local v0, "dragFinishArgs":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManager$DragListenerDelegate;->mListener:Lcom/xiaomi/mirror/MirrorManager$DragListener;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/xiaomi/mirror/MirrorManager$DragListener;->onDragFinish(Ljava/lang/String;Z)V

    .line 1285
    goto :goto_34

    .line 1277
    .end local v0    # "dragFinishArgs":Lcom/android/internal/os/SomeArgs;
    :pswitch_1c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 1278
    .local v0, "dragStartArgs":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManager$DragListenerDelegate;->mListener:Lcom/xiaomi/mirror/MirrorManager$DragListener;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/content/ClipData;

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Bitmap;

    invoke-interface/range {v1 .. v6}, Lcom/xiaomi/mirror/MirrorManager$DragListener;->onDragStart(Landroid/content/ClipData;IIILandroid/graphics/Bitmap;)V

    .line 1281
    nop

    .line 1289
    .end local v0    # "dragStartArgs":Lcom/android/internal/os/SomeArgs;
    :goto_34
    return-void

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_6
    .end packed-switch
.end method
