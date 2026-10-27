.class public final Landroid/companion/ActionResult;
.super Ljava/lang/Object;
.source "ActionResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/ActionResult$Builder;,
        Landroid/companion/ActionResult$ResultCode;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/ActionResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist RESULT_FAILED:I = 0x1

.field public static final blacklist RESULT_SUCCESS:I


# instance fields
.field private final blacklist mActionRequest:Landroid/companion/ActionRequest;

.field private final blacklist mResultCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 111
    new-instance v0, Landroid/companion/ActionResult$1;

    invoke-direct {v0}, Landroid/companion/ActionResult$1;-><init>()V

    sput-object v0, Landroid/companion/ActionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/companion/ActionRequest;I)V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p2, p0, Landroid/companion/ActionResult;->mResultCode:I

    .line 59
    iput-object p1, p0, Landroid/companion/ActionResult;->mActionRequest:Landroid/companion/ActionRequest;

    .line 60
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/companion/ActionRequest;ILandroid/companion/ActionResult-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/companion/ActionResult;-><init>(Landroid/companion/ActionRequest;I)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/ActionResult;->mResultCode:I

    .line 127
    sget-object v0, Landroid/companion/ActionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/companion/ActionRequest;

    iput-object p1, p0, Landroid/companion/ActionResult;->mActionRequest:Landroid/companion/ActionRequest;

    .line 128
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/companion/ActionResult-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/companion/ActionResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 90
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 91
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_27

    .line 92
    :cond_12
    check-cast p1, Landroid/companion/ActionResult;

    .line 93
    iget v2, p0, Landroid/companion/ActionResult;->mResultCode:I

    iget v3, p1, Landroid/companion/ActionResult;->mResultCode:I

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Landroid/companion/ActionResult;->mActionRequest:Landroid/companion/ActionRequest;

    iget-object p1, p1, Landroid/companion/ActionResult;->mActionRequest:Landroid/companion/ActionRequest;

    .line 94
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_26

    :cond_25
    move v0, v1

    .line 93
    :goto_26
    return v0

    .line 91
    :cond_27
    :goto_27
    return v1
.end method

.method public blacklist getActionRequest()Landroid/companion/ActionRequest;
    .registers 2

    .line 74
    iget-object v0, p0, Landroid/companion/ActionResult;->mActionRequest:Landroid/companion/ActionRequest;

    return-object v0
.end method

.method public blacklist getResultCode()I
    .registers 2

    .line 66
    iget v0, p0, Landroid/companion/ActionResult;->mResultCode:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 99
    iget v0, p0, Landroid/companion/ActionResult;->mResultCode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/ActionResult;->mActionRequest:Landroid/companion/ActionRequest;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionResult{, mActionRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/ActionResult;->mActionRequest:Landroid/companion/ActionRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mResultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/ActionResult;->mResultCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 84
    iget v0, p0, Landroid/companion/ActionResult;->mResultCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget-object v0, p0, Landroid/companion/ActionResult;->mActionRequest:Landroid/companion/ActionRequest;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 86
    return-void
.end method
