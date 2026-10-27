.class Landroid/view/FramePredict$2;
.super Landroid/database/ContentObserver;
.source "FramePredict.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/FramePredict;->registerCloudObserver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/FramePredict;


# direct methods
.method constructor blacklist <init>(Landroid/view/FramePredict;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Landroid/view/FramePredict;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 136
    iput-object p1, p0, Landroid/view/FramePredict$2;->this$0:Landroid/view/FramePredict;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(ZLandroid/net/Uri;)V
    .registers 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 139
    if-eqz p2, :cond_13

    const-string v0, "framepredict_enable"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 140
    iget-object v0, p0, Landroid/view/FramePredict$2;->this$0:Landroid/view/FramePredict;

    invoke-static {v0}, Landroid/view/FramePredict;->-$$Nest$mupdateCloudControlParas(Landroid/view/FramePredict;)V

    .line 142
    :cond_13
    return-void
.end method
