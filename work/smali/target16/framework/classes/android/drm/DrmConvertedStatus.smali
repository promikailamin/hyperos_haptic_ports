.class public Landroid/drm/DrmConvertedStatus;
.super Ljava/lang/Object;
.source "DrmConvertedStatus.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist STATUS_ERROR:I = 0x3

.field public static final whitelist STATUS_INPUTDATA_ERROR:I = 0x2

.field public static final whitelist STATUS_OK:I = 0x1


# instance fields
.field public final whitelist convertedData:[B

.field public final whitelist offset:I

.field public final whitelist statusCode:I


# direct methods
.method public constructor whitelist <init>(I[BI)V
    .registers 5

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-direct {p0, p1}, Landroid/drm/DrmConvertedStatus;->isValidStatusCode(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 75
    iput p1, p0, Landroid/drm/DrmConvertedStatus;->statusCode:I

    .line 76
    iput-object p2, p0, Landroid/drm/DrmConvertedStatus;->convertedData:[B

    .line 77
    iput p3, p0, Landroid/drm/DrmConvertedStatus;->offset:I

    .line 78
    return-void

    .line 72
    :cond_10
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported status code: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private greylist-max-o isValidStatusCode(I)Z
    .registers 4

    .line 81
    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    const/4 v1, 0x2

    if-eq p1, v1, :cond_b

    const/4 v1, 0x3

    if-ne p1, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :cond_b
    :goto_b
    return v0
.end method
