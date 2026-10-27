.class public final Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;
.super Ljava/lang/Object;
.source "AppIdPermissionPersistence.kt"


# static fields
.field public static final Companion:Lcom/android/server/permission/access/permission/AppIdPermissionPersistence$Companion;

.field public static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence$Companion;-><init>(Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;->Companion:Lcom/android/server/permission/access/permission/AppIdPermissionPersistence$Companion;

    .line 233
    const-class v0, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parseAppId(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;)V
    .registers 12

    const/4 v0, 0x0

    .line 94
    const-string v1, "id"

    invoke-virtual {p1, v0, v1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 174
    new-instance v2, Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3, v0}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;-><init>(Landroid/util/ArrayMap;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 175
    invoke-static {p2, v1, v2}, Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;ILcom/android/server/permission/access/immutable/Immutable;)V

    .line 38
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p2

    const-string v0, "Unexpected event type "

    const/4 v1, 0x2

    if-eqz p2, :cond_31

    if-ne p2, v1, :cond_1c

    goto :goto_31

    .line 42
    :cond_1c
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 99
    :cond_31
    :goto_31
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p2

    const/4 v4, 0x3

    if-eq p2, v3, :cond_3d

    if-eq p2, v1, :cond_3d

    if-eq p2, v4, :cond_3d

    goto :goto_31

    .line 45
    :cond_3d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p2

    if-eq p2, v3, :cond_fb

    if-eq p2, v1, :cond_5e

    if-ne p2, v4, :cond_49

    goto/16 :goto_fb

    .line 84
    :cond_49
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 48
    :cond_5e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result p2

    .line 110
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 178
    const-string/jumbo v6, "permission"

    invoke-static {v5, v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_73

    invoke-virtual {p0, p1, v2}, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;->parseAppIdPermission(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/immutable/MutableIndexedMap;)V

    goto :goto_92

    .line 179
    :cond_73
    sget-object v5, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;->LOG_TAG:Ljava/lang/String;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring unknown tag "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " when parsing permission state"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :goto_92
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-ne v5, p2, :cond_dc

    .line 62
    :cond_98
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-eq v5, v1, :cond_d1

    if-ne v5, v4, :cond_bc

    .line 66
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, p2, :cond_b1

    .line 99
    :goto_a6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v3, :cond_98

    if-eq v5, v1, :cond_98

    if-eq v5, v4, :cond_98

    goto :goto_a6

    .line 99
    :cond_b1
    :goto_b1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p2

    if-eq p2, v3, :cond_3d

    if-eq p2, v1, :cond_3d

    if-eq p2, v4, :cond_3d

    goto :goto_b1

    .line 75
    :cond_bc
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 99
    :cond_d1
    :goto_d1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v3, :cond_98

    if-eq v5, v1, :cond_98

    if-eq v5, v4, :cond_98

    goto :goto_d1

    .line 56
    :cond_dc
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected post-block depth "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", expected "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_fb
    :goto_fb
    return-void
.end method

.method public final parseAppIdPermission(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/immutable/MutableIndexedMap;)V
    .registers 5

    const/4 p0, 0x0

    .line 49
    const-string/jumbo v0, "name"

    invoke-virtual {p1, p0, v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 61
    invoke-virtual {p1, v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const-string v1, "intern(...)"

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    const-string v1, "flags"

    .line 94
    invoke-virtual {p1, p0, v1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 189
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 126
    invoke-virtual {p2, v0, p0}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final parseAppIdPermissions(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V
    .registers 15

    const/4 v0, 0x0

    .line 155
    invoke-virtual {p2, p3, v0}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState(II)Lcom/android/server/permission/access/MutableUserState;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 156
    invoke-virtual {p3}, Lcom/android/server/permission/access/MutableUserState;->mutateAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object v0

    .line 38
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const-string v2, "Unexpected event type "

    const/4 v3, 0x2

    if-eqz v1, :cond_2d

    if-ne v1, v3, :cond_18

    goto :goto_2d

    .line 42
    :cond_18
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 99
    :cond_2d
    :goto_2d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v1, v5, :cond_3a

    if-eq v1, v3, :cond_3a

    if-eq v1, v4, :cond_3a

    goto :goto_2d

    .line 45
    :cond_3a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const-string v6, " when parsing permission state"

    if-eq v1, v5, :cond_f7

    if-eq v1, v3, :cond_5d

    if-ne v1, v4, :cond_48

    goto/16 :goto_f7

    .line 84
    :cond_48
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 48
    :cond_5d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 110
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 159
    const-string v8, "app-id"

    invoke-static {v7, v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_71

    invoke-virtual {p0, p1, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;->parseAppId(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;)V

    goto :goto_8e

    .line 160
    :cond_71
    sget-object v7, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;->LOG_TAG:Ljava/lang/String;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignoring unknown tag "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :goto_8e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-ne v6, v1, :cond_d8

    .line 62
    :cond_94
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    if-eq v6, v3, :cond_cd

    if-ne v6, v4, :cond_b8

    .line 66
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v1, :cond_ad

    .line 99
    :goto_a2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v5, :cond_94

    if-eq v6, v3, :cond_94

    if-eq v6, v4, :cond_94

    goto :goto_a2

    .line 99
    :cond_ad
    :goto_ad
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-eq v1, v5, :cond_3a

    if-eq v1, v3, :cond_3a

    if-eq v1, v4, :cond_3a

    goto :goto_ad

    .line 75
    :cond_b8
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 99
    :cond_cd
    :goto_cd
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v5, :cond_94

    if-eq v6, v3, :cond_94

    if-eq v6, v4, :cond_94

    goto :goto_cd

    .line 56
    :cond_d8
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected post-block depth "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", expected "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 58
    :cond_f7
    :goto_f7
    invoke-virtual {v0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result p0

    sub-int/2addr p0, v5

    :goto_fc
    const/4 p1, -0x1

    if-ge p1, p0, :cond_139

    .line 53
    invoke-virtual {v0, p0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result p1

    invoke-virtual {v0, p0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v1

    check-cast v1, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 164
    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->contains(I)Z

    move-result v1

    if-nez v1, :cond_136

    .line 165
    sget-object v1, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropping unknown app ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {v0, p0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->removeAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 167
    invoke-virtual {p3, v5}, Lcom/android/server/permission/access/MutableUserState;->requestWriteMode(I)V

    :cond_136
    add-int/lit8 p0, p0, -0x1

    goto :goto_fc

    :cond_139
    return-void
.end method

.method public final parsePermission(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/immutable/MutableIndexedMap;)V
    .registers 14

    const/4 p0, 0x0

    .line 49
    const-string/jumbo v0, "name"

    invoke-virtual {p1, p0, v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 61
    invoke-virtual {p1, v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const-string v1, "intern(...)"

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    new-instance v3, Landroid/content/pm/PermissionInfo;

    invoke-direct {v3}, Landroid/content/pm/PermissionInfo;-><init>()V

    .line 97
    iput-object v0, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 98
    const-string/jumbo v2, "packageName"

    .line 49
    invoke-virtual {p1, p0, v2}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeIndexOrThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 61
    invoke-virtual {p1, v2}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v3, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 99
    const-string/jumbo v1, "protectionLevel"

    .line 105
    invoke-virtual {p1, p0, v1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 99
    iput v1, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 101
    const-string/jumbo v1, "type"

    .line 94
    invoke-virtual {p1, p0, v1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_75

    const/4 v1, 0x2

    if-eq v5, v1, :cond_64

    .line 111
    sget-object p0, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring permission "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " with unknown type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 106
    :cond_64
    const-string v1, "icon"

    const/4 v2, 0x0

    .line 99
    invoke-virtual {p1, p0, v1, v2}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 106
    iput v1, v3, Landroid/content/pm/PermissionInfo;->icon:I

    .line 107
    const-string v1, "label"

    .line 55
    invoke-virtual {p1, p0, v1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 107
    iput-object p0, v3, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 115
    :cond_75
    new-instance v2, Lcom/android/server/permission/access/permission/Permission;

    const/16 v9, 0x30

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/android/server/permission/access/permission/Permission;-><init>(Landroid/content/pm/PermissionInfo;ZII[IZILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 126
    invoke-virtual {p2, v0, v2}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final parsePermissions(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;Z)V
    .registers 15

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p2, v0}, Lcom/android/server/permission/access/MutableAccessState;->mutateSystemState(I)Lcom/android/server/permission/access/MutableSystemState;

    move-result-object v0

    if-eqz p3, :cond_c

    .line 62
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissionTrees()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object p3

    goto :goto_10

    .line 64
    :cond_c
    invoke-virtual {v0}, Lcom/android/server/permission/access/MutableSystemState;->mutatePermissions()Lcom/android/server/permission/access/immutable/MutableIndexedMap;

    move-result-object p3

    .line 38
    :goto_10
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const-string v2, "Unexpected event type "

    const/4 v3, 0x2

    if-eqz v1, :cond_31

    if-ne v1, v3, :cond_1c

    goto :goto_31

    .line 42
    :cond_1c
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 99
    :cond_31
    :goto_31
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v1, v5, :cond_3e

    if-eq v1, v3, :cond_3e

    if-eq v1, v4, :cond_3e

    goto :goto_31

    .line 45
    :cond_3e
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const-string v6, " when parsing permissions"

    if-eq v1, v5, :cond_f8

    if-eq v1, v3, :cond_61

    if-ne v1, v4, :cond_4c

    goto/16 :goto_f8

    .line 84
    :cond_4c
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 48
    :cond_61
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 110
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 68
    const-string/jumbo v8, "permission"

    invoke-static {v7, v8}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_76

    invoke-virtual {p0, p1, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;->parsePermission(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/immutable/MutableIndexedMap;)V

    goto :goto_8f

    .line 69
    :cond_76
    sget-object v8, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignoring unknown tag "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :goto_8f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-ne v6, v1, :cond_d9

    .line 62
    :cond_95
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    if-eq v6, v3, :cond_ce

    if-ne v6, v4, :cond_b9

    .line 66
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v1, :cond_ae

    .line 99
    :goto_a3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v5, :cond_95

    if-eq v6, v3, :cond_95

    if-eq v6, v4, :cond_95

    goto :goto_a3

    .line 99
    :cond_ae
    :goto_ae
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-eq v1, v5, :cond_3e

    if-eq v1, v3, :cond_3e

    if-eq v1, v4, :cond_3e

    goto :goto_ae

    .line 75
    :cond_b9
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 99
    :cond_ce
    :goto_ce
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v5, :cond_95

    if-eq v6, v3, :cond_95

    if-eq v6, v4, :cond_95

    goto :goto_ce

    .line 56
    :cond_d9
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected post-block depth "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", expected "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65
    :cond_f8
    :goto_f8
    invoke-virtual {p3}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result p0

    sub-int/2addr p0, v5

    :goto_fd
    const/4 p1, -0x1

    if-ge p1, p0, :cond_15a

    .line 54
    invoke-virtual {p3, p0}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p0}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/permission/access/permission/Permission;

    check-cast p1, Ljava/lang/String;

    .line 37
    invoke-virtual {v1}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 74
    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v2

    .line 76
    invoke-virtual {v2}, Lcom/android/server/permission/access/ExternalState;->getPackageStates()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_157

    .line 77
    invoke-virtual {v2}, Lcom/android/server/permission/access/ExternalState;->getDisabledSystemPackageStates()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_157

    .line 80
    sget-object v2, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;->LOG_TAG:Ljava/lang/String;

    .line 34
    invoke-virtual {v1}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dropping permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from unknown package "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 79
    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p3, p0}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->removeAt(I)Ljava/lang/Object;

    .line 85
    invoke-virtual {v0, v5}, Lcom/android/server/permission/access/MutableSystemState;->requestWriteMode(I)V

    :cond_157
    add-int/lit8 p0, p0, -0x1

    goto :goto_fd

    :cond_15a
    return-void
.end method

.method public final parseSystemState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;)V
    .registers 5

    .line 35
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 49
    const-string/jumbo v1, "permission-trees"

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;->parsePermissions(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;Z)V

    return-void

    .line 50
    :cond_12
    const-string/jumbo v1, "permissions"

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;->parsePermissions(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;Z)V

    :cond_1f
    return-void
.end method

.method public final parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V
    .registers 6

    .line 35
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 149
    const-string v1, "app-id-permissions"

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;->parseAppIdPermissions(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V

    :cond_f
    return-void
.end method

.method public final serializeAppId(Lcom/android/modules/utils/BinaryXmlSerializer;ILcom/android/server/permission/access/immutable/IndexedMap;)V
    .registers 9

    const/4 v0, 0x0

    .line 53
    const-string v1, "app-id"

    invoke-virtual {p1, v0, v1}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 211
    const-string v2, "id"

    .line 90
    invoke-virtual {p1, v0, v2, p2}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 47
    invoke-virtual {p3}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result p2

    const/4 v2, 0x0

    :goto_10
    if-ge v2, p2, :cond_28

    .line 48
    invoke-virtual {p3, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p3, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    check-cast v3, Ljava/lang/String;

    .line 213
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;->serializeAppIdPermission(Lcom/android/modules/utils/BinaryXmlSerializer;Ljava/lang/String;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 55
    :cond_28
    invoke-virtual {p1, v0, v1}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final serializeAppIdPermission(Lcom/android/modules/utils/BinaryXmlSerializer;Ljava/lang/String;I)V
    .registers 6

    const/4 p0, 0x0

    .line 53
    const-string/jumbo v0, "permission"

    invoke-virtual {p1, p0, v0}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 220
    const-string/jumbo v1, "name"

    .line 69
    invoke-virtual {p1, p0, v1, p2}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/high16 p2, 0x200000

    .line 223
    invoke-static {p3, p2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->hasBits(II)Z

    move-result p2

    if-eqz p2, :cond_1b

    const/16 p2, 0x10

    .line 224
    invoke-static {p3, p2}, Lcom/android/server/permission/access/util/IntExtensionsKt;->andInv(II)I

    move-result p3

    .line 228
    :cond_1b
    const-string p2, "flags"

    .line 90
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 55
    invoke-virtual {p1, p0, v0}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final serializeAppIdPermissions(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/immutable/IntReferenceMap;)V
    .registers 9

    const/4 v0, 0x0

    .line 53
    const-string v1, "app-id-permissions"

    invoke-virtual {p1, v0, v1}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 44
    invoke-virtual {p2}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getSize()I

    move-result v2

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_1d

    .line 45
    invoke-virtual {p2, v3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result v4

    invoke-virtual {p2, v3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v5

    check-cast v5, Lcom/android/server/permission/access/immutable/IndexedMap;

    .line 201
    invoke-virtual {p0, p1, v4, v5}, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;->serializeAppId(Lcom/android/modules/utils/BinaryXmlSerializer;ILcom/android/server/permission/access/immutable/IndexedMap;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 55
    :cond_1d
    invoke-virtual {p1, v0, v1}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final serializePermission(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/permission/Permission;)V
    .registers 6

    const/4 p0, 0x0

    .line 53
    const-string/jumbo v0, "permission"

    invoke-virtual {p1, p0, v0}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 34
    invoke-virtual {p2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 69
    const-string/jumbo v2, "name"

    invoke-virtual {p1, p0, v2, v1}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 37
    invoke-virtual {p2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    .line 69
    const-string/jumbo v2, "packageName"

    invoke-virtual {p1, p0, v2, v1}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 46
    invoke-virtual {p2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 110
    const-string/jumbo v2, "protectionLevel"

    invoke-virtual {p1, p0, v2, v1}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 137
    invoke-virtual {p2}, Lcom/android/server/permission/access/permission/Permission;->getType()I

    move-result v1

    .line 138
    const-string/jumbo v2, "type"

    .line 90
    invoke-virtual {p1, p0, v2, v1}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x2

    if-ne v1, v2, :cond_54

    .line 140
    invoke-virtual {p2}, Lcom/android/server/permission/access/permission/Permission;->getPermissionInfo()Landroid/content/pm/PermissionInfo;

    move-result-object p2

    .line 141
    iget v1, p2, Landroid/content/pm/PermissionInfo;->icon:I

    if-eqz v1, :cond_45

    .line 122
    const-string v2, "icon"

    invoke-virtual {p1, p0, v2, v1}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 142
    :cond_45
    iget-object p2, p2, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz p2, :cond_54

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_54

    const-string v1, "label"

    .line 62
    invoke-virtual {p1, p0, v1, p2}, Lcom/android/modules/utils/BinaryXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 55
    :cond_54
    invoke-virtual {p1, p0, v0}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final serializePermissions(Lcom/android/modules/utils/BinaryXmlSerializer;Ljava/lang/String;Lcom/android/server/permission/access/immutable/IndexedMap;)V
    .registers 9

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p1, v0, p2}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 47
    invoke-virtual {p3}, Lcom/android/server/permission/access/immutable/IndexedMap;->getSize()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_1d

    .line 48
    invoke-virtual {p3, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p3, v2}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/permission/access/permission/Permission;

    check-cast v3, Ljava/lang/String;

    .line 129
    invoke-virtual {p0, p1, v4}, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;->serializePermission(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/permission/Permission;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 55
    :cond_1d
    invoke-virtual {p1, v0, p2}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final serializeSystemState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;)V
    .registers 5

    .line 120
    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getSystemState()Lcom/android/server/permission/access/SystemState;

    move-result-object p2

    .line 121
    const-string/jumbo v0, "permission-trees"

    invoke-virtual {p2}, Lcom/android/server/permission/access/SystemState;->getPermissionTrees()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;->serializePermissions(Lcom/android/modules/utils/BinaryXmlSerializer;Ljava/lang/String;Lcom/android/server/permission/access/immutable/IndexedMap;)V

    .line 122
    const-string/jumbo v0, "permissions"

    invoke-virtual {p2}, Lcom/android/server/permission/access/SystemState;->getPermissions()Lcom/android/server/permission/access/immutable/IndexedMap;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;->serializePermissions(Lcom/android/modules/utils/BinaryXmlSerializer;Ljava/lang/String;Lcom/android/server/permission/access/immutable/IndexedMap;)V

    return-void
.end method

.method public final serializeUserState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;I)V
    .registers 4

    .line 193
    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Lcom/android/server/permission/access/UserState;

    invoke-virtual {p2}, Lcom/android/server/permission/access/UserState;->getAppIdPermissionFlags()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/permission/AppIdPermissionPersistence;->serializeAppIdPermissions(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/immutable/IntReferenceMap;)V

    return-void
.end method
