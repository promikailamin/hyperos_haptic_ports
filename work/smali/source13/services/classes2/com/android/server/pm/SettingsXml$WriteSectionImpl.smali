.class Lcom/android/server/pm/SettingsXml$WriteSectionImpl;
.super Ljava/lang/Object;
.source "SettingsXml.java"

# interfaces
.implements Lcom/android/server/pm/SettingsXml$WriteSection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/SettingsXml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WriteSectionImpl"
.end annotation


# instance fields
.field private final mTagStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mXmlSerializer:Landroid/util/TypedXmlSerializer;


# direct methods
.method static bridge synthetic -$$Nest$mcloseCompletely(Lcom/android/server/pm/SettingsXml$WriteSectionImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->closeCompletely()V

    return-void
.end method

.method private constructor <init>(Landroid/util/TypedXmlSerializer;)V
    .registers 3
    .param p1, "xmlSerializer"    # Landroid/util/TypedXmlSerializer;

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->mTagStack:Ljava/util/Stack;

    .line 343
    iput-object p1, p0, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->mXmlSerializer:Landroid/util/TypedXmlSerializer;

    .line 344
    return-void
.end method

.method synthetic constructor <init>(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/SettingsXml$WriteSectionImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;-><init>(Landroid/util/TypedXmlSerializer;)V

    return-void
.end method

.method private closeCompletely()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->mTagStack:Ljava/util/Stack;

    if-eqz v0, :cond_10

    .line 401
    :goto_4
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 402
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->close()V

    goto :goto_4

    .line 405
    :cond_10
    return-void
.end method


# virtual methods
.method public attribute(Ljava/lang/String;I)Lcom/android/server/pm/SettingsXml$WriteSection;
    .registers 5
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    const/4 v0, -0x1

    if-eq p2, v0, :cond_9

    .line 365
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->mXmlSerializer:Landroid/util/TypedXmlSerializer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 367
    :cond_9
    return-object p0
.end method

.method public attribute(Ljava/lang/String;J)Lcom/android/server/pm/SettingsXml$WriteSection;
    .registers 6
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_c

    .line 373
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->mXmlSerializer:Landroid/util/TypedXmlSerializer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 375
    :cond_c
    return-object p0
.end method

.method public attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;
    .registers 5
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    if-eqz p2, :cond_8

    .line 357
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->mXmlSerializer:Landroid/util/TypedXmlSerializer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 359
    :cond_8
    return-object p0
.end method

.method public attribute(Ljava/lang/String;Z)Lcom/android/server/pm/SettingsXml$WriteSection;
    .registers 5
    .param p1, "attrName"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 380
    if-eqz p2, :cond_8

    .line 381
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->mXmlSerializer:Landroid/util/TypedXmlSerializer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 383
    :cond_8
    return-object p0
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->mXmlSerializer:Landroid/util/TypedXmlSerializer;

    iget-object v1, p0, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 394
    return-void
.end method

.method public finish()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 388
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->close()V

    .line 389
    return-void
.end method

.method public startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;
    .registers 4
    .param p1, "sectionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->mXmlSerializer:Landroid/util/TypedXmlSerializer;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 350
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$WriteSectionImpl;->mTagStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    return-object p0
.end method
