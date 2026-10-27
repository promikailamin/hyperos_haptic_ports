.class public Lcom/miui/whetstone/WhetstoneResult;
.super Ljava/lang/Object;
.source "WhetstoneResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/whetstone/WhetstoneResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCode:I

.field private blacklist mResult:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Lcom/miui/whetstone/WhetstoneResult$1;

    invoke-direct {v0}, Lcom/miui/whetstone/WhetstoneResult$1;-><init>()V

    sput-object v0, Lcom/miui/whetstone/WhetstoneResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "code"    # I

    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/whetstone/WhetstoneResult;-><init>(ILjava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "code"    # I
    .param p2, "result"    # Ljava/lang/String;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/miui/whetstone/WhetstoneResult;->mCode:I

    .line 20
    iput-object p2, p0, Lcom/miui/whetstone/WhetstoneResult;->mResult:Ljava/lang/String;

    .line 21
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p0, p1}, Lcom/miui/whetstone/WhetstoneResult;->readFromParcel(Landroid/os/Parcel;)V

    .line 59
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/miui/whetstone/WhetstoneResult-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/whetstone/WhetstoneResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCode()I
    .registers 2

    .line 24
    iget v0, p0, Lcom/miui/whetstone/WhetstoneResult;->mCode:I

    return v0
.end method

.method public blacklist getResult()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneResult;->mResult:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/WhetstoneResult;->mCode:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/WhetstoneResult;->mResult:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 38
    iget v0, p0, Lcom/miui/whetstone/WhetstoneResult;->mCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneResult;->mResult:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    return-void
.end method
