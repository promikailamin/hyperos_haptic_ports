.class public Lcom/miui/whetstone/WhetstoneConfig;
.super Ljava/lang/Object;
.source "WhetstoneConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/whetstone/WhetstoneConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEEP_CLEAN_TYPE_GAME_CLEAN:I = 0xa

.field public static final blacklist DEEP_CLEAN_TYPE_LOCK_SCREEN:I = 0x4

.field public static final blacklist DEEP_CLEAN_TYPE_NORMAL:I = 0x0

.field public static final blacklist DEEP_CLEAN_TYPE_ONE_KEY:I = 0x2

.field public static final blacklist DEEP_CLEAN_TYPE_STRONG_CLEAN:I = 0x8

.field public static final blacklist DEEP_CLEAN_TYPE_UNKNOW:I = -0x1


# instance fields
.field blacklist mType:I

.field blacklist mWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 59
    new-instance v0, Lcom/miui/whetstone/WhetstoneConfig$1;

    invoke-direct {v0}, Lcom/miui/whetstone/WhetstoneConfig$1;-><init>()V

    sput-object v0, Lcom/miui/whetstone/WhetstoneConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p0, p1}, Lcom/miui/whetstone/WhetstoneConfig;->readFromParcel(Landroid/os/Parcel;)V

    .line 71
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/miui/whetstone/WhetstoneConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/whetstone/WhetstoneConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;I)V
    .registers 3
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 23
    .local p1, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/miui/whetstone/WhetstoneConfig;->mWhiteList:Ljava/util/List;

    .line 25
    iput p2, p0, Lcom/miui/whetstone/WhetstoneConfig;->mType:I

    .line 26
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDeepCleanType()I
    .registers 2

    .line 37
    iget v0, p0, Lcom/miui/whetstone/WhetstoneConfig;->mType:I

    return v0
.end method

.method public blacklist getWhiteList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneConfig;->mWhiteList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 55
    const-class v0, Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/WhetstoneConfig;->mWhiteList:Ljava/util/List;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/WhetstoneConfig;->mType:I

    .line 57
    return-void
.end method

.method public blacklist setWhiteList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 29
    .local p1, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/miui/whetstone/WhetstoneConfig;->mWhiteList:Ljava/util/List;

    .line 30
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 47
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneConfig;->mWhiteList:Ljava/util/List;

    if-nez v0, :cond_b

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/whetstone/WhetstoneConfig;->mWhiteList:Ljava/util/List;

    .line 50
    :cond_b
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneConfig;->mWhiteList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 51
    iget v0, p0, Lcom/miui/whetstone/WhetstoneConfig;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    return-void
.end method
