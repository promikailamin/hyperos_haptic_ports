.class public abstract Landroid/app/admin/PolicyKey;
.super Ljava/lang/Object;
.source "PolicyKey.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field static final blacklist ATTR_POLICY_IDENTIFIER:Ljava/lang/String; = "policy-identifier"

.field static final blacklist TAG:Ljava/lang/String; = "PolicyKey"


# instance fields
.field private final blacklist mIdentifier:Ljava/lang/String;


# direct methods
.method protected constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/app/admin/PolicyKey;->mIdentifier:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public static blacklist readGenericPolicyKeyFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyKey;
    .registers 3

    .line 85
    const-string/jumbo v0, "policy-identifier"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 87
    if-nez p0, :cond_12

    .line 88
    const-string p0, "PolicyKey"

    const-string v0, "Error parsing generic policy key, identifier is null."

    invoke-static {p0, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-object v1

    .line 91
    :cond_12
    new-instance v0, Landroid/app/admin/NoArgsPolicyKey;

    invoke-direct {v0, p0}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    .line 117
    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 118
    :cond_4
    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    .line 119
    :cond_11
    check-cast p1, Landroid/app/admin/PolicyKey;

    .line 120
    iget-object v0, p0, Landroid/app/admin/PolicyKey;->mIdentifier:Ljava/lang/String;

    iget-object p1, p1, Landroid/app/admin/PolicyKey;->mIdentifier:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 118
    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist getIdentifier()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Landroid/app/admin/PolicyKey;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist hasSameIdentifierAs(Landroid/app/admin/PolicyKey;)Z
    .registers 3

    .line 74
    if-nez p1, :cond_4

    .line 75
    const/4 p1, 0x0

    return p1

    .line 77
    :cond_4
    iget-object v0, p0, Landroid/app/admin/PolicyKey;->mIdentifier:Ljava/lang/String;

    iget-object p1, p1, Landroid/app/admin/PolicyKey;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 125
    iget-object v0, p0, Landroid/app/admin/PolicyKey;->mIdentifier:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyKey;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    return-object p0
.end method

.method public blacklist saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    const-string/jumbo v0, "policy-identifier"

    iget-object v1, p0, Landroid/app/admin/PolicyKey;->mIdentifier:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    return-void
.end method

.method public abstract blacklist writeToBundle(Landroid/os/Bundle;)V
.end method
