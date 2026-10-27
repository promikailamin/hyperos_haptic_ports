.class public Landroid/hardware/input/KeyGlyphMap$KeyCombination;
.super Ljava/lang/Object;
.source "KeyGlyphMap.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/KeyGlyphMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyCombination"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/KeyGlyphMap$KeyCombination;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mKeycode:I

.field private final blacklist mModifierState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 124
    new-instance v0, Landroid/hardware/input/KeyGlyphMap$KeyCombination$1;

    invoke-direct {v0}, Landroid/hardware/input/KeyGlyphMap$KeyCombination$1;-><init>()V

    sput-object v0, Landroid/hardware/input/KeyGlyphMap$KeyCombination;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 3

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput p1, p0, Landroid/hardware/input/KeyGlyphMap$KeyCombination;->mModifierState:I

    .line 117
    iput p2, p0, Landroid/hardware/input/KeyGlyphMap$KeyCombination;->mKeycode:I

    .line 118
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroid/hardware/input/KeyGlyphMap$KeyCombination;-><init>(II)V

    .line 122
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 157
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 158
    :cond_4
    instance-of v1, p1, Landroid/hardware/input/KeyGlyphMap$KeyCombination;

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    check-cast p1, Landroid/hardware/input/KeyGlyphMap$KeyCombination;

    .line 159
    iget v1, p0, Landroid/hardware/input/KeyGlyphMap$KeyCombination;->mModifierState:I

    iget v3, p1, Landroid/hardware/input/KeyGlyphMap$KeyCombination;->mModifierState:I

    if-ne v1, v3, :cond_18

    iget v1, p0, Landroid/hardware/input/KeyGlyphMap$KeyCombination;->mKeycode:I

    iget p1, p1, Landroid/hardware/input/KeyGlyphMap$KeyCombination;->mKeycode:I

    if-ne v1, p1, :cond_18

    goto :goto_19

    :cond_18
    move v0, v2

    :goto_19
    return v0

    .line 158
    :cond_1a
    return v2
.end method

.method public blacklist getKeycode()I
    .registers 2

    .line 141
    iget v0, p0, Landroid/hardware/input/KeyGlyphMap$KeyCombination;->mKeycode:I

    return v0
.end method

.method public blacklist getModifierState()I
    .registers 2

    .line 137
    iget v0, p0, Landroid/hardware/input/KeyGlyphMap$KeyCombination;->mModifierState:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 164
    iget v0, p0, Landroid/hardware/input/KeyGlyphMap$KeyCombination;->mModifierState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/KeyGlyphMap$KeyCombination;->mKeycode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 151
    iget p2, p0, Landroid/hardware/input/KeyGlyphMap$KeyCombination;->mModifierState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget p2, p0, Landroid/hardware/input/KeyGlyphMap$KeyCombination;->mKeycode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    return-void
.end method
