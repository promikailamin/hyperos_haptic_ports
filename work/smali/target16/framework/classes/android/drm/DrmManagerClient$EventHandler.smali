.class Landroid/drm/DrmManagerClient$EventHandler;
.super Landroid/os/Handler;
.source "DrmManagerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmManagerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


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

    .line 136
    iput-object p1, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    .line 137
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 138
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 141
    nop

    .line 142
    nop

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 145
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_d4

    .line 173
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

    .line 174
    return-void

    .line 147
    :pswitch_28
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/drm/DrmInfo;

    .line 148
    iget-object v1, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    iget-object v3, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v3}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmUniqueId(Landroid/drm/DrmManagerClient;)I

    move-result v3

    invoke-static {v1, v3, p1}, Landroid/drm/DrmManagerClient;->-$$Nest$m_processDrmInfo(Landroid/drm/DrmManagerClient;ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;

    move-result-object v1

    .line 150
    const-string v3, "drm_info_status_object"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v3, "drm_info_object"

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    if-eqz v1, :cond_60

    const/4 v3, 0x1

    iget v4, v1, Landroid/drm/DrmInfoStatus;->statusCode:I

    if-ne v3, v4, :cond_60

    .line 154
    new-instance p1, Landroid/drm/DrmEvent;

    iget-object v3, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v3}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmUniqueId(Landroid/drm/DrmManagerClient;)I

    move-result v3

    iget-object v4, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    iget v1, v1, Landroid/drm/DrmInfoStatus;->infoType:I

    .line 155
    invoke-static {v4, v1}, Landroid/drm/DrmManagerClient;->-$$Nest$mgetEventType(Landroid/drm/DrmManagerClient;I)I

    move-result v1

    invoke-direct {p1, v3, v1, v2, v0}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    move-object v5, v2

    move-object v2, p1

    move-object p1, v5

    goto :goto_a9

    .line 157
    :cond_60
    if-eqz v1, :cond_65

    iget p1, v1, Landroid/drm/DrmInfoStatus;->infoType:I

    goto :goto_69

    :cond_65
    invoke-virtual {p1}, Landroid/drm/DrmInfo;->getInfoType()I

    move-result p1

    .line 158
    :goto_69
    new-instance v1, Landroid/drm/DrmErrorEvent;

    iget-object v3, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v3}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmUniqueId(Landroid/drm/DrmManagerClient;)I

    move-result v3

    iget-object v4, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    .line 159
    invoke-static {v4, p1}, Landroid/drm/DrmManagerClient;->-$$Nest$mgetErrorType(Landroid/drm/DrmManagerClient;I)I

    move-result p1

    invoke-direct {v1, v3, p1, v2, v0}, Landroid/drm/DrmErrorEvent;-><init>(IILjava/lang/String;Ljava/util/HashMap;)V

    .line 161
    move-object p1, v1

    goto :goto_a9

    .line 164
    :pswitch_7c
    iget-object p1, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    iget-object v0, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v0}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmUniqueId(Landroid/drm/DrmManagerClient;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/drm/DrmManagerClient;->-$$Nest$m_removeAllRights(Landroid/drm/DrmManagerClient;I)I

    move-result p1

    if-nez p1, :cond_9b

    .line 165
    new-instance p1, Landroid/drm/DrmEvent;

    iget-object v0, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v0}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmUniqueId(Landroid/drm/DrmManagerClient;)I

    move-result v0

    const/16 v1, 0x3e9

    invoke-direct {p1, v0, v1, v2}, Landroid/drm/DrmEvent;-><init>(IILjava/lang/String;)V

    move-object v5, v2

    move-object v2, p1

    move-object p1, v5

    goto :goto_a9

    .line 167
    :cond_9b
    new-instance p1, Landroid/drm/DrmErrorEvent;

    iget-object v0, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v0}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmUniqueId(Landroid/drm/DrmManagerClient;)I

    move-result v0

    const/16 v1, 0x7d7

    invoke-direct {p1, v0, v1, v2}, Landroid/drm/DrmErrorEvent;-><init>(IILjava/lang/String;)V

    .line 170
    nop

    .line 176
    :goto_a9
    iget-object v0, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v0}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmOnEventListener(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnEventListener;

    move-result-object v0

    if-eqz v0, :cond_be

    if-eqz v2, :cond_be

    .line 177
    iget-object v0, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v0}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmOnEventListener(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnEventListener;

    move-result-object v0

    iget-object v1, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-interface {v0, v1, v2}, Landroid/drm/DrmManagerClient$OnEventListener;->onEvent(Landroid/drm/DrmManagerClient;Landroid/drm/DrmEvent;)V

    .line 179
    :cond_be
    iget-object v0, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v0}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmOnErrorListener(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_d3

    if-eqz p1, :cond_d3

    .line 180
    iget-object v0, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-static {v0}, Landroid/drm/DrmManagerClient;->-$$Nest$fgetmOnErrorListener(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Landroid/drm/DrmManagerClient$EventHandler;->this$0:Landroid/drm/DrmManagerClient;

    invoke-interface {v0, v1, p1}, Landroid/drm/DrmManagerClient$OnErrorListener;->onError(Landroid/drm/DrmManagerClient;Landroid/drm/DrmErrorEvent;)V

    .line 182
    :cond_d3
    return-void

    :pswitch_data_d4
    .packed-switch 0x3e9
        :pswitch_7c
        :pswitch_28
    .end packed-switch
.end method
