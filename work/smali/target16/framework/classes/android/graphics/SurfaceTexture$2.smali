.class Landroid/graphics/SurfaceTexture$2;
.super Landroid/os/Handler;
.source "SurfaceTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/SurfaceTexture;->setOnSetFrameRateListener(Landroid/graphics/SurfaceTexture$OnSetFrameRateListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/SurfaceTexture;

.field final synthetic blacklist val$listener:Landroid/graphics/SurfaceTexture$OnSetFrameRateListener;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/SurfaceTexture;Landroid/os/Looper;Landroid/os/Handler$Callback;ZLandroid/graphics/SurfaceTexture$OnSetFrameRateListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 270
    iput-object p1, p0, Landroid/graphics/SurfaceTexture$2;->this$0:Landroid/graphics/SurfaceTexture;

    iput-object p5, p0, Landroid/graphics/SurfaceTexture$2;->val$listener:Landroid/graphics/SurfaceTexture$OnSetFrameRateListener;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 273
    const-string/jumbo v0, "onSetFrameRateHandler"

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 275
    :try_start_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/SurfaceTexture$SetFrameRateArgs;

    .line 276
    iget-object v0, p0, Landroid/graphics/SurfaceTexture$2;->val$listener:Landroid/graphics/SurfaceTexture$OnSetFrameRateListener;

    iget-object v3, p0, Landroid/graphics/SurfaceTexture$2;->this$0:Landroid/graphics/SurfaceTexture;

    iget v4, p1, Landroid/graphics/SurfaceTexture$SetFrameRateArgs;->mFrameRate:F

    iget v5, p1, Landroid/graphics/SurfaceTexture$SetFrameRateArgs;->mCompatibility:I

    iget p1, p1, Landroid/graphics/SurfaceTexture$SetFrameRateArgs;->mChangeFrameRateStrategy:I

    invoke-interface {v0, v3, v4, v5, p1}, Landroid/graphics/SurfaceTexture$OnSetFrameRateListener;->onSetFrameRate(Landroid/graphics/SurfaceTexture;FII)V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_1e

    .line 280
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 281
    nop

    .line 282
    return-void

    .line 280
    :catchall_1e
    move-exception p1

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 281
    throw p1
.end method
