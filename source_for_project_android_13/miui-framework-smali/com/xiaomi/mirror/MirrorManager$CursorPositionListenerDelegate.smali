.class final Lcom/xiaomi/mirror/MirrorManager$CursorPositionListenerDelegate;
.super Landroid/os/Handler;
.source "MirrorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/MirrorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CursorPositionListenerDelegate"
.end annotation


# static fields
.field public static final blacklist MSG_CURSOR_POSITION_CHANGED:I = 0x1


# instance fields
.field public final blacklist mListener:Lcom/xiaomi/mirror/MirrorManager$CursorPositionListener;


# direct methods
.method public constructor blacklist <init>(Lcom/xiaomi/mirror/MirrorManager$CursorPositionListener;Landroid/os/Handler;)V
    .registers 4
    .param p1, "listener"    # Lcom/xiaomi/mirror/MirrorManager$CursorPositionListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1066
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_b
    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1067
    iput-object p1, p0, Lcom/xiaomi/mirror/MirrorManager$CursorPositionListenerDelegate;->mListener:Lcom/xiaomi/mirror/MirrorManager$CursorPositionListener;

    .line 1068
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 1072
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 1073
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 1074
    .local v0, "someArgs":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Lcom/xiaomi/mirror/MirrorManager$CursorPositionListenerDelegate;->mListener:Lcom/xiaomi/mirror/MirrorManager$CursorPositionListener;

    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    .line 1075
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 1074
    invoke-interface {v1, v2, v3, v4}, Lcom/xiaomi/mirror/MirrorManager$CursorPositionListener;->onCursorPositionChanged(IFF)V

    .line 1077
    .end local v0    # "someArgs":Lcom/android/internal/os/SomeArgs;
    :cond_20
    return-void
.end method
