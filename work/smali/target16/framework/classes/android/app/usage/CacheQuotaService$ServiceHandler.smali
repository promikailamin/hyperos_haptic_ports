.class final Landroid/app/usage/CacheQuotaService$ServiceHandler;
.super Landroid/os/Handler;
.source "CacheQuotaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/CacheQuotaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# static fields
.field public static final greylist-max-o MSG_SEND_LIST:I = 0x1


# instance fields
.field final synthetic blacklist this$0:Landroid/app/usage/CacheQuotaService;


# direct methods
.method public constructor blacklist <init>(Landroid/app/usage/CacheQuotaService;Landroid/os/Looper;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 89
    iput-object p1, p0, Landroid/app/usage/CacheQuotaService$ServiceHandler;->this$0:Landroid/app/usage/CacheQuotaService;

    .line 90
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 91
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 95
    iget v0, p1, Landroid/os/Message;->what:I

    .line 96
    packed-switch v0, :pswitch_data_40

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handling unknown message: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CacheQuotaService"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 98
    :pswitch_1e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 100
    iget-object v0, p0, Landroid/app/usage/CacheQuotaService$ServiceHandler;->this$0:Landroid/app/usage/CacheQuotaService;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/app/usage/CacheQuotaService;->onComputeCacheQuotaHints(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 101
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 102
    const-string/jumbo v2, "requests"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    .line 104
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/os/RemoteCallback;

    .line 105
    invoke-virtual {p1, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 106
    nop

    .line 110
    :goto_3f
    return-void

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_1e
    .end packed-switch
.end method
