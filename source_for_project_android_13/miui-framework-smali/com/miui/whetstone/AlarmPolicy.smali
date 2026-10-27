.class public Lcom/miui/whetstone/AlarmPolicy;
.super Ljava/lang/Object;
.source "AlarmPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/whetstone/AlarmPolicy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist mTags:[Ljava/lang/String;

.field public blacklist mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Lcom/miui/whetstone/AlarmPolicy$1;

    invoke-direct {v0}, Lcom/miui/whetstone/AlarmPolicy$1;-><init>()V

    sput-object v0, Lcom/miui/whetstone/AlarmPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I[Ljava/lang/String;)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "tags"    # [Ljava/lang/String;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/miui/whetstone/AlarmPolicy;->mUid:I

    .line 12
    iput-object p2, p0, Lcom/miui/whetstone/AlarmPolicy;->mTags:[Ljava/lang/String;

    .line 13
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/AlarmPolicy;->mUid:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/AlarmPolicy;->mTags:[Ljava/lang/String;

    .line 18
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/miui/whetstone/AlarmPolicy-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/whetstone/AlarmPolicy;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/whetstone/AlarmPolicy;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 46
    .local v0, "ret":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/miui/whetstone/AlarmPolicy;->mTags:[Ljava/lang/String;

    if-nez v1, :cond_23

    .line 47
    const-string v1, " mTags=null}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4d

    .line 48
    :cond_23
    array-length v1, v1

    if-nez v1, :cond_2c

    .line 49
    const-string v1, " mTags=all}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4d

    .line 51
    :cond_2c
    const-string v1, " mTags=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_32
    iget-object v2, p0, Lcom/miui/whetstone/AlarmPolicy;->mTags:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_48

    .line 53
    if-eqz v1, :cond_3e

    .line 54
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    :cond_3e
    iget-object v2, p0, Lcom/miui/whetstone/AlarmPolicy;->mTags:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 58
    .end local v1    # "i":I
    :cond_48
    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :goto_4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 27
    iget v0, p0, Lcom/miui/whetstone/AlarmPolicy;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    iget-object v0, p0, Lcom/miui/whetstone/AlarmPolicy;->mTags:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 29
    return-void
.end method
