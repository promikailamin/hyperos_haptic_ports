.class Lcom/android/qualcomm/qti/seccamapi/SecureSurface$1;
.super Ljava/lang/Object;
.source "SecureSurface.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->assignPreviewSurface(Landroid/view/SurfaceHolder;IIIII)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/qualcomm/qti/seccamapi/SecureSurface;


# direct methods
.method constructor blacklist <init>(Lcom/android/qualcomm/qti/seccamapi/SecureSurface;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/qualcomm/qti/seccamapi/SecureSurface;

    .line 199
    iput-object p1, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$1;->this$0:Lcom/android/qualcomm/qti/seccamapi/SecureSurface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 7
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 207
    const-string v0, "SECCAM-API"

    const-string v1, "SecureSurface::assignPreviewSurface::surfaceChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void
.end method

.method public whitelist surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 202
    const-string v0, "SECCAM-API"

    const-string v1, "SecureSurface::assignPreviewSurface::surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void
.end method

.method public whitelist surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 6
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 212
    const-string v0, "SECCAM-API"

    const-string v1, "SecureSurface::assignPreviewSurface::surfaceDestroyed - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-static {}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->getInstance()Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$1;->this$0:Lcom/android/qualcomm/qti/seccamapi/SecureSurface;

    iget-object v2, v2, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->previewSurfaceHolder_:Landroid/view/SurfaceHolder;

    .line 214
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    iget-object v3, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$1;->this$0:Lcom/android/qualcomm/qti/seccamapi/SecureSurface;

    iget-object v3, v3, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->captureSurfaceInfo_:Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;

    .line 213
    invoke-virtual {v1, v2, v3}, Lcom/android/qualcomm/qti/seccamapi/SecCamServiceClient;->releasePreviewSurface(Landroid/view/Surface;Lcom/android/qualcomm/qti/seccamapi/SecureSurface$SurfaceInfo;)Z

    .line 216
    const-wide/16 v1, 0xc8

    :try_start_1c
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_1f} :catch_20

    .line 219
    goto :goto_37

    .line 217
    :catch_20
    move-exception v1

    .line 218
    .local v1, "ex":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecureSurface::assignPreviewSurface::surfaceDestroyed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    .end local v1    # "ex":Ljava/lang/InterruptedException;
    :goto_37
    iget-object v1, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$1;->this$0:Lcom/android/qualcomm/qti/seccamapi/SecureSurface;

    iget-object v1, v1, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->previewSurfaceHolder_:Landroid/view/SurfaceHolder;

    iget-object v2, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$1;->this$0:Lcom/android/qualcomm/qti/seccamapi/SecureSurface;

    invoke-static {v2}, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->-$$Nest$fgetpreviewSerfaceCallback_(Lcom/android/qualcomm/qti/seccamapi/SecureSurface;)Landroid/view/SurfaceHolder$Callback;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 221
    iget-object v1, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$1;->this$0:Lcom/android/qualcomm/qti/seccamapi/SecureSurface;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/qualcomm/qti/seccamapi/SecureSurface;->previewSurfaceHolder_:Landroid/view/SurfaceHolder;

    .line 222
    const-string v1, "SecureSurface::assignPreviewSurface::surfaceDestroyed - Done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return-void
.end method
