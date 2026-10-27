.class public final Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPersistence;
.super Ljava/lang/Object;
.source "AppIdAppFunctionAccessPersistence.kt"


# static fields
.field public static final Companion:Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPersistence$Companion;

.field public static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPersistence$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPersistence$Companion;-><init>(Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPersistence;->Companion:Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPersistence$Companion;

    .line 150
    const-class v0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPersistence;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPersistence;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parseAppFunctionAccess(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/immutable/MutableIntIntMap;)V
    .registers 5

    const/4 p0, 0x0

    .line 94
    const-string/jumbo v0, "targetUid"

    invoke-virtual {p1, p0, v0}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 115
    const-string v1, "flags"

    .line 94
    invoke-virtual {p1, p0, v1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 116
    invoke-static {p2, v0, p0}, Lcom/android/server/permission/access/immutable/IntIntMapExtensionsKt;->set(Lcom/android/server/permission/access/immutable/MutableIntIntMap;II)V

    return-void
.end method

.method public final parseAppId(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;)V
    .registers 12

    const/4 v0, 0x0

    .line 94
    const-string v1, "id"

    invoke-virtual {p1, v0, v1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 97
    new-instance v2, Lcom/android/server/permission/access/immutable/MutableIntIntMap;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3, v0}, Lcom/android/server/permission/access/immutable/MutableIntIntMap;-><init>(Landroid/util/SparseIntArray;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 98
    invoke-virtual {p2, v1, v2}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->put(ILcom/android/server/permission/access/immutable/Immutable;)Lcom/android/server/permission/access/immutable/Immutable;

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

    if-eq p2, v3, :cond_fa

    if-eq p2, v1, :cond_5e

    if-ne p2, v4, :cond_49

    goto/16 :goto_fa

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

    .line 101
    const-string v6, "app-function-access"

    invoke-static {v5, v6}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_72

    invoke-virtual {p0, p1, v2}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPersistence;->parseAppFunctionAccess(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/immutable/MutableIntIntMap;)V

    goto :goto_91

    .line 104
    :cond_72
    sget-object v5, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPersistence;->LOG_TAG:Ljava/lang/String;

    .line 105
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring unknown tag "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " when parsing app function access state"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 103
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :goto_91
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-ne v5, p2, :cond_db

    .line 62
    :cond_97
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    if-eq v5, v1, :cond_d0

    if-ne v5, v4, :cond_bb

    .line 66
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, p2, :cond_b0

    .line 99
    :goto_a5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v3, :cond_97

    if-eq v5, v1, :cond_97

    if-eq v5, v4, :cond_97

    goto :goto_a5

    .line 99
    :cond_b0
    :goto_b0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p2

    if-eq p2, v3, :cond_3d

    if-eq p2, v1, :cond_3d

    if-eq p2, v4, :cond_3d

    goto :goto_b0

    .line 75
    :cond_bb
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
    :cond_d0
    :goto_d0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v3, :cond_97

    if-eq v5, v1, :cond_97

    if-eq v5, v4, :cond_97

    goto :goto_d0

    .line 56
    :cond_db
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

    :cond_fa
    :goto_fa
    return-void
.end method

.method public final parseAppIdAppFunctionAccesses(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V
    .registers 14

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p2, p3, v0}, Lcom/android/server/permission/access/MutableAccessState;->mutateUserState(II)Lcom/android/server/permission/access/MutableUserState;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p3}, Lcom/android/server/permission/access/MutableUserState;->mutateAppIdAppFunctionAccessFlags()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

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

    if-eq v1, v5, :cond_f7

    if-eq v1, v3, :cond_5b

    if-ne v1, v4, :cond_46

    goto/16 :goto_f7

    .line 84
    :cond_46
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
    :cond_5b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 110
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 52
    const-string v7, "app-id"

    invoke-static {v6, v7}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6f

    invoke-virtual {p0, p1, v0}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPersistence;->parseAppId(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;)V

    goto :goto_8e

    .line 55
    :cond_6f
    sget-object v6, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPersistence;->LOG_TAG:Ljava/lang/String;

    .line 110
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring unknown tag "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " when parsing app function accesses"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 54
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

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

    if-ge p1, p0, :cond_1a5

    .line 53
    invoke-virtual {v0, p0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->keyAt(I)I

    move-result v1

    invoke-virtual {v0, p0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v2

    check-cast v2, Lcom/android/server/permission/access/immutable/IntIntMap;

    .line 61
    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->contains(I)Z

    move-result v2

    if-nez v2, :cond_139

    .line 63
    sget-object p1, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPersistence;->LOG_TAG:Ljava/lang/String;

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropping unknown app ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " when parsing app function access state"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {v0, p0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->removeAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 67
    invoke-virtual {p3, v5}, Lcom/android/server/permission/access/MutableUserState;->requestWriteMode(I)V

    goto :goto_1a1

    .line 71
    :cond_139
    invoke-virtual {v0, p0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->mutateAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object v1

    check-cast v1, Lcom/android/server/permission/access/immutable/MutableIntIntMap;

    .line 65
    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/IntIntMap;->getSize()I

    move-result v2

    sub-int/2addr v2, v5

    :goto_144
    if-ge p1, v2, :cond_195

    .line 54
    invoke-virtual {v1, v2}, Lcom/android/server/permission/access/immutable/IntIntMap;->keyAt(I)I

    move-result v3

    invoke-virtual {v1, v2}, Lcom/android/server/permission/access/immutable/IntIntMap;->valueAt(I)I

    .line 74
    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/permission/access/ExternalState;->getUserIds()Lcom/android/server/permission/access/immutable/IntSet;

    move-result-object v4

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/server/permission/access/immutable/IntSet;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_171

    .line 75
    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getExternalState()Lcom/android/server/permission/access/ExternalState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/permission/access/ExternalState;->getAppIdPackageNames()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object v4

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->contains(I)Z

    move-result v4

    if-nez v4, :cond_192

    .line 78
    :cond_171
    sget-object v4, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPersistence;->LOG_TAG:Ljava/lang/String;

    .line 79
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dropping unknown target UID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " with when parsing app functionaccess state"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {v1, v2}, Lcom/android/server/permission/access/immutable/MutableIntIntMap;->removeAt(I)I

    .line 83
    invoke-virtual {p3, v5}, Lcom/android/server/permission/access/MutableUserState;->requestWriteMode(I)V

    :cond_192
    add-int/lit8 v2, v2, -0x1

    goto :goto_144

    .line 86
    :cond_195
    invoke-virtual {v1}, Lcom/android/server/permission/access/immutable/IntIntMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1a1

    .line 87
    invoke-virtual {v0, p0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;->removeAt(I)Lcom/android/server/permission/access/immutable/Immutable;

    .line 88
    invoke-virtual {p3, v5}, Lcom/android/server/permission/access/MutableUserState;->requestWriteMode(I)V

    :cond_1a1
    :goto_1a1
    add-int/lit8 p0, p0, -0x1

    goto/16 :goto_fc

    :cond_1a5
    return-void
.end method

.method public final parseUserState(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V
    .registers 6

    .line 35
    invoke-virtual {p1}, Lcom/android/modules/utils/BinaryXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 39
    const-string v1, "app-id-app-function-accesses"

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPersistence;->parseAppIdAppFunctionAccesses(Lcom/android/modules/utils/BinaryXmlPullParser;Lcom/android/server/permission/access/MutableAccessState;I)V

    :cond_f
    return-void
.end method

.method public final serializeAppId(Lcom/android/modules/utils/BinaryXmlSerializer;ILcom/android/server/permission/access/immutable/IntIntMap;)V
    .registers 9

    const/4 v0, 0x0

    .line 53
    const-string v1, "app-id"

    invoke-virtual {p1, v0, v1}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 135
    const-string v2, "id"

    .line 90
    invoke-virtual {p1, v0, v2, p2}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 47
    invoke-virtual {p3}, Lcom/android/server/permission/access/immutable/IntIntMap;->getSize()I

    move-result p2

    const/4 v2, 0x0

    :goto_10
    if-ge v2, p2, :cond_20

    .line 48
    invoke-virtual {p3, v2}, Lcom/android/server/permission/access/immutable/IntIntMap;->keyAt(I)I

    move-result v3

    invoke-virtual {p3, v2}, Lcom/android/server/permission/access/immutable/IntIntMap;->valueAt(I)I

    move-result v4

    .line 137
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPersistence;->serializeAppIdAppFunctionAccess(Lcom/android/modules/utils/BinaryXmlSerializer;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 55
    :cond_20
    invoke-virtual {p1, v0, v1}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final serializeAppIdAppFunctionAccess(Lcom/android/modules/utils/BinaryXmlSerializer;II)V
    .registers 6

    const/4 p0, 0x0

    .line 53
    const-string v0, "app-function-access"

    invoke-virtual {p1, p0, v0}, Lcom/android/modules/utils/BinaryXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 144
    const-string/jumbo v1, "targetUid"

    .line 90
    invoke-virtual {p1, p0, v1, p2}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 145
    const-string p2, "flags"

    .line 90
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/modules/utils/BinaryXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 55
    invoke-virtual {p1, p0, v0}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final serializeAppIdAppFunctionAccesses(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/immutable/IntReferenceMap;)V
    .registers 9

    const/4 v0, 0x0

    .line 53
    const-string v1, "app-id-app-function-accesses"

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

    check-cast v5, Lcom/android/server/permission/access/immutable/IntIntMap;

    .line 128
    invoke-virtual {p0, p1, v4, v5}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPersistence;->serializeAppId(Lcom/android/modules/utils/BinaryXmlSerializer;ILcom/android/server/permission/access/immutable/IntIntMap;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 55
    :cond_1d
    invoke-virtual {p1, v0, v1}, Lcom/android/modules/utils/BinaryXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final serializeUserState(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/AccessState;I)V
    .registers 4

    .line 120
    invoke-virtual {p2}, Lcom/android/server/permission/access/AccessState;->getUserStates()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->get(I)Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Lcom/android/server/permission/access/UserState;

    invoke-virtual {p2}, Lcom/android/server/permission/access/UserState;->getAppIdAppFunctionAccessFlags()Lcom/android/server/permission/access/immutable/IntReferenceMap;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/appfunction/AppIdAppFunctionAccessPersistence;->serializeAppIdAppFunctionAccesses(Lcom/android/modules/utils/BinaryXmlSerializer;Lcom/android/server/permission/access/immutable/IntReferenceMap;)V

    return-void
.end method
