.class public final Landroid/uwb/SessionHandle;
.super Ljava/lang/Object;
.source "SessionHandle.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/uwb/SessionHandle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    new-instance v0, Landroid/uwb/SessionHandle$1;

    invoke-direct {v0}, Landroid/uwb/SessionHandle$1;-><init>()V

    sput-object v0, Landroid/uwb/SessionHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "id"    # I

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Landroid/uwb/SessionHandle;->mId:I

    .line 32
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/uwb/SessionHandle;->mId:I

    .line 36
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 66
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 67
    return v0

    .line 70
    :cond_4
    instance-of v1, p1, Landroid/uwb/SessionHandle;

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    .line 71
    move-object v1, p1

    check-cast v1, Landroid/uwb/SessionHandle;

    .line 72
    .local v1, "other":Landroid/uwb/SessionHandle;
    iget v3, p0, Landroid/uwb/SessionHandle;->mId:I

    iget v4, v1, Landroid/uwb/SessionHandle;->mId:I

    if-ne v3, v4, :cond_13

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    return v0

    .line 74
    .end local v1    # "other":Landroid/uwb/SessionHandle;
    :cond_15
    return v2
.end method

.method public blacklist getId()I
    .registers 2

    .line 51
    iget v0, p0, Landroid/uwb/SessionHandle;->mId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 79
    iget v0, p0, Landroid/uwb/SessionHandle;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SessionHandle [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/uwb/SessionHandle;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

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

    .line 61
    iget v0, p0, Landroid/uwb/SessionHandle;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    return-void
.end method
