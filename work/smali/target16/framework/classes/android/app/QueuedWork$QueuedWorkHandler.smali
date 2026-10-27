.class Landroid/app/QueuedWork$QueuedWorkHandler;
.super Landroid/os/Handler;
.source "QueuedWork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/QueuedWork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueuedWorkHandler"
.end annotation


# static fields
.field static final greylist-max-o MSG_RUN:I = 0x1


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/Looper;)V
    .registers 2

    .line 307
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 308
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 311
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 312
    invoke-static {}, Landroid/app/QueuedWork;->-$$Nest$smprocessPendingWork()V

    .line 314
    :cond_8
    return-void
.end method
