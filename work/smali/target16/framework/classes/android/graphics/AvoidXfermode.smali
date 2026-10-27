.class public Landroid/graphics/AvoidXfermode;
.super Landroid/graphics/Xfermode;
.source "AvoidXfermode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/AvoidXfermode$Mode;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor greylist <init>(IILandroid/graphics/AvoidXfermode$Mode;)V
    .registers 4

    .line 55
    invoke-direct {p0}, Landroid/graphics/Xfermode;-><init>()V

    .line 56
    if-ltz p2, :cond_a

    const/16 p1, 0xff

    if-gt p2, p1, :cond_a

    .line 59
    return-void

    .line 57
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "tolerance must be 0..255"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
