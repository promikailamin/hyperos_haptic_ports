.class Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$IdleHandler;
.super Landroid/os/Handler;
.source "MiShareDeviceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdleHandler"
.end annotation


# instance fields
.field private blacklist mOuter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;)V
    .registers 3
    .param p1, "mOuter"    # Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    .line 403
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 404
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$IdleHandler;->mOuter:Ljava/lang/ref/WeakReference;

    .line 405
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 409
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 410
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    .line 411
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 412
    .local v0, "taskId":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$IdleHandler;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 413
    iget-object v2, p0, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter$IdleHandler;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/miui/mishare/app/adapter/MiShareDeviceAdapter;->setDeviceState(Ljava/lang/String;IZF)V

    .line 416
    .end local v0    # "taskId":Ljava/lang/String;
    :cond_21
    return-void
.end method
