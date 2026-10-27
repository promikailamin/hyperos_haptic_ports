.class public Lmiui/push/CommonPacketExtension;
.super Ljava/lang/Object;
.source "CommonPacketExtension.java"

# interfaces
.implements Lmiui/push/PacketExtension;


# static fields
.field public static final blacklist ATTRIBUTE_NAME:Ljava/lang/String; = "attributes"

.field public static final blacklist CHILDREN_NAME:Ljava/lang/String; = "children"


# instance fields
.field private blacklist mAttributeNames:[Ljava/lang/String;

.field private blacklist mAttributeValues:[Ljava/lang/String;

.field private blacklist mChildrenEles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/push/CommonPacketExtension;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mExtensionElementName:Ljava/lang/String;

.field private blacklist mNamespace:Ljava/lang/String;

.field private blacklist mText:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "extensionElementName"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "attributeName"    # Ljava/lang/String;
    .param p4, "attributeValue"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    .line 43
    iput-object p1, p0, Lmiui/push/CommonPacketExtension;->mExtensionElementName:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lmiui/push/CommonPacketExtension;->mNamespace:Ljava/lang/String;

    .line 45
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    iput-object v1, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    .line 48
    new-array v0, v0, [Ljava/lang/String;

    aput-object p4, v0, v2

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .param p1, "extensionElementName"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 54
    .local p3, "attributeNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "attributeValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    .line 55
    iput-object p1, p0, Lmiui/push/CommonPacketExtension;->mExtensionElementName:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lmiui/push/CommonPacketExtension;->mNamespace:Ljava/lang/String;

    .line 57
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    .line 58
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .registers 8
    .param p1, "extensionElementName"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p5, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lmiui/push/CommonPacketExtension;",
            ">;)V"
        }
    .end annotation

    .line 72
    .local p3, "attributeNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "attributeValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "children":Ljava/util/List;, "Ljava/util/List<Lmiui/push/CommonPacketExtension;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    .line 73
    iput-object p1, p0, Lmiui/push/CommonPacketExtension;->mExtensionElementName:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lmiui/push/CommonPacketExtension;->mNamespace:Ljava/lang/String;

    .line 75
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    .line 76
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    .line 77
    iput-object p5, p0, Lmiui/push/CommonPacketExtension;->mText:Ljava/lang/String;

    .line 78
    iput-object p6, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    .line 79
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6
    .param p1, "extensionElementName"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "attributeNames"    # [Ljava/lang/String;
    .param p4, "attributeValues"    # [Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    .line 35
    iput-object p1, p0, Lmiui/push/CommonPacketExtension;->mExtensionElementName:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lmiui/push/CommonPacketExtension;->mNamespace:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 8
    .param p1, "extensionElementName"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "attributeNames"    # [Ljava/lang/String;
    .param p4, "attributeValues"    # [Ljava/lang/String;
    .param p5, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lmiui/push/CommonPacketExtension;",
            ">;)V"
        }
    .end annotation

    .line 62
    .local p6, "children":Ljava/util/List;, "Ljava/util/List<Lmiui/push/CommonPacketExtension;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    .line 63
    iput-object p1, p0, Lmiui/push/CommonPacketExtension;->mExtensionElementName:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lmiui/push/CommonPacketExtension;->mNamespace:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    .line 67
    iput-object p5, p0, Lmiui/push/CommonPacketExtension;->mText:Ljava/lang/String;

    .line 68
    iput-object p6, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    .line 69
    return-void
.end method

.method public static blacklist getArray([Landroid/os/Parcelable;)[Lmiui/push/CommonPacketExtension;
    .registers 4
    .param p0, "parcelables"    # [Landroid/os/Parcelable;

    .line 186
    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    array-length v0, p0

    :goto_5
    new-array v0, v0, [Lmiui/push/CommonPacketExtension;

    .line 188
    .local v0, "extensions":[Lmiui/push/CommonPacketExtension;
    if-eqz p0, :cond_1a

    .line 189
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    array-length v2, p0

    if-ge v1, v2, :cond_1a

    .line 190
    aget-object v2, p0, v1

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2}, Lmiui/push/CommonPacketExtension;->parseFromBundle(Landroid/os/Bundle;)Lmiui/push/CommonPacketExtension;

    move-result-object v2

    aput-object v2, v0, v1

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 194
    .end local v1    # "i":I
    :cond_1a
    return-object v0
.end method

.method public static blacklist parseFromBundle(Landroid/os/Bundle;)Lmiui/push/CommonPacketExtension;
    .registers 19
    .param p0, "b"    # Landroid/os/Bundle;

    .line 199
    move-object/from16 v0, p0

    const-string v1, "ext_ele_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "extensionElement":Ljava/lang/String;
    const-string v2, "ext_ns"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 201
    .local v9, "extensionNamespace":Ljava/lang/String;
    const-string v2, "ext_text"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 202
    .local v10, "text":Ljava/lang/String;
    const-string v2, "attributes"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 203
    .local v11, "attributesBundle":Landroid/os/Bundle;
    invoke-virtual {v11}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v12

    .line 204
    .local v12, "attributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v2

    new-array v13, v2, [Ljava/lang/String;

    .line 205
    .local v13, "attributeNames":[Ljava/lang/String;
    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v2

    new-array v14, v2, [Ljava/lang/String;

    .line 207
    .local v14, "attributeValues":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 209
    .local v2, "childrenEles":Ljava/util/List;, "Ljava/util/List<Lmiui/push/CommonPacketExtension;>;"
    const/4 v3, 0x0

    .line 210
    .local v3, "index":I
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v15, v3

    .end local v3    # "index":I
    .local v15, "index":I
    :goto_31
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 211
    .local v3, "attr":Ljava/lang/String;
    aput-object v3, v13, v15

    .line 212
    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v14, v15

    .line 213
    nop

    .end local v3    # "attr":Ljava/lang/String;
    add-int/lit8 v15, v15, 0x1

    .line 214
    goto :goto_31

    .line 216
    :cond_49
    const-string v3, "children"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 217
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 218
    .local v3, "children":[Landroid/os/Parcelable;
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v4

    .line 220
    array-length v4, v3

    const/4 v5, 0x0

    :goto_5e
    if-ge v5, v4, :cond_6f

    aget-object v6, v3, v5

    .line 221
    .local v6, "child":Landroid/os/Parcelable;
    move-object v7, v6

    check-cast v7, Landroid/os/Bundle;

    invoke-static {v7}, Lmiui/push/CommonPacketExtension;->parseFromBundle(Landroid/os/Bundle;)Lmiui/push/CommonPacketExtension;

    move-result-object v7

    .line 222
    .local v7, "childExt":Lmiui/push/CommonPacketExtension;
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    .end local v6    # "child":Landroid/os/Parcelable;
    .end local v7    # "childExt":Lmiui/push/CommonPacketExtension;
    add-int/lit8 v5, v5, 0x1

    goto :goto_5e

    :cond_6f
    move-object/from16 v16, v2

    goto :goto_74

    .line 216
    .end local v3    # "children":[Landroid/os/Parcelable;
    :cond_72
    move-object/from16 v16, v2

    .line 226
    .end local v2    # "childrenEles":Ljava/util/List;, "Ljava/util/List<Lmiui/push/CommonPacketExtension;>;"
    .local v16, "childrenEles":Ljava/util/List;, "Ljava/util/List<Lmiui/push/CommonPacketExtension;>;"
    :goto_74
    new-instance v17, Lmiui/push/CommonPacketExtension;

    move-object/from16 v2, v17

    move-object v3, v1

    move-object v4, v9

    move-object v5, v13

    move-object v6, v14

    move-object v7, v10

    move-object/from16 v8, v16

    invoke-direct/range {v2 .. v8}, Lmiui/push/CommonPacketExtension;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v17
.end method

.method public static blacklist toParcelableArray(Ljava/util/List;)[Landroid/os/Parcelable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/push/CommonPacketExtension;",
            ">;)[",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .line 181
    .local p0, "extensions":Ljava/util/List;, "Ljava/util/List<Lmiui/push/CommonPacketExtension;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lmiui/push/CommonPacketExtension;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/push/CommonPacketExtension;

    invoke-static {v0}, Lmiui/push/CommonPacketExtension;->toParcelableArray([Lmiui/push/CommonPacketExtension;)[Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist toParcelableArray([Lmiui/push/CommonPacketExtension;)[Landroid/os/Parcelable;
    .registers 4
    .param p0, "extensions"    # [Lmiui/push/CommonPacketExtension;

    .line 167
    if-nez p0, :cond_4

    .line 168
    const/4 v0, 0x0

    return-object v0

    .line 171
    :cond_4
    array-length v0, p0

    new-array v0, v0, [Landroid/os/Parcelable;

    .line 173
    .local v0, "parcelables":[Landroid/os/Parcelable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_16

    .line 174
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lmiui/push/CommonPacketExtension;->toParcelable()Landroid/os/Parcelable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 177
    .end local v1    # "i":I
    :cond_16
    return-object v0
.end method


# virtual methods
.method public blacklist appendChild(Lmiui/push/CommonPacketExtension;)V
    .registers 3
    .param p1, "child"    # Lmiui/push/CommonPacketExtension;

    .line 272
    iget-object v0, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    if-nez v0, :cond_b

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    .line 275
    :cond_b
    iget-object v0, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 276
    iget-object v0, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_18
    return-void
.end method

.method public blacklist getAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "attributeName"    # Ljava/lang/String;

    .line 231
    if-eqz p1, :cond_1e

    .line 234
    iget-object v0, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 235
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v1, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1c

    .line 236
    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 237
    iget-object v1, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1

    .line 235
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 241
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return-object v0

    .line 232
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public blacklist getChildByName(Ljava/lang/String;)Lmiui/push/CommonPacketExtension;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 245
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_27

    iget-object v0, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    if-nez v0, :cond_c

    goto :goto_27

    .line 247
    :cond_c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/push/CommonPacketExtension;

    .line 248
    .local v2, "temp":Lmiui/push/CommonPacketExtension;
    iget-object v3, v2, Lmiui/push/CommonPacketExtension;->mExtensionElementName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 249
    return-object v2

    .line 251
    .end local v2    # "temp":Lmiui/push/CommonPacketExtension;
    :cond_25
    goto :goto_10

    .line 252
    :cond_26
    return-object v1

    .line 246
    :cond_27
    :goto_27
    return-object v1
.end method

.method public blacklist getChildrenByName(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lmiui/push/CommonPacketExtension;",
            ">;"
        }
    .end annotation

    .line 256
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    if-nez v0, :cond_b

    goto :goto_2f

    .line 258
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Lmiui/push/CommonPacketExtension;>;"
    iget-object v1, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/push/CommonPacketExtension;

    .line 260
    .local v2, "temp":Lmiui/push/CommonPacketExtension;
    iget-object v3, v2, Lmiui/push/CommonPacketExtension;->mExtensionElementName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 261
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    .end local v2    # "temp":Lmiui/push/CommonPacketExtension;
    :cond_2d
    goto :goto_16

    .line 264
    :cond_2e
    return-object v0

    .line 257
    .end local v0    # "children":Ljava/util/List;, "Ljava/util/List<Lmiui/push/CommonPacketExtension;>;"
    :cond_2f
    :goto_2f
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getChildrenExt()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/push/CommonPacketExtension;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getElementName()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Lmiui/push/CommonPacketExtension;->mExtensionElementName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNamespace()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Lmiui/push/CommonPacketExtension;->mNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getText()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lmiui/push/CommonPacketExtension;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 93
    iget-object v0, p0, Lmiui/push/CommonPacketExtension;->mText:Ljava/lang/String;

    invoke-static {v0}, Lmiui/push/StringUtils;->unescapeFromXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 95
    :cond_f
    iget-object v0, p0, Lmiui/push/CommonPacketExtension;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setText(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .line 281
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 282
    invoke-static {p1}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/CommonPacketExtension;->mText:Ljava/lang/String;

    goto :goto_f

    .line 284
    :cond_d
    iput-object p1, p0, Lmiui/push/CommonPacketExtension;->mText:Ljava/lang/String;

    .line 286
    :goto_f
    return-void
.end method

.method public blacklist toBundle()Landroid/os/Bundle;
    .registers 6

    .line 140
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 142
    .local v0, "b":Landroid/os/Bundle;
    iget-object v1, p0, Lmiui/push/CommonPacketExtension;->mExtensionElementName:Ljava/lang/String;

    const-string v2, "ext_ele_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lmiui/push/CommonPacketExtension;->mNamespace:Ljava/lang/String;

    const-string v2, "ext_ns"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lmiui/push/CommonPacketExtension;->mText:Ljava/lang/String;

    const-string v2, "ext_text"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 147
    .local v1, "attributesBundle":Landroid/os/Bundle;
    iget-object v2, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    if-eqz v2, :cond_38

    array-length v2, v2

    if-lez v2, :cond_38

    .line 148
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_27
    iget-object v3, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_38

    .line 149
    aget-object v3, v3, v2

    iget-object v4, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 152
    .end local v2    # "n":I
    :cond_38
    const-string v2, "attributes"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 154
    iget-object v2, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    if-eqz v2, :cond_52

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_52

    .line 155
    iget-object v2, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    invoke-static {v2}, Lmiui/push/CommonPacketExtension;->toParcelableArray(Ljava/util/List;)[Landroid/os/Parcelable;

    move-result-object v2

    const-string v3, "children"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 158
    :cond_52
    return-object v0
.end method

.method public blacklist toParcelable()Landroid/os/Parcelable;
    .registers 2

    .line 162
    invoke-virtual {p0}, Lmiui/push/CommonPacketExtension;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 101
    invoke-virtual {p0}, Lmiui/push/CommonPacketExtension;->toXML()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toXML()Ljava/lang/String;
    .registers 7

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/push/CommonPacketExtension;->mExtensionElementName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v1, p0, Lmiui/push/CommonPacketExtension;->mNamespace:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, " "

    const-string v3, "\""

    if-nez v1, :cond_33

    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "xmlns="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lmiui/push/CommonPacketExtension;->mNamespace:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_33
    iget-object v1, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    if-eqz v1, :cond_6e

    array-length v1, v1

    if-lez v1, :cond_6e

    .line 115
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_3b
    iget-object v4, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_6e

    .line 116
    iget-object v4, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6b

    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/push/CommonPacketExtension;->mAttributeNames:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lmiui/push/CommonPacketExtension;->mAttributeValues:[Ljava/lang/String;

    aget-object v5, v5, v1

    .line 118
    invoke-static {v5}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_6b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 122
    .end local v1    # "n":I
    :cond_6e
    iget-object v1, p0, Lmiui/push/CommonPacketExtension;->mText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "</"

    const-string v3, ">"

    if-nez v1, :cond_92

    .line 124
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lmiui/push/CommonPacketExtension;->mText:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/push/CommonPacketExtension;->mExtensionElementName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cc

    .line 125
    :cond_92
    iget-object v1, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    if-eqz v1, :cond_c7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c7

    .line 127
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-object v1, p0, Lmiui/push/CommonPacketExtension;->mChildrenEles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/push/CommonPacketExtension;

    .line 129
    .local v4, "cmmnPktExt":Lmiui/push/CommonPacketExtension;
    invoke-virtual {v4}, Lmiui/push/CommonPacketExtension;->toXML()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .end local v4    # "cmmnPktExt":Lmiui/push/CommonPacketExtension;
    goto :goto_a5

    .line 131
    :cond_b9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/push/CommonPacketExtension;->mExtensionElementName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cc

    .line 134
    :cond_c7
    const-string v1, "/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :goto_cc
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
