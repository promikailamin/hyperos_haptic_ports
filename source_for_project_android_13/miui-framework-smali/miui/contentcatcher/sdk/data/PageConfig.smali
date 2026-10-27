.class public Lmiui/contentcatcher/sdk/data/PageConfig;
.super Ljava/lang/Object;
.source "PageConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/contentcatcher/sdk/data/PageConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCatchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/contentcatcher/sdk/data/CatcherInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/contentcatcher/sdk/data/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 54
    new-instance v0, Lmiui/contentcatcher/sdk/data/PageConfig$1;

    invoke-direct {v0}, Lmiui/contentcatcher/sdk/data/PageConfig$1;-><init>()V

    sput-object v0, Lmiui/contentcatcher/sdk/data/PageConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mFeatures:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mCatchers:Ljava/util/ArrayList;

    .line 15
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mFeatures:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mCatchers:Ljava/util/ArrayList;

    .line 39
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mFeatures:Ljava/util/ArrayList;

    .line 40
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mCatchers:Ljava/util/ArrayList;

    .line 41
    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmiui/contentcatcher/sdk/data/FeatureInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lmiui/contentcatcher/sdk/data/CatcherInfo;",
            ">;)V"
        }
    .end annotation

    .line 17
    .local p1, "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/contentcatcher/sdk/data/FeatureInfo;>;"
    .local p2, "catchers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/contentcatcher/sdk/data/CatcherInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mFeatures:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mCatchers:Ljava/util/ArrayList;

    .line 18
    iput-object p1, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mFeatures:Ljava/util/ArrayList;

    .line 19
    iput-object p2, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mCatchers:Ljava/util/ArrayList;

    .line 20
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCatchers()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmiui/contentcatcher/sdk/data/CatcherInfo;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mCatchers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist getFeatures()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmiui/contentcatcher/sdk/data/FeatureInfo;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mFeatures:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist setCatchers(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmiui/contentcatcher/sdk/data/CatcherInfo;",
            ">;)V"
        }
    .end annotation

    .line 35
    .local p1, "catchers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/contentcatcher/sdk/data/CatcherInfo;>;"
    iput-object p1, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mCatchers:Ljava/util/ArrayList;

    .line 36
    return-void
.end method

.method public whitelist setFeatures(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lmiui/contentcatcher/sdk/data/FeatureInfo;",
            ">;)V"
        }
    .end annotation

    .line 27
    .local p1, "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/contentcatcher/sdk/data/FeatureInfo;>;"
    iput-object p1, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mFeatures:Ljava/util/ArrayList;

    .line 28
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 50
    iget-object v0, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 51
    iget-object v0, p0, Lmiui/contentcatcher/sdk/data/PageConfig;->mCatchers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 52
    return-void
.end method
