.class Landroid/app/ActivityOptions$ActivityOptionsInjector;
.super Ljava/lang/Object;
.source "ActivityOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActivityOptionsInjector"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ActivityOptions$ActivityOptionsInjector;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mFreeformScale:F

.field private blacklist mIsNormalFreeForm:Z

.field private blacklist mMiniFreeformMode:Z

.field private blacklist mNeedAnimation:Z

.field private blacklist mUseCustomLaunchBounds:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 3065
    new-instance v0, Landroid/app/ActivityOptions$ActivityOptionsInjector$1;

    invoke-direct {v0}, Landroid/app/ActivityOptions$ActivityOptionsInjector$1;-><init>()V

    sput-object v0, Landroid/app/ActivityOptions$ActivityOptionsInjector;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 2999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2993
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/app/ActivityOptions$ActivityOptionsInjector;->mFreeformScale:F

    .line 2994
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityOptions$ActivityOptionsInjector;->mMiniFreeformMode:Z

    .line 2995
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/ActivityOptions$ActivityOptionsInjector;->mNeedAnimation:Z

    .line 2996
    iput-boolean v0, p0, Landroid/app/ActivityOptions$ActivityOptionsInjector;->mUseCustomLaunchBounds:Z

    .line 2997
    iput-boolean v1, p0, Landroid/app/ActivityOptions$ActivityOptionsInjector;->mIsNormalFreeForm:Z

    .line 3000
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 3044
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getFreeformAnimation()Z
    .registers 2

    .line 3016
    iget-boolean v0, p0, Landroid/app/ActivityOptions$ActivityOptionsInjector;->mNeedAnimation:Z

    return v0
.end method

.method public blacklist getFreeformScale()F
    .registers 2

    .line 3007
    iget v0, p0, Landroid/app/ActivityOptions$ActivityOptionsInjector;->mFreeformScale:F

    return v0
.end method

.method public blacklist getMiniFreeformMode()Z
    .registers 2

    .line 3033
    iget-boolean v0, p0, Landroid/app/ActivityOptions$ActivityOptionsInjector;->mMiniFreeformMode:Z

    return v0
.end method

.method public blacklist getUseCustomLaunchBounds()Z
    .registers 2

    .line 3029
    iget-boolean v0, p0, Landroid/app/ActivityOptions$ActivityOptionsInjector;->mUseCustomLaunchBounds:Z

    return v0
.end method

.method public blacklist isNormalFreeForm()Z
    .registers 2

    .line 3036
    iget-boolean v0, p0, Landroid/app/ActivityOptions$ActivityOptionsInjector;->mIsNormalFreeForm:Z

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 3048
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/ActivityOptions$ActivityOptionsInjector;->mFreeformScale:F

    .line 3049
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions$ActivityOptionsInjector;->mMiniFreeformMode:Z

    .line 3050
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions$ActivityOptionsInjector;->mNeedAnimation:Z

    .line 3051
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions$ActivityOptionsInjector;->mUseCustomLaunchBounds:Z

    .line 3052
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityOptions$ActivityOptionsInjector;->mIsNormalFreeForm:Z

    .line 3053
    return-void
.end method

.method public blacklist setFreeformAnimation(Z)V
    .registers 2
    .param p1, "needAnimation"    # Z

    .line 3012
    iput-boolean p1, p0, Landroid/app/ActivityOptions$ActivityOptionsInjector;->mNeedAnimation:Z

    .line 3013
    return-void
.end method

.method public blacklist setFreeformScale(F)V
    .registers 2
    .param p1, "freeformScale"    # F

    .line 3003
    iput p1, p0, Landroid/app/ActivityOptions$ActivityOptionsInjector;->mFreeformScale:F

    .line 3004
    return-void
.end method

.method public blacklist setMiniFreeformMode(Z)V
    .registers 2
    .param p1, "miniFreeformMode"    # Z

    .line 3021
    iput-boolean p1, p0, Landroid/app/ActivityOptions$ActivityOptionsInjector;->mMiniFreeformMode:Z

    .line 3022
    return-void
.end method

.method public blacklist setNormalFreeForm(Z)V
    .registers 2
    .param p1, "isNormalFreeForm"    # Z

    .line 3039
    iput-boolean p1, p0, Landroid/app/ActivityOptions$ActivityOptionsInjector;->mIsNormalFreeForm:Z

    .line 3040
    return-void
.end method

.method public blacklist setUseCustomLaunchBounds(Z)V
    .registers 2
    .param p1, "useCustomLaunchBounds"    # Z

    .line 3025
    iput-boolean p1, p0, Landroid/app/ActivityOptions$ActivityOptionsInjector;->mUseCustomLaunchBounds:Z

    .line 3026
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 3080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityOptionsInjector={freeformScale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityOptions$ActivityOptionsInjector;->mFreeformScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", miniFreeformMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/ActivityOptions$ActivityOptionsInjector;->mMiniFreeformMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", needAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/ActivityOptions$ActivityOptionsInjector;->mNeedAnimation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useCustomLaunchBounds:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/app/ActivityOptions$ActivityOptionsInjector;->mUseCustomLaunchBounds:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3057
    iget v0, p0, Landroid/app/ActivityOptions$ActivityOptionsInjector;->mFreeformScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3058
    iget-boolean v0, p0, Landroid/app/ActivityOptions$ActivityOptionsInjector;->mMiniFreeformMode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3059
    iget-boolean v0, p0, Landroid/app/ActivityOptions$ActivityOptionsInjector;->mNeedAnimation:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3060
    iget-boolean v0, p0, Landroid/app/ActivityOptions$ActivityOptionsInjector;->mUseCustomLaunchBounds:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3061
    iget-boolean v0, p0, Landroid/app/ActivityOptions$ActivityOptionsInjector;->mIsNormalFreeForm:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3062
    return-void
.end method
