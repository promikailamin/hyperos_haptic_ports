.class public final Landroid/media/MediaCodec$CodecException;
.super Ljava/lang/IllegalStateException;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CodecException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodec$CodecException$ReasonCode;
    }
.end annotation


# static fields
.field private static final greylist-max-o ACTION_RECOVERABLE:I = 0x2

.field private static final greylist-max-o ACTION_TRANSIENT:I = 0x1

.field public static final whitelist ERROR_INSUFFICIENT_RESOURCE:I = 0x44c

.field public static final whitelist ERROR_RECLAIMED:I = 0x44d


# instance fields
.field private final greylist-max-o mActionCode:I

.field private final greylist-max-o mDiagnosticInfo:Ljava/lang/String;

.field private final greylist-max-o mErrorCode:I


# direct methods
.method constructor greylist <init>(IILjava/lang/String;)V
    .registers 5

    .line 2854
    invoke-direct {p0, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 2855
    iput p1, p0, Landroid/media/MediaCodec$CodecException;->mErrorCode:I

    .line 2856
    iput p2, p0, Landroid/media/MediaCodec$CodecException;->mActionCode:I

    .line 2859
    if-gez p1, :cond_c

    const-string p2, "neg_"

    goto :goto_e

    :cond_c
    const-string p2, ""

    .line 2860
    :goto_e
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "android.media.MediaCodec.error_"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 2861
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaCodec$CodecException;->mDiagnosticInfo:Ljava/lang/String;

    .line 2862
    return-void
.end method


# virtual methods
.method public whitelist getDiagnosticInfo()Ljava/lang/String;
    .registers 2

    .line 2896
    iget-object v0, p0, Landroid/media/MediaCodec$CodecException;->mDiagnosticInfo:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getErrorCode()I
    .registers 2

    .line 2886
    iget v0, p0, Landroid/media/MediaCodec$CodecException;->mErrorCode:I

    return v0
.end method

.method public whitelist isRecoverable()Z
    .registers 3

    .line 2879
    iget v0, p0, Landroid/media/MediaCodec$CodecException;->mActionCode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist isTransient()Z
    .registers 3

    .line 2870
    iget v0, p0, Landroid/media/MediaCodec$CodecException;->mActionCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method
