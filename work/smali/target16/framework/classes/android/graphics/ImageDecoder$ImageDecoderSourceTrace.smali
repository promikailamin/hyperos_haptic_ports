.class final Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;
.super Ljava/lang/Object;
.source "ImageDecoder.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImageDecoderSourceTrace"
.end annotation


# instance fields
.field private final blacklist mResourceTracingEnabled:Z


# direct methods
.method constructor blacklist <init>(Landroid/graphics/ImageDecoder;)V
    .registers 5

    .line 2228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2229
    const-wide/16 v0, 0x2000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iput-boolean v2, p0, Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;->mResourceTracingEnabled:Z

    .line 2230
    iget-boolean v2, p0, Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;->mResourceTracingEnabled:Z

    if-eqz v2, :cond_16

    .line 2231
    invoke-static {p1}, Landroid/graphics/ImageDecoder;->-$$Nest$smdescribeDecoderForTrace(Landroid/graphics/ImageDecoder;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2233
    :cond_16
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 2237
    iget-boolean v0, p0, Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;->mResourceTracingEnabled:Z

    if-eqz v0, :cond_9

    .line 2238
    const-wide/16 v0, 0x2000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2240
    :cond_9
    return-void
.end method
