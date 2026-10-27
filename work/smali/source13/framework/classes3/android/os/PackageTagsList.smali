.class public final Landroid/os/PackageTagsList;
.super Ljava/lang/Object;
.source "PackageTagsList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PackageTagsList$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/PackageTagsList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mPackageTags:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPackageTags(Landroid/os/PackageTagsList;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 155
    new-instance v0, Landroid/os/PackageTagsList$1;

    invoke-direct {v0}, Landroid/os/PackageTagsList$1;-><init>()V

    sput-object v0, Landroid/os/PackageTagsList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/util/ArrayMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 49
    .local p1, "packageTags":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    iput-object v0, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    .line 51
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/util/ArrayMap;Landroid/os/PackageTagsList-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/PackageTagsList;-><init>(Landroid/util/ArrayMap;)V

    return-void
.end method


# virtual methods
.method public blacklist contains(Landroid/os/PackageTagsList;)Z
    .registers 9
    .param p1, "packageTagsList"    # Landroid/os/PackageTagsList;

    .line 116
    iget-object v0, p1, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 117
    .local v0, "otherSize":I
    iget-object v1, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_10

    .line 118
    return v2

    .line 121
    :cond_10
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_46

    .line 122
    iget-object v3, p1, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 123
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 124
    .local v4, "tags":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v4, :cond_26

    .line 125
    return v2

    .line 127
    :cond_26
    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 129
    goto :goto_43

    .line 131
    :cond_2d
    iget-object v5, p1, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 132
    .local v5, "otherTags":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 134
    return v2

    .line 136
    :cond_3c
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_43

    .line 137
    return v2

    .line 121
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "tags":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v5    # "otherTags":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_43
    :goto_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 141
    .end local v1    # "i":I
    :cond_46
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist contains(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "attributionTag"    # Ljava/lang/String;

    .line 101
    iget-object v0, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 102
    .local v0, "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_c

    .line 103
    const/4 v1, 0x0

    return v1

    .line 104
    :cond_c
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 106
    const/4 v1, 0x1

    return v1

    .line 108
    :cond_14
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public blacklist containsAll(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 93
    iget-object v0, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 94
    .local v0, "tags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_12

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 218
    iget-object v0, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 219
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_6a

    .line 220
    iget-object v2, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 221
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 222
    const-string v3, "["

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 223
    iget-object v3, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    .line 224
    .local v3, "tagsSize":I
    if-nez v3, :cond_2d

    .line 225
    const-string v4, "*"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_62

    .line 227
    :cond_2d
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2e
    if-ge v4, v3, :cond_62

    .line 228
    iget-object v5, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 230
    .local v5, "attributionTag":Ljava/lang/String;
    if-nez v5, :cond_41

    .line 231
    goto :goto_5f

    .line 234
    :cond_41
    if-lez v4, :cond_48

    .line 235
    const-string v6, ", "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 237
    :cond_48
    if-eqz v5, :cond_5c

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 238
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_5f

    .line 240
    :cond_5c
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 227
    .end local v5    # "attributionTag":Ljava/lang/String;
    :goto_5f
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 244
    .end local v4    # "j":I
    :cond_62
    :goto_62
    const-string v4, "]"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "tagsSize":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 246
    .end local v1    # "i":I
    :cond_6a
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 193
    if-ne p0, p1, :cond_4

    .line 194
    const/4 v0, 0x1

    return v0

    .line 196
    :cond_4
    instance-of v0, p1, Landroid/os/PackageTagsList;

    if-nez v0, :cond_a

    .line 197
    const/4 v0, 0x0

    return v0

    .line 200
    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/os/PackageTagsList;

    .line 201
    .local v0, "that":Landroid/os/PackageTagsList;
    iget-object v1, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    iget-object v2, v0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public blacklist getPackages()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 206
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist includes(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 66
    iget-object v0, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist includesTag(Ljava/lang/String;)Z
    .registers 6
    .param p1, "attributionTag"    # Ljava/lang/String;

    .line 77
    iget-object v0, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 78
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1c

    .line 79
    iget-object v2, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 80
    .local v2, "tags":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 81
    const/4 v3, 0x1

    return v3

    .line 78
    .end local v2    # "tags":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 85
    .end local v1    # "i":I
    :cond_1c
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isEmpty()Z
    .registers 2

    .line 57
    iget-object v0, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 211
    iget-object v0, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 178
    iget-object v0, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 179
    .local v0, "count":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_25

    .line 181
    iget-object v2, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 182
    iget-object v2, p0, Landroid/os/PackageTagsList;->mPackageTags:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 184
    .end local v1    # "i":I
    :cond_25
    return-void
.end method
