.class public Landroid/gamepad/BsGameKeyMap;
.super Ljava/lang/Object;
.source "BsGameKeyMap.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/gamepad/BsGameKeyMap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist centerX:F

.field private blacklist centerY:F

.field private blacklist extra:I

.field private blacklist radius:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Landroid/gamepad/BsGameKeyMap$1;

    invoke-direct {v0}, Landroid/gamepad/BsGameKeyMap$1;-><init>()V

    sput-object v0, Landroid/gamepad/BsGameKeyMap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(FFFI)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "radius"    # F
    .param p4, "extra"    # I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Landroid/gamepad/BsGameKeyMap;->centerX:F

    .line 21
    iput p2, p0, Landroid/gamepad/BsGameKeyMap;->centerY:F

    .line 22
    iput p3, p0, Landroid/gamepad/BsGameKeyMap;->radius:F

    .line 23
    iput p4, p0, Landroid/gamepad/BsGameKeyMap;->extra:I

    .line 24
    return-void
.end method

.method protected constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/gamepad/BsGameKeyMap;->centerX:F

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/gamepad/BsGameKeyMap;->centerY:F

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/gamepad/BsGameKeyMap;->radius:F

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/gamepad/BsGameKeyMap;->extra:I

    .line 17
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCenterX()F
    .registers 2

    .line 27
    iget v0, p0, Landroid/gamepad/BsGameKeyMap;->centerX:F

    return v0
.end method

.method public whitelist getCenterY()F
    .registers 2

    .line 31
    iget v0, p0, Landroid/gamepad/BsGameKeyMap;->centerY:F

    return v0
.end method

.method public whitelist getExtra()I
    .registers 2

    .line 39
    iget v0, p0, Landroid/gamepad/BsGameKeyMap;->extra:I

    return v0
.end method

.method public whitelist getRadius()F
    .registers 2

    .line 35
    iget v0, p0, Landroid/gamepad/BsGameKeyMap;->radius:F

    return v0
.end method

.method public whitelist setExtra(I)V
    .registers 2
    .param p1, "extra"    # I

    .line 43
    iput p1, p0, Landroid/gamepad/BsGameKeyMap;->extra:I

    .line 44
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/gamepad/BsGameKeyMap;->centerX:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/gamepad/BsGameKeyMap;->centerY:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/gamepad/BsGameKeyMap;->radius:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/gamepad/BsGameKeyMap;->extra:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "Pos {x = %f, y = %f, r = %f, extra = %d}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 69
    iget v0, p0, Landroid/gamepad/BsGameKeyMap;->centerX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 70
    iget v0, p0, Landroid/gamepad/BsGameKeyMap;->centerY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 71
    iget v0, p0, Landroid/gamepad/BsGameKeyMap;->radius:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 72
    iget v0, p0, Landroid/gamepad/BsGameKeyMap;->extra:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    return-void
.end method
