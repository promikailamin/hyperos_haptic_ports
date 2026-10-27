.class public Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameInfo;
.super Ljava/lang/Object;
.source "SecureSurface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/qualcomm/qti/seccamapi/SecureSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameInfo"
.end annotation


# instance fields
.field public blacklist format_:I

.field public blacklist frameNumber_:J

.field public blacklist height_:I

.field public blacklist stride_:I

.field public blacklist timeStamp_:J

.field public blacklist width_:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameInfo;->frameNumber_:J

    .line 51
    iput-wide v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameInfo;->timeStamp_:J

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameInfo;->width_:I

    .line 53
    iput v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameInfo;->height_:I

    .line 54
    iput v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameInfo;->stride_:I

    .line 55
    iput v0, p0, Lcom/android/qualcomm/qti/seccamapi/SecureSurface$FrameInfo;->format_:I

    return-void
.end method
