.class Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;
.super Landroid/os/Handler;
.source "SuperResolution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/improve/SuperResolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuperResolutionHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/improve/SuperResolution;


# direct methods
.method public constructor blacklist <init>(Landroid/graphics/improve/SuperResolution;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 103
    iput-object p1, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    .line 104
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 105
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 15
    .param p1, "msg"    # Landroid/os/Message;

    .line 109
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_b4

    goto/16 :goto_b3

    .line 111
    :pswitch_7
    iget-object v0, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    invoke-static {v0}, Landroid/graphics/improve/SuperResolution;->-$$Nest$minitImproveInSRThread(Landroid/graphics/improve/SuperResolution;)V

    .line 112
    goto/16 :goto_b3

    .line 114
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/improve/SuperResolution$ImproveInfo;

    .line 115
    .local v0, "info":Landroid/graphics/improve/SuperResolution$ImproveInfo;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 117
    .local v1, "startTime":J
    invoke-static {}, Landroid/graphics/improve/SRReporter;->reportImprove()V

    .line 118
    iget-object v3, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    iget-object v4, v0, Landroid/graphics/improve/SuperResolution$ImproveInfo;->oldBitmap:Landroid/graphics/Bitmap;

    invoke-static {v3, v4}, Landroid/graphics/improve/SuperResolution;->-$$Nest$mgetBitmapInfo(Landroid/graphics/improve/SuperResolution;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "start improve bitmap"

    invoke-static {v4, v3}, Landroid/graphics/improve/SRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v3, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    invoke-static {v3}, Landroid/graphics/improve/SuperResolution;->-$$Nest$fgetmDrawableImprove(Landroid/graphics/improve/SuperResolution;)Landroid/graphics/improve/BitmapImproveAble;

    move-result-object v3

    iget-object v4, v0, Landroid/graphics/improve/SuperResolution$ImproveInfo;->oldBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v3, v4}, Landroid/graphics/improve/BitmapImproveAble;->improveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 121
    .local v3, "newBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/improve/SuperResolution$ImproveInfo;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    .line 122
    .local v4, "imageView":Landroid/widget/ImageView;
    if-nez v4, :cond_39

    return-void

    .line 124
    :cond_39
    const-string v5, "handle message"

    if-eqz v3, :cond_a4

    iget-object v6, v0, Landroid/graphics/improve/SuperResolution$ImproveInfo;->oldBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_46

    goto :goto_a4

    .line 130
    :cond_46
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "improve bitmap successful"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    invoke-static {v7, v3}, Landroid/graphics/improve/SuperResolution;->-$$Nest$mgetBitmapInfo(Landroid/graphics/improve/SuperResolution;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/graphics/improve/SRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iput-object v3, v0, Landroid/graphics/improve/SuperResolution$ImproveInfo;->newBitmap:Landroid/graphics/Bitmap;

    .line 134
    iget-object v5, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    iget-object v6, v0, Landroid/graphics/improve/SuperResolution$ImproveInfo;->newBitmap:Landroid/graphics/Bitmap;

    invoke-static {v5, v4, v6}, Landroid/graphics/improve/SuperResolution;->-$$Nest$madd2Record(Landroid/graphics/improve/SuperResolution;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 136
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    .line 137
    .local v5, "useTime":J
    invoke-static {v5, v6}, Landroid/graphics/improve/SRReporter;->reportImproveTime(J)V

    .line 139
    iget-object v7, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    const-string v8, "check improve use time"

    invoke-static {v7, v1, v2, v8}, Landroid/graphics/improve/SuperResolution;->-$$Nest$mcheckTime(Landroid/graphics/improve/SuperResolution;JLjava/lang/String;)V

    .line 140
    iget-object v7, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    iget-wide v8, v0, Landroid/graphics/improve/SuperResolution$ImproveInfo;->startTime:J

    invoke-static {v7, v8, v9}, Landroid/graphics/improve/SuperResolution;->-$$Nest$misTimeOutOfLimit(Landroid/graphics/improve/SuperResolution;J)Z

    move-result v7

    if-eqz v7, :cond_85

    .line 141
    return-void

    .line 143
    :cond_85
    iget-object v7, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    invoke-static {v7}, Landroid/graphics/improve/SuperResolution;->-$$Nest$fgetmainHandler(Landroid/graphics/improve/SuperResolution;)Landroid/graphics/improve/SuperResolution$MainHandler;

    move-result-object v7

    iget-object v8, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionHandler;->this$0:Landroid/graphics/improve/SuperResolution;

    invoke-static {v8}, Landroid/graphics/improve/SuperResolution;->-$$Nest$fgetmainHandler(Landroid/graphics/improve/SuperResolution;)Landroid/graphics/improve/SuperResolution$MainHandler;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9, v0}, Landroid/graphics/improve/SuperResolution$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    iget-wide v9, v0, Landroid/graphics/improve/SuperResolution$ImproveInfo;->startTime:J

    const-wide/16 v11, 0x1f4

    add-long/2addr v9, v11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    sub-long/2addr v9, v11

    invoke-virtual {v7, v8, v9, v10}, Landroid/graphics/improve/SuperResolution$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_b3

    .line 125
    .end local v5    # "useTime":J
    :cond_a4
    :goto_a4
    const-string v6, "improve fail !!!"

    invoke-static {v5, v6}, Landroid/graphics/improve/SRLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "algorithm error"

    invoke-static {v5, v6}, Landroid/graphics/improve/SRReporter;->reportFailure(Landroid/content/Context;Ljava/lang/String;)V

    .line 127
    return-void

    .line 146
    .end local v0    # "info":Landroid/graphics/improve/SuperResolution$ImproveInfo;
    .end local v1    # "startTime":J
    .end local v3    # "newBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "imageView":Landroid/widget/ImageView;
    :goto_b3
    return-void

    :pswitch_data_b4
    .packed-switch 0x3e6
        :pswitch_e
        :pswitch_7
    .end packed-switch
.end method
