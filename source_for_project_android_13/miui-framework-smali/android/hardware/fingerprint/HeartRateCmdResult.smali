.class public final Landroid/hardware/fingerprint/HeartRateCmdResult;
.super Ljava/lang/Object;
.source "HeartRateCmdResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/fingerprint/HeartRateCmdResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist mResultCode:I

.field public blacklist mResultData:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 61
    new-instance v0, Landroid/hardware/fingerprint/HeartRateCmdResult$1;

    invoke-direct {v0}, Landroid/hardware/fingerprint/HeartRateCmdResult$1;-><init>()V

    sput-object v0, Landroid/hardware/fingerprint/HeartRateCmdResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/fingerprint/HeartRateCmdResult;->mResultCode:I

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/fingerprint/HeartRateCmdResult;->mResultData:[B

    .line 31
    return-void
.end method

.method public constructor blacklist <init>(I[B)V
    .registers 6
    .param p1, "result"    # I
    .param p2, "resultData"    # [B

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/fingerprint/HeartRateCmdResult;->mResultCode:I

    .line 28
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/fingerprint/HeartRateCmdResult;->mResultData:[B

    .line 39
    iput p1, p0, Landroid/hardware/fingerprint/HeartRateCmdResult;->mResultCode:I

    .line 40
    if-eqz p2, :cond_19

    array-length v1, p2

    if-eqz v1, :cond_19

    .line 41
    array-length v1, p2

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/hardware/fingerprint/HeartRateCmdResult;->mResultData:[B

    .line 42
    array-length v2, p2

    invoke-static {p2, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    :cond_19
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/fingerprint/HeartRateCmdResult;->mResultCode:I

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/fingerprint/HeartRateCmdResult;->mResultData:[B

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/fingerprint/HeartRateCmdResult;->mResultCode:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/fingerprint/HeartRateCmdResult;->mResultData:[B

    .line 36
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/fingerprint/HeartRateCmdResult-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/fingerprint/HeartRateCmdResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 53
    iget v0, p0, Landroid/hardware/fingerprint/HeartRateCmdResult;->mResultCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget-object v0, p0, Landroid/hardware/fingerprint/HeartRateCmdResult;->mResultData:[B

    if-eqz v0, :cond_10

    array-length v1, v0

    if-lez v1, :cond_10

    .line 55
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_14

    .line 57
    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    :goto_14
    return-void
.end method
