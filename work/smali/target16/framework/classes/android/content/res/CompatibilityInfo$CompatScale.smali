.class public final Landroid/content/res/CompatibilityInfo$CompatScale;
.super Ljava/lang/Object;
.source "CompatibilityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/CompatibilityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompatScale"
.end annotation


# instance fields
.field public final blacklist mDensityScaleFactor:F

.field public final blacklist mOverrideDensityDisplayIds:[I

.field public final blacklist mScaleFactor:F


# direct methods
.method public constructor blacklist <init>(F)V
    .registers 2

    .line 998
    invoke-direct {p0, p1, p1}, Landroid/content/res/CompatibilityInfo$CompatScale;-><init>(FF)V

    .line 999
    return-void
.end method

.method public constructor blacklist <init>(FF)V
    .registers 4

    .line 1002
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/content/res/CompatibilityInfo$CompatScale;-><init>(FF[I)V

    .line 1003
    return-void
.end method

.method public constructor blacklist <init>(FF[I)V
    .registers 4

    .line 1006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1007
    iput p1, p0, Landroid/content/res/CompatibilityInfo$CompatScale;->mScaleFactor:F

    .line 1008
    iput p2, p0, Landroid/content/res/CompatibilityInfo$CompatScale;->mDensityScaleFactor:F

    .line 1009
    iput-object p3, p0, Landroid/content/res/CompatibilityInfo$CompatScale;->mOverrideDensityDisplayIds:[I

    .line 1010
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 1014
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1015
    return v0

    .line 1017
    :cond_4
    instance-of v1, p1, Landroid/content/res/CompatibilityInfo$CompatScale;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1018
    return v2

    .line 1021
    :cond_a
    :try_start_a
    check-cast p1, Landroid/content/res/CompatibilityInfo$CompatScale;

    .line 1022
    iget v1, p0, Landroid/content/res/CompatibilityInfo$CompatScale;->mScaleFactor:F

    iget v3, p1, Landroid/content/res/CompatibilityInfo$CompatScale;->mScaleFactor:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_15

    return v2

    .line 1023
    :cond_15
    iget v1, p0, Landroid/content/res/CompatibilityInfo$CompatScale;->mDensityScaleFactor:F

    iget v3, p1, Landroid/content/res/CompatibilityInfo$CompatScale;->mDensityScaleFactor:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_1e

    return v2

    .line 1024
    :cond_1e
    iget-object v1, p0, Landroid/content/res/CompatibilityInfo$CompatScale;->mOverrideDensityDisplayIds:[I

    iget-object p1, p1, Landroid/content/res/CompatibilityInfo$CompatScale;->mOverrideDensityDisplayIds:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1
    :try_end_26
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_26} :catch_2a

    if-nez p1, :cond_29

    .line 1025
    return v2

    .line 1027
    :cond_29
    return v0

    .line 1028
    :catch_2a
    move-exception p1

    .line 1029
    return v2
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 1047
    nop

    .line 1048
    iget v0, p0, Landroid/content/res/CompatibilityInfo$CompatScale;->mScaleFactor:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    .line 1049
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroid/content/res/CompatibilityInfo$CompatScale;->mDensityScaleFactor:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    .line 1050
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroid/content/res/CompatibilityInfo$CompatScale;->mOverrideDensityDisplayIds:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    add-int/2addr v1, v0

    .line 1051
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1035
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1036
    const-string/jumbo v1, "mScaleFactor= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    iget v1, p0, Landroid/content/res/CompatibilityInfo$CompatScale;->mScaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1038
    const-string v1, " mDensityScaleFactor= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    iget v1, p0, Landroid/content/res/CompatibilityInfo$CompatScale;->mDensityScaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1040
    const-string v1, " mOverrideDensityDisplayIds= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    iget-object v1, p0, Landroid/content/res/CompatibilityInfo$CompatScale;->mOverrideDensityDisplayIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
