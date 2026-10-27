.class public Landroid/sizecompat/AspectRatioInfo$Builder;
.super Ljava/lang/Object;
.source "AspectRatioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sizecompat/AspectRatioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public blacklist mApplicationName:Ljava/lang/String;

.field public blacklist mAspectRatio:F

.field public blacklist mGravity:I

.field public blacklist mPkgName:Ljava/lang/String;

.field private blacklist mScaleMode:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmScaleMode(Landroid/sizecompat/AspectRatioInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/sizecompat/AspectRatioInfo$Builder;->mScaleMode:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const-string v0, ""

    iput-object v0, p0, Landroid/sizecompat/AspectRatioInfo$Builder;->mPkgName:Ljava/lang/String;

    .line 119
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/sizecompat/AspectRatioInfo$Builder;->mAspectRatio:F

    .line 120
    iput-object v0, p0, Landroid/sizecompat/AspectRatioInfo$Builder;->mApplicationName:Ljava/lang/String;

    .line 122
    const/16 v0, 0x11

    iput v0, p0, Landroid/sizecompat/AspectRatioInfo$Builder;->mGravity:I

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Landroid/sizecompat/AspectRatioInfo$Builder;->mScaleMode:I

    .line 127
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/sizecompat/AspectRatioInfo;
    .registers 2

    .line 156
    new-instance v0, Landroid/sizecompat/AspectRatioInfo;

    invoke-direct {v0, p0}, Landroid/sizecompat/AspectRatioInfo;-><init>(Landroid/sizecompat/AspectRatioInfo$Builder;)V

    return-object v0
.end method

.method public blacklist setApplicationName(Ljava/lang/String;)Landroid/sizecompat/AspectRatioInfo$Builder;
    .registers 2
    .param p1, "applicationName"    # Ljava/lang/String;

    .line 135
    iput-object p1, p0, Landroid/sizecompat/AspectRatioInfo$Builder;->mApplicationName:Ljava/lang/String;

    .line 136
    return-object p0
.end method

.method public blacklist setAspectRatio(Ljava/lang/Float;)Landroid/sizecompat/AspectRatioInfo$Builder;
    .registers 3
    .param p1, "aspectRatio"    # Ljava/lang/Float;

    .line 140
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Landroid/sizecompat/AspectRatioInfo$Builder;->mAspectRatio:F

    .line 141
    return-object p0
.end method

.method public blacklist setGravity(I)Landroid/sizecompat/AspectRatioInfo$Builder;
    .registers 2
    .param p1, "gravity"    # I

    .line 145
    iput p1, p0, Landroid/sizecompat/AspectRatioInfo$Builder;->mGravity:I

    .line 146
    return-object p0
.end method

.method public blacklist setPackageName(Ljava/lang/String;)Landroid/sizecompat/AspectRatioInfo$Builder;
    .registers 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 130
    iput-object p1, p0, Landroid/sizecompat/AspectRatioInfo$Builder;->mPkgName:Ljava/lang/String;

    .line 131
    return-object p0
.end method

.method public blacklist setScaleMode(I)Landroid/sizecompat/AspectRatioInfo$Builder;
    .registers 2
    .param p1, "scaleMode"    # I

    .line 150
    iput p1, p0, Landroid/sizecompat/AspectRatioInfo$Builder;->mScaleMode:I

    .line 151
    return-object p0
.end method
