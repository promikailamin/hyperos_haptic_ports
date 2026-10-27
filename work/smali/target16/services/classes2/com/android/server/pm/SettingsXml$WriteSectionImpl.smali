.class public Lcom/android/server/pm/SettingsXml$WriteSectionImpl;
.super Ljava/lang/Object;
.source "SettingsXml.java"

# interfaces
.implements Lcom/android/server/pm/SettingsXml$WriteSection;


# instance fields
.field public final mTagStack:Ljava/util/Stack;

.field public final mXmlSerializer:Lcom/android/modules/utils/TypedXmlSerializer;


# direct methods
.method public static bridge synthetic -$$Nest$mcloseCompletely(Lcom/android/server/pm/SettingsXml$WriteSectionImpl;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->closeCompletely()V

    return-void
.end method

.method public constructor <init>(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 3

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->mTagStack:Ljava/util/Stack;

    .line 344
    iput-object p1, p0, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->mXmlSerializer:Lcom/android/modules/utils/TypedXmlSerializer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/pm/SettingsXml-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;-><init>(Lcom/android/modules/utils/TypedXmlSerializer;)V

    return-void
.end method


# virtual methods
.method public attribute(Ljava/lang/String;I)Lcom/android/server/pm/SettingsXml$WriteSection;
    .registers 5

    const/4 v0, -0x1

    if-eq p2, v0, :cond_9

    .line 366
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->mXmlSerializer:Lcom/android/modules/utils/TypedXmlSerializer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_9
    return-object p0
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;
    .registers 5

    if-eqz p2, :cond_8

    .line 358
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->mXmlSerializer:Lcom/android/modules/utils/TypedXmlSerializer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_8
    return-object p0
.end method

.method public attribute(Ljava/lang/String;Z)Lcom/android/server/pm/SettingsXml$WriteSection;
    .registers 5

    if-eqz p2, :cond_8

    .line 382
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->mXmlSerializer:Lcom/android/modules/utils/TypedXmlSerializer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    :cond_8
    return-object p0
.end method

.method public close()V
    .registers 3

    .line 394
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->mXmlSerializer:Lcom/android/modules/utils/TypedXmlSerializer;

    iget-object p0, p0, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->mTagStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final closeCompletely()V
    .registers 2

    .line 401
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->mTagStack:Ljava/util/Stack;

    if-eqz v0, :cond_10

    .line 402
    :goto_4
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 403
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->close()V

    goto :goto_4

    :cond_10
    return-void
.end method

.method public finish()V
    .registers 1

    .line 389
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->close()V

    return-void
.end method

.method public startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;
    .registers 4

    .line 350
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->mXmlSerializer:Lcom/android/modules/utils/TypedXmlSerializer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 351
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
