.class Landroid/graphics/improve/SuperResolution$MainHandler;
.super Landroid/os/Handler;
.source "SuperResolution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/improve/SuperResolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/improve/SuperResolution;


# direct methods
.method public constructor blacklist <init>(Landroid/graphics/improve/SuperResolution;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 64
    iput-object p1, p0, Landroid/graphics/improve/SuperResolution$MainHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    .line 65
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 66
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_58

    goto :goto_57

    .line 72
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/improve/SuperResolution$ImproveInfo;

    .line 73
    .local v0, "info":Landroid/graphics/improve/SuperResolution$ImproveInfo;
    invoke-virtual {v0}, Landroid/graphics/improve/SuperResolution$ImproveInfo;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 74
    .local v1, "imageView":Landroid/widget/ImageView;
    iget-object v2, p0, Landroid/graphics/improve/SuperResolution$MainHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    invoke-static {v2, v1}, Landroid/graphics/improve/SuperResolution;->-$$Nest$mcheckViewIsAvailable(Landroid/graphics/improve/SuperResolution;Landroid/widget/ImageView;)Z

    move-result v2

    if-nez v2, :cond_17

    return-void

    .line 76
    :cond_17
    iget-object v2, p0, Landroid/graphics/improve/SuperResolution$MainHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    iget-wide v3, v0, Landroid/graphics/improve/SuperResolution$ImproveInfo;->startTime:J

    invoke-static {v2, v3, v4}, Landroid/graphics/improve/SuperResolution;->-$$Nest$misTimeOutOfLimit(Landroid/graphics/improve/SuperResolution;J)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 77
    return-void

    .line 80
    :cond_22
    iget-object v2, p0, Landroid/graphics/improve/SuperResolution$MainHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    invoke-static {v2, v1, v0}, Landroid/graphics/improve/SuperResolution;->-$$Nest$mdrawableHasChanged(Landroid/graphics/improve/SuperResolution;Landroid/widget/ImageView;Landroid/graphics/improve/SuperResolution$ImproveInfo;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 81
    return-void

    .line 84
    :cond_2b
    :try_start_2b
    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 85
    .local v2, "matrix":Landroid/graphics/Matrix;
    iget-object v3, p0, Landroid/graphics/improve/SuperResolution$MainHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    invoke-static {v3}, Landroid/graphics/improve/SuperResolution;->-$$Nest$fgetmImproveHook(Landroid/graphics/improve/SuperResolution;)Landroid/graphics/improve/ImproveHookAble;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Landroid/graphics/improve/ImproveHookAble;->setBitmap(Landroid/graphics/improve/SuperResolution$ImproveInfo;Landroid/widget/ImageView;)V

    .line 86
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 87
    const-string v3, "handle message"

    const-string v4, "update drawable successful"

    invoke-static {v3, v4}, Landroid/graphics/improve/SRLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_2b .. :try_end_42} :catchall_43

    .line 93
    .end local v2    # "matrix":Landroid/graphics/Matrix;
    goto :goto_57

    .line 88
    :catchall_43
    move-exception v2

    .line 89
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "hook fail"

    invoke-static {v3, v4}, Landroid/graphics/improve/SRReporter;->reportFailure(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "update drawable fail"

    invoke-static {v4, v3}, Landroid/graphics/improve/SRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .end local v2    # "e":Ljava/lang/Throwable;
    nop

    .line 98
    .end local v0    # "info":Landroid/graphics/improve/SuperResolution$ImproveInfo;
    .end local v1    # "imageView":Landroid/widget/ImageView;
    :goto_57
    return-void

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
