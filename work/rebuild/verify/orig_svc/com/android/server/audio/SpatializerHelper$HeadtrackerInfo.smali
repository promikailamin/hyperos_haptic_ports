.class public Lcom/android/server/audio/SpatializerHelper$HeadtrackerInfo;
.super Ljava/lang/Object;
.source "SpatializerHelper.java"


# instance fields
.field public final mVersion:I


# direct methods
.method public constructor <init>(Landroid/hardware/Sensor;)V
    .registers 2

    .line 1739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1740
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getVersion()I

    move-result p1

    iput p1, p0, Lcom/android/server/audio/SpatializerHelper$HeadtrackerInfo;->mVersion:I

    return-void
.end method


# virtual methods
.method public getMajorVersion()I
    .registers 2

    .line 1743
    iget p0, p0, Lcom/android/server/audio/SpatializerHelper$HeadtrackerInfo;->mVersion:I

    const/high16 v0, -0x1000000

    and-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x18

    return p0
.end method
