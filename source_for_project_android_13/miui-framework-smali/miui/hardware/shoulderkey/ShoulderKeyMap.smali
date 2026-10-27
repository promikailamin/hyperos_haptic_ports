.class public Lmiui/hardware/shoulderkey/ShoulderKeyMap;
.super Ljava/lang/Object;
.source "ShoulderKeyMap.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/hardware/shoulderkey/ShoulderKeyMap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist KEY_DOWN_CENTER_X:Ljava/lang/String;

.field private final blacklist KEY_DOWN_CENTER_Y:Ljava/lang/String;

.field private final blacklist KEY_SEPARATEMAPPING:Ljava/lang/String;

.field private final blacklist KEY_UP_CENTER_X:Ljava/lang/String;

.field private final blacklist KEY_UP_CENTER_Y:Ljava/lang/String;

.field private blacklist mCenterX:F

.field private blacklist mCenterY:F

.field private blacklist mDownCenterX:F

.field private blacklist mDownCenterY:F

.field private blacklist mExtra:Landroid/os/Bundle;

.field private blacklist mIsSeparateMapping:Z

.field private blacklist mUpCenterX:F

.field private blacklist mUpCenterY:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 64
    new-instance v0, Lmiui/hardware/shoulderkey/ShoulderKeyMap$1;

    invoke-direct {v0}, Lmiui/hardware/shoulderkey/ShoulderKeyMap$1;-><init>()V

    sput-object v0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(FF)V
    .registers 6
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "downCenterX"

    iput-object v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->KEY_DOWN_CENTER_X:Ljava/lang/String;

    .line 12
    const-string v0, "downCenterY"

    iput-object v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->KEY_DOWN_CENTER_Y:Ljava/lang/String;

    .line 13
    const-string v0, "upCenterX"

    iput-object v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->KEY_UP_CENTER_X:Ljava/lang/String;

    .line 14
    const-string v0, "upCenterY"

    iput-object v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->KEY_UP_CENTER_Y:Ljava/lang/String;

    .line 15
    const-string v0, "isSeparateMapping"

    iput-object v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->KEY_SEPARATEMAPPING:Ljava/lang/String;

    .line 24
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mIsSeparateMapping:Z

    .line 42
    iput p1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mCenterX:F

    .line 43
    iput p2, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mCenterY:F

    .line 44
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mExtra:Landroid/os/Bundle;

    .line 45
    iput-boolean v1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mIsSeparateMapping:Z

    .line 46
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    return-void
.end method

.method public constructor blacklist <init>(FFFF)V
    .registers 12
    .param p1, "downCenterX"    # F
    .param p2, "downCenterY"    # F
    .param p3, "upCenterX"    # F
    .param p4, "upCenterY"    # F

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "downCenterX"

    iput-object v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->KEY_DOWN_CENTER_X:Ljava/lang/String;

    .line 12
    const-string v1, "downCenterY"

    iput-object v1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->KEY_DOWN_CENTER_Y:Ljava/lang/String;

    .line 13
    const-string v2, "upCenterX"

    iput-object v2, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->KEY_UP_CENTER_X:Ljava/lang/String;

    .line 14
    const-string v3, "upCenterY"

    iput-object v3, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->KEY_UP_CENTER_Y:Ljava/lang/String;

    .line 15
    const-string v4, "isSeparateMapping"

    iput-object v4, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->KEY_SEPARATEMAPPING:Ljava/lang/String;

    .line 24
    const/4 v5, 0x0

    iput-boolean v5, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mIsSeparateMapping:Z

    .line 50
    iput p1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mDownCenterX:F

    .line 51
    iput p2, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mDownCenterY:F

    .line 52
    iput p3, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mUpCenterX:F

    .line 53
    iput p4, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mUpCenterY:F

    .line 54
    const/4 v5, 0x1

    iput-boolean v5, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mIsSeparateMapping:Z

    .line 56
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iput-object v6, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mExtra:Landroid/os/Bundle;

    .line 57
    invoke-virtual {v6, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 58
    iget-object v4, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v4, v0, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 59
    iget-object v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 60
    iget-object v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 61
    iget-object v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 62
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "downCenterX"

    iput-object v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->KEY_DOWN_CENTER_X:Ljava/lang/String;

    .line 12
    const-string v1, "downCenterY"

    iput-object v1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->KEY_DOWN_CENTER_Y:Ljava/lang/String;

    .line 13
    const-string v2, "upCenterX"

    iput-object v2, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->KEY_UP_CENTER_X:Ljava/lang/String;

    .line 14
    const-string v3, "upCenterY"

    iput-object v3, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->KEY_UP_CENTER_Y:Ljava/lang/String;

    .line 15
    const-string v4, "isSeparateMapping"

    iput-object v4, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->KEY_SEPARATEMAPPING:Ljava/lang/String;

    .line 24
    const/4 v5, 0x0

    iput-boolean v5, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mIsSeparateMapping:Z

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    iput v6, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mCenterX:F

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    iput v6, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mCenterY:F

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v6

    iput-object v6, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mExtra:Landroid/os/Bundle;

    .line 32
    invoke-virtual {v6, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mIsSeparateMapping:Z

    .line 33
    if-eqz v4, :cond_54

    .line 34
    iget-object v4, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mDownCenterX:F

    .line 35
    iget-object v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mDownCenterY:F

    .line 36
    iget-object v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mUpCenterX:F

    .line 37
    iget-object v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mUpCenterY:F

    .line 39
    :cond_54
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCenterX()F
    .registers 2

    .line 82
    iget v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mCenterX:F

    return v0
.end method

.method public blacklist getCenterY()F
    .registers 2

    .line 86
    iget v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mCenterY:F

    return v0
.end method

.method public blacklist getDownCenterX()F
    .registers 2

    .line 94
    iget v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mDownCenterX:F

    return v0
.end method

.method public blacklist getDownCenterY()F
    .registers 2

    .line 98
    iget v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mDownCenterY:F

    return v0
.end method

.method public blacklist getExtra()Landroid/os/Bundle;
    .registers 2

    .line 90
    iget-object v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mExtra:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getUpCenterX()F
    .registers 2

    .line 102
    iget v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mUpCenterX:F

    return v0
.end method

.method public blacklist getUpCenterY()F
    .registers 2

    .line 106
    iget v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mUpCenterY:F

    return v0
.end method

.method public blacklist isIsSeparateMapping()Z
    .registers 2

    .line 110
    iget-boolean v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mIsSeparateMapping:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShoulderKeyMap{centerX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mCenterX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", centerY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mCenterY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExtra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updatePosition(FF)V
    .registers 3
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F

    .line 77
    iput p1, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mCenterX:F

    .line 78
    iput p2, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mCenterY:F

    .line 79
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 130
    iget v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mCenterX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 131
    iget v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mCenterY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 132
    iget-object v0, p0, Lmiui/hardware/shoulderkey/ShoulderKeyMap;->mExtra:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 133
    return-void
.end method
