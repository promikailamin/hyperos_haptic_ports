.class public final Landroid/content/om/OverlayConstraint;
.super Ljava/lang/Object;
.source "OverlayConstraint.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/om/OverlayConstraint$ConstraintType;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/om/OverlayConstraint;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist TYPE_DEVICE_ID:I = 0x1

.field public static final blacklist TYPE_DISPLAY_ID:I


# instance fields
.field private final blacklist mType:I

.field private final blacklist mValue:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 126
    new-instance v0, Landroid/content/om/OverlayConstraint$1;

    invoke-direct {v0}, Landroid/content/om/OverlayConstraint$1;-><init>()V

    sput-object v0, Landroid/content/om/OverlayConstraint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 4

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x1

    if-eq p1, v0, :cond_11

    if-nez p1, :cond_9

    goto :goto_11

    .line 68
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Type must be either TYPE_DISPLAY_ID or TYPE_DEVICE_ID"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_11
    :goto_11
    if-ltz p2, :cond_18

    .line 74
    iput p1, p0, Landroid/content/om/OverlayConstraint;->mType:I

    .line 75
    iput p2, p0, Landroid/content/om/OverlayConstraint;->mValue:I

    .line 76
    return-void

    .line 72
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Value must be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroid/content/om/OverlayConstraint;-><init>(II)V

    .line 80
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/om/OverlayConstraint-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/om/OverlayConstraint;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist constraintsToString(Ljava/util/List;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayConstraint;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 142
    if-eqz p0, :cond_29

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_29

    .line 145
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 143
    :cond_29
    :goto_29
    const-string p0, "None"

    return-object p0
.end method

.method private static blacklist typeToString(I)Ljava/lang/String;
    .registers 2

    .line 149
    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const-string p0, "DEVICE_ID"

    goto :goto_8

    :cond_6
    const-string p0, "DISPLAY_ID"

    :goto_8
    return-object p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 103
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 104
    :cond_4
    instance-of v1, p1, Landroid/content/om/OverlayConstraint;

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    check-cast p1, Landroid/content/om/OverlayConstraint;

    .line 107
    iget v1, p0, Landroid/content/om/OverlayConstraint;->mType:I

    iget v3, p1, Landroid/content/om/OverlayConstraint;->mType:I

    if-ne v1, v3, :cond_18

    iget v1, p0, Landroid/content/om/OverlayConstraint;->mValue:I

    iget p1, p1, Landroid/content/om/OverlayConstraint;->mValue:I

    if-ne v1, p1, :cond_18

    goto :goto_19

    :cond_18
    move v0, v2

    :goto_19
    return v0

    .line 105
    :cond_1a
    return v2
.end method

.method public blacklist getType()I
    .registers 2

    .line 86
    iget v0, p0, Landroid/content/om/OverlayConstraint;->mType:I

    return v0
.end method

.method public blacklist getValue()I
    .registers 2

    .line 93
    iget v0, p0, Landroid/content/om/OverlayConstraint;->mValue:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 112
    iget v0, p0, Landroid/content/om/OverlayConstraint;->mType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/content/om/OverlayConstraint;->mValue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/om/OverlayConstraint;->mType:I

    invoke-static {v1}, Landroid/content/om/OverlayConstraint;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/om/OverlayConstraint;->mValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 122
    iget p2, p0, Landroid/content/om/OverlayConstraint;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget p2, p0, Landroid/content/om/OverlayConstraint;->mValue:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    return-void
.end method
