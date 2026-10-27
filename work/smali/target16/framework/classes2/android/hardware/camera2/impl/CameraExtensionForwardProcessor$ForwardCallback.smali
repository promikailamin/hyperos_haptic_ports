.class Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;
.super Ljava/lang/Object;
.source "CameraExtensionForwardProcessor.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForwardCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 127
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;-><init>(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;)V

    return-void
.end method


# virtual methods
.method public whitelist onImageAvailable(Landroid/media/ImageReader;)V
    .registers 7

    .line 129
    const-string v0, "CameraExtensionForward"

    .line 131
    :try_start_2
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_6} :catch_65

    .line 135
    nop

    .line 136
    if-nez p1, :cond_f

    .line 137
    const-string p1, "Invalid image"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void

    .line 141
    :cond_f
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->-$$Nest$fgetmOutputSurface(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;)Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->-$$Nest$fgetmOutputSurface(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->-$$Nest$fgetmOutputAbandoned(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;)Z

    move-result v1

    if-nez v1, :cond_61

    .line 142
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->-$$Nest$fgetmOutputWriter(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;)Landroid/media/ImageWriter;

    move-result-object v1

    if-nez v1, :cond_47

    .line 143
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->-$$Nest$fgetmOutputSurface(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;)Landroid/view/Surface;

    move-result-object v2

    .line 144
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v3

    .line 143
    const/4 v4, 0x3

    invoke-static {v2, v4, v3}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;II)Landroid/media/ImageWriter;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->-$$Nest$fputmOutputWriter(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;Landroid/media/ImageWriter;)V

    .line 147
    :cond_47
    :try_start_47
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->-$$Nest$fgetmOutputWriter(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;)Landroid/media/ImageWriter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V
    :try_end_50
    .catch Ljava/lang/IllegalStateException; {:try_start_47 .. :try_end_50} :catch_51

    goto :goto_60

    .line 148
    :catch_51
    move-exception v1

    .line 149
    const-string v1, "Failed to queue processed buffer!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 151
    iget-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor$ForwardCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->-$$Nest$fputmOutputAbandoned(Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;Z)V

    .line 152
    :goto_60
    goto :goto_64

    .line 154
    :cond_61
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 156
    :goto_64
    return-void

    .line 132
    :catch_65
    move-exception p1

    .line 133
    const-string p1, "Failed to acquire processed image!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void
.end method
