.class public final Landroid/app/GameModeConfiguration;
.super Ljava/lang/Object;
.source "GameModeConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/GameModeConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/GameModeConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FPS_OVERRIDE_NONE:I


# instance fields
.field private final blacklist mFpsOverride:I

.field private final blacklist mScalingFactor:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFpsOverride(Landroid/app/GameModeConfiguration;)I
    .registers 1

    iget p0, p0, Landroid/app/GameModeConfiguration;->mFpsOverride:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScalingFactor(Landroid/app/GameModeConfiguration;)F
    .registers 1

    iget p0, p0, Landroid/app/GameModeConfiguration;->mScalingFactor:F

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Landroid/app/GameModeConfiguration$1;

    invoke-direct {v0}, Landroid/app/GameModeConfiguration$1;-><init>()V

    sput-object v0, Landroid/app/GameModeConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(FI)V
    .registers 3

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput p1, p0, Landroid/app/GameModeConfiguration;->mScalingFactor:F

    .line 132
    iput p2, p0, Landroid/app/GameModeConfiguration;->mFpsOverride:I

    .line 133
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/GameModeConfiguration;->mScalingFactor:F

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/app/GameModeConfiguration;->mFpsOverride:I

    .line 138
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 167
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 168
    return v0

    .line 170
    :cond_4
    instance-of v1, p1, Landroid/app/GameModeConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 171
    return v2

    .line 173
    :cond_a
    check-cast p1, Landroid/app/GameModeConfiguration;

    .line 174
    iget v1, p1, Landroid/app/GameModeConfiguration;->mFpsOverride:I

    iget v3, p0, Landroid/app/GameModeConfiguration;->mFpsOverride:I

    if-ne v1, v3, :cond_1b

    iget p1, p1, Landroid/app/GameModeConfiguration;->mScalingFactor:F

    iget v1, p0, Landroid/app/GameModeConfiguration;->mScalingFactor:F

    cmpl-float p1, p1, v1

    if-nez p1, :cond_1b

    goto :goto_1c

    :cond_1b
    move v0, v2

    :goto_1c
    return v0
.end method

.method public whitelist getFpsOverride()I
    .registers 2

    .line 162
    iget v0, p0, Landroid/app/GameModeConfiguration;->mFpsOverride:I

    return v0
.end method

.method public whitelist getScalingFactor()F
    .registers 2

    .line 155
    iget v0, p0, Landroid/app/GameModeConfiguration;->mScalingFactor:F

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 180
    nop

    .line 181
    const/16 v0, 0xd9

    iget v1, p0, Landroid/app/GameModeConfiguration;->mFpsOverride:I

    add-int/2addr v0, v1

    .line 182
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/app/GameModeConfiguration;->mScalingFactor:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 183
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 147
    iget p2, p0, Landroid/app/GameModeConfiguration;->mScalingFactor:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 148
    iget p2, p0, Landroid/app/GameModeConfiguration;->mFpsOverride:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    return-void
.end method
