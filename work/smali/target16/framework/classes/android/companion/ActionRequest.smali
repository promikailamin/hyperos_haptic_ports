.class public final Landroid/companion/ActionRequest;
.super Ljava/lang/Object;
.source "ActionRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/ActionRequest$Builder;,
        Landroid/companion/ActionRequest$RequestAction;,
        Landroid/companion/ActionRequest$Operation;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/ActionRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist OP_ACTIVATE:I = 0x0

.field public static final blacklist OP_DEACTIVATE:I = 0x1

.field public static final blacklist REQUEST_NEARBY_ADVERTISING:I = 0x1

.field public static final blacklist REQUEST_NEARBY_SCANNING:I = 0x0

.field public static final blacklist REQUEST_TRANSPORT:I = 0x2


# instance fields
.field private final blacklist mAction:I

.field private final blacklist mOperation:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 146
    new-instance v0, Landroid/companion/ActionRequest$1;

    invoke-direct {v0}, Landroid/companion/ActionRequest$1;-><init>()V

    sput-object v0, Landroid/companion/ActionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(II)V
    .registers 3

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput p1, p0, Landroid/companion/ActionRequest;->mAction:I

    .line 96
    iput p2, p0, Landroid/companion/ActionRequest;->mOperation:I

    .line 97
    return-void
.end method

.method synthetic constructor blacklist <init>(IILandroid/companion/ActionRequest-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/companion/ActionRequest;-><init>(II)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/companion/ActionRequest;->mAction:I

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/companion/ActionRequest;->mOperation:I

    .line 161
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/companion/ActionRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/companion/ActionRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist actionToString(I)Ljava/lang/String;
    .registers 3

    .line 168
    packed-switch p0, :pswitch_data_20

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_ACTION: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1f

    .line 171
    :pswitch_17
    const-string p0, "REQUEST_TRANSPORT"

    goto :goto_1f

    .line 170
    :pswitch_1a
    const-string p0, "REQUEST_NEARBY_ADVERTISING"

    goto :goto_1f

    .line 169
    :pswitch_1d
    const-string p0, "REQUEST_NEARBY_SCANNING"

    .line 168
    :goto_1f
    return-object p0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 124
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 125
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_23

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_23

    .line 126
    :cond_12
    check-cast p1, Landroid/companion/ActionRequest;

    .line 127
    iget v2, p0, Landroid/companion/ActionRequest;->mAction:I

    iget v3, p1, Landroid/companion/ActionRequest;->mAction:I

    if-ne v2, v3, :cond_21

    iget v2, p0, Landroid/companion/ActionRequest;->mOperation:I

    iget p1, p1, Landroid/companion/ActionRequest;->mOperation:I

    if-ne v2, p1, :cond_21

    goto :goto_22

    :cond_21
    move v0, v1

    :goto_22
    return v0

    .line 125
    :cond_23
    :goto_23
    return v1
.end method

.method public blacklist getAction()I
    .registers 2

    .line 104
    iget v0, p0, Landroid/companion/ActionRequest;->mAction:I

    return v0
.end method

.method public blacklist getOperation()I
    .registers 2

    .line 111
    iget v0, p0, Landroid/companion/ActionRequest;->mOperation:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 132
    iget v0, p0, Landroid/companion/ActionRequest;->mAction:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/companion/ActionRequest;->mOperation:I

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

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionRequest{mAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/ActionRequest;->mAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOperation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/companion/ActionRequest;->mOperation:I

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
    .registers 3

    .line 142
    iget p2, p0, Landroid/companion/ActionRequest;->mAction:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget p2, p0, Landroid/companion/ActionRequest;->mOperation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    return-void
.end method
