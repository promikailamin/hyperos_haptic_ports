.class public final Landroid/app/admin/MostRestrictive;
.super Landroid/app/admin/ResolutionMechanism;
.source "MostRestrictive.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/app/admin/ResolutionMechanism<",
        "TV;>;"
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/MostRestrictive<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mMostToLeastRestrictive:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/admin/PolicyValue<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 103
    new-instance v0, Landroid/app/admin/MostRestrictive$1;

    invoke-direct {v0}, Landroid/app/admin/MostRestrictive$1;-><init>()V

    sput-object v0, Landroid/app/admin/MostRestrictive;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 7

    .line 75
    invoke-direct {p0}, Landroid/app/admin/ResolutionMechanism;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/admin/MostRestrictive;->mMostToLeastRestrictive:Ljava/util/List;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_27

    .line 79
    iget-object v2, p0, Landroid/app/admin/MostRestrictive;->mMostToLeastRestrictive:Ljava/util/List;

    const-class v3, Landroid/app/admin/PolicyValue;

    .line 80
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-class v4, Landroid/app/admin/PolicyValue;

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/PolicyValue;

    .line 79
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 82
    :cond_27
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/PolicyValue<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Landroid/app/admin/ResolutionMechanism;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/admin/MostRestrictive;->mMostToLeastRestrictive:Ljava/util/List;

    .line 45
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 57
    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 58
    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    goto :goto_1f

    .line 60
    :cond_12
    :try_start_12
    check-cast p1, Landroid/app/admin/MostRestrictive;

    .line 61
    iget-object v1, p0, Landroid/app/admin/MostRestrictive;->mMostToLeastRestrictive:Ljava/util/List;

    iget-object p1, p1, Landroid/app/admin/MostRestrictive;->mMostToLeastRestrictive:Ljava/util/List;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_1c
    .catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_1c} :catch_1d

    return p1

    .line 62
    :catch_1d
    move-exception p1

    .line 63
    return v0

    .line 58
    :cond_1f
    :goto_1f
    return v0
.end method

.method public blacklist getMostToLeastRestrictiveValues()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Landroid/app/admin/MostRestrictive;->mMostToLeastRestrictive:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/app/admin/MostRestrictive$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/app/admin/MostRestrictive$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 69
    iget-object v0, p0, Landroid/app/admin/MostRestrictive;->mMostToLeastRestrictive:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MostRestrictive { mMostToLeastRestrictive= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/MostRestrictive;->mMostToLeastRestrictive:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 96
    iget-object v0, p0, Landroid/app/admin/MostRestrictive;->mMostToLeastRestrictive:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget-object v0, p0, Landroid/app/admin/MostRestrictive;->mMostToLeastRestrictive:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/PolicyValue;

    .line 98
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 99
    goto :goto_f

    .line 100
    :cond_1f
    return-void
.end method
