.class public final Landroid/hardware/input/KeyboardLayoutSelectionResult;
.super Ljava/lang/Object;
.source "KeyboardLayoutSelectionResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/KeyboardLayoutSelectionResult$LayoutSelectionCriteria;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/KeyboardLayoutSelectionResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FAILED:Landroid/hardware/input/KeyboardLayoutSelectionResult;

.field public static final blacklist LAYOUT_SELECTION_CRITERIA_DEFAULT:I = 0x4

.field public static final blacklist LAYOUT_SELECTION_CRITERIA_DEVICE:I = 0x2

.field public static final blacklist LAYOUT_SELECTION_CRITERIA_UNSPECIFIED:I = 0x0

.field public static final blacklist LAYOUT_SELECTION_CRITERIA_USER:I = 0x1

.field public static final blacklist LAYOUT_SELECTION_CRITERIA_VIRTUAL_KEYBOARD:I = 0x3


# instance fields
.field private final blacklist mLayoutDescriptor:Ljava/lang/String;

.field private final blacklist mSelectionCriteria:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 60
    new-instance v0, Landroid/hardware/input/KeyboardLayoutSelectionResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/hardware/input/KeyboardLayoutSelectionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->FAILED:Landroid/hardware/input/KeyboardLayoutSelectionResult;

    .line 235
    new-instance v0, Landroid/hardware/input/KeyboardLayoutSelectionResult$1;

    invoke-direct {v0}, Landroid/hardware/input/KeyboardLayoutSelectionResult$1;-><init>()V

    sput-object v0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 8

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 210
    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_d

    const/4 v0, 0x0

    goto :goto_11

    :cond_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 211
    :goto_11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 213
    iput-object v0, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mLayoutDescriptor:Ljava/lang/String;

    .line 214
    iput p1, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    .line 216
    iget p1, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    if-eqz p1, :cond_85

    iget p1, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    if-eq p1, v1, :cond_85

    iget p1, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_85

    iget p1, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    const/4 v2, 0x3

    if-eq p1, v2, :cond_85

    iget p1, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    const/4 v3, 0x4

    if-ne p1, v3, :cond_31

    goto :goto_85

    .line 221
    :cond_31
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selectionCriteria was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but must be one of: LAYOUT_SELECTION_CRITERIA_UNSPECIFIED("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), LAYOUT_SELECTION_CRITERIA_USER("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "), LAYOUT_SELECTION_CRITERIA_DEVICE("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), LAYOUT_SELECTION_CRITERIA_VIRTUAL_KEYBOARD("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), LAYOUT_SELECTION_CRITERIA_DEFAULT("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 232
    :cond_85
    :goto_85
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 8

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mLayoutDescriptor:Ljava/lang/String;

    .line 114
    iput p2, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    .line 116
    iget p1, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    if-eqz p1, :cond_74

    iget p1, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_74

    iget p1, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_74

    iget p1, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    const/4 v1, 0x3

    if-eq p1, v1, :cond_74

    iget p1, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    const/4 v2, 0x4

    if-ne p1, v2, :cond_20

    goto :goto_74

    .line 121
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectionCriteria was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but must be one of: LAYOUT_SELECTION_CRITERIA_UNSPECIFIED("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), LAYOUT_SELECTION_CRITERIA_USER("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v3, "), LAYOUT_SELECTION_CRITERIA_DEVICE("

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "), LAYOUT_SELECTION_CRITERIA_VIRTUAL_KEYBOARD("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "), LAYOUT_SELECTION_CRITERIA_DEFAULT("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 132
    :cond_74
    :goto_74
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 254
    return-void
.end method

.method public static blacklist layoutSelectionCriteriaToString(I)Ljava/lang/String;
    .registers 1

    .line 94
    packed-switch p0, :pswitch_data_18

    .line 105
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 104
    :pswitch_8
    const-string p0, "LAYOUT_SELECTION_CRITERIA_DEFAULT"

    return-object p0

    .line 102
    :pswitch_b
    const-string p0, "LAYOUT_SELECTION_CRITERIA_VIRTUAL_KEYBOARD"

    return-object p0

    .line 100
    :pswitch_e
    const-string p0, "LAYOUT_SELECTION_CRITERIA_DEVICE"

    return-object p0

    .line 98
    :pswitch_11
    const-string p0, "LAYOUT_SELECTION_CRITERIA_USER"

    return-object p0

    .line 96
    :pswitch_14
    const-string p0, "LAYOUT_SELECTION_CRITERIA_UNSPECIFIED"

    return-object p0

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 163
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 164
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_27

    .line 166
    :cond_12
    check-cast p1, Landroid/hardware/input/KeyboardLayoutSelectionResult;

    .line 168
    iget-object v2, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mLayoutDescriptor:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mLayoutDescriptor:Ljava/lang/String;

    .line 169
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget v2, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    iget p1, p1, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    if-ne v2, p1, :cond_25

    goto :goto_26

    :cond_25
    move v0, v1

    .line 168
    :goto_26
    return v0

    .line 164
    :cond_27
    :goto_27
    return v1
.end method

.method public blacklist getLayoutDescriptor()Ljava/lang/String;
    .registers 2

    .line 136
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mLayoutDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSelectionCriteria()I
    .registers 2

    .line 141
    iget v0, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 179
    nop

    .line 180
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mLayoutDescriptor:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 181
    mul-int/2addr v0, v1

    iget v1, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    add-int/2addr v0, v1

    .line 182
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyboardLayoutSelectionResult { layoutDescriptor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mLayoutDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", selectionCriteria = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    .line 152
    invoke-static {v1}, Landroid/hardware/input/KeyboardLayoutSelectionResult;->layoutSelectionCriteriaToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 191
    nop

    .line 192
    iget-object p2, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mLayoutDescriptor:Ljava/lang/String;

    if-eqz p2, :cond_8

    const/4 p2, 0x1

    int-to-byte p2, p2

    goto :goto_9

    :cond_8
    const/4 p2, 0x0

    .line 193
    :goto_9
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 194
    iget-object p2, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mLayoutDescriptor:Ljava/lang/String;

    if-eqz p2, :cond_15

    iget-object p2, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mLayoutDescriptor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    :cond_15
    iget p2, p0, Landroid/hardware/input/KeyboardLayoutSelectionResult;->mSelectionCriteria:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    return-void
.end method
