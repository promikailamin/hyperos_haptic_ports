.class Landroid/drm/DrmManagerClient$InfoHandler;
.super Landroid/os/Handler;
.source "DrmManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InfoHandler"
.end annotation


# static fields
.field public static final greylist-max-o INFO_EVENT_TYPE:I = 0x1


# instance fields
.field final synthetic blacklist this$0:Landroid/drm/DrmManagerClient;


# direct methods
.method public constructor blacklist <init>(Landroid/drm/DrmManagerClient;Landroid/os/Looper;)V
    .registers 3
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

    .line 202
    iput-object p1, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    .line 203
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 204
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 207
    nop

    .line 208
    nop

    .line 210
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_7a

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DrmManagerClient"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void

    .line 212
    :pswitch_22
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 213
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 214
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 216
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_80

    .line 235
    new-instance v3, Landroid/drm/DrmErrorEvent;

    invoke-direct {v3, v0, v1, p1}, Landroid/drm/DrmErrorEvent;-><init>(IILjava/lang/String;)V

    goto :goto_4f

    .line 219
    :pswitch_36
    :try_start_36
    invoke-static {p1}, Landroid/drm/DrmUtils;->removeFile(Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    .line 222
    goto :goto_3e

    .line 220
    :catch_3a
    move-exception v3

    .line 221
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 223
    :goto_3e
    new-instance v3, Landroid/drm/DrmInfoEvent;

    invoke-direct {v3, v0, v1, p1}, Landroid/drm/DrmInfoEvent;-><init>(IILjava/lang/String;)V

    .line 224
    move-object v4, v3

    move-object v3, v2

    move-object v2, v4

    goto :goto_4f

    .line 231
    :pswitch_47
    new-instance v3, Landroid/drm/DrmInfoEvent;

    invoke-direct {v3, v0, v1, p1}, Landroid/drm/DrmInfoEvent;-><init>(IILjava/lang/String;)V

    .line 232
    move-object v4, v3

    move-object v3, v2

    move-object v2, v4

    .line 239
    :goto_4f
    iget-object p1, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {p1}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmOnInfoListener(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnInfoListener;

    move-result-object p1

    if-eqz p1, :cond_64

    if-eqz v2, :cond_64

    .line 240
    iget-object p1, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {p1}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmOnInfoListener(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnInfoListener;

    move-result-object p1

    iget-object v0, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-interface {p1, v0, v2}, Landroid/drm/DrmManagerClient$OnInfoListener;->onInfo(Landroid/drm/DrmManagerClient;Landroid/drm/DrmInfoEvent;)V

    .line 242
    :cond_64
    iget-object p1, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {p1}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmOnErrorListener(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    move-result-object p1

    if-eqz p1, :cond_79

    if-eqz v3, :cond_79

    .line 243
    iget-object p1, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {p1}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmOnErrorListener(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    move-result-object p1

    iget-object v0, p0, Landroid/drm/DrmManagerClient$InfoHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-interface {p1, v0, v3}, Landroid/drm/DrmManagerClient$OnErrorListener;->onError(Landroid/drm/DrmManagerClient;Landroid/drm/DrmErrorEvent;)V

    .line 245
    :cond_79
    return-void

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_22
    .end packed-switch

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_47
        :pswitch_36
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
    .end packed-switch
.end method
