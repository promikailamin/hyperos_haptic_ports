.class public Landroid/drm/DrmSupportInfo;
.super Ljava/lang/Object;
.source "DrmSupportInfo.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mDescription:Ljava/lang/String;

.field private final greylist-max-o mFileSuffixList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mMimeTypeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/drm/DrmSupportInfo;->mFileSuffixList:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/drm/DrmSupportInfo;->mMimeTypeList:Ljava/util/ArrayList;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Landroid/drm/DrmSupportInfo;->mDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist addFileSuffix(Ljava/lang/String;)V
    .registers 3

    .line 62
    const-string v0, ""

    if-eq p1, v0, :cond_a

    .line 66
    iget-object v0, p0, Landroid/drm/DrmSupportInfo;->mFileSuffixList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    return-void

    .line 63
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "fileSuffix is an empty string"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist addMimeType(Ljava/lang/String;)V
    .registers 3

    .line 44
    if-eqz p1, :cond_15

    .line 47
    const-string v0, ""

    if-eq p1, v0, :cond_c

    .line 51
    iget-object v0, p0, Landroid/drm/DrmSupportInfo;->mMimeTypeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    return-void

    .line 48
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "mimeType is an empty string"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 45
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "mimeType is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 147
    instance-of v0, p1, Landroid/drm/DrmSupportInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_29

    .line 148
    check-cast p1, Landroid/drm/DrmSupportInfo;

    .line 149
    iget-object v0, p0, Landroid/drm/DrmSupportInfo;->mFileSuffixList:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/drm/DrmSupportInfo;->mFileSuffixList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Landroid/drm/DrmSupportInfo;->mMimeTypeList:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/drm/DrmSupportInfo;->mMimeTypeList:Ljava/util/ArrayList;

    .line 150
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Landroid/drm/DrmSupportInfo;->mDescription:Ljava/lang/String;

    iget-object p1, p1, Landroid/drm/DrmSupportInfo;->mDescription:Ljava/lang/String;

    .line 151
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_27

    const/4 v1, 0x1

    goto :goto_28

    :cond_27
    nop

    .line 149
    :goto_28
    return v1

    .line 153
    :cond_29
    return v1
.end method

.method public whitelist getDescriprition()Ljava/lang/String;
    .registers 2

    .line 114
    iget-object v0, p0, Landroid/drm/DrmSupportInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDescription()Ljava/lang/String;
    .registers 2

    .line 126
    iget-object v0, p0, Landroid/drm/DrmSupportInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getFileSuffixIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Landroid/drm/DrmSupportInfo;->mFileSuffixList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMimeTypeIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Landroid/drm/DrmSupportInfo;->mMimeTypeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 135
    iget-object v0, p0, Landroid/drm/DrmSupportInfo;->mFileSuffixList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/drm/DrmSupportInfo;->mMimeTypeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/drm/DrmSupportInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method greylist-max-o isSupportedFileSuffix(Ljava/lang/String;)Z
    .registers 3

    .line 187
    iget-object v0, p0, Landroid/drm/DrmSupportInfo;->mFileSuffixList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method greylist-max-o isSupportedMimeType(Ljava/lang/String;)Z
    .registers 5

    .line 164
    const/4 v0, 0x0

    if-eqz p1, :cond_27

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 165
    move v1, v0

    :goto_c
    iget-object v2, p0, Landroid/drm/DrmSupportInfo;->mMimeTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 166
    iget-object v2, p0, Landroid/drm/DrmSupportInfo;->mMimeTypeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 172
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 173
    const/4 p1, 0x1

    return p1

    .line 165
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 177
    :cond_27
    return v0
.end method

.method public whitelist setDescription(Ljava/lang/String;)V
    .registers 3

    .line 96
    if-eqz p1, :cond_11

    .line 99
    const-string v0, ""

    if-eq p1, v0, :cond_9

    .line 103
    iput-object p1, p0, Landroid/drm/DrmSupportInfo;->mDescription:Ljava/lang/String;

    .line 104
    return-void

    .line 100
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "description is an empty string"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "description is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
