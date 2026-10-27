.class public final Lcom/android/server/devicepolicy/BooleanPolicySerializer;
.super Lcom/android/server/devicepolicy/PolicySerializer;
.source "BooleanPolicySerializer.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Lcom/android/server/devicepolicy/PolicySerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/BooleanPolicyValue;
    .registers 4

    const/4 p0, 0x0

    .line 48
    :try_start_1
    new-instance v0, Landroid/app/admin/BooleanPolicyValue;

    const-string/jumbo v1, "value"

    .line 49
    invoke-interface {p1, p0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-direct {v0, p1}, Landroid/app/admin/BooleanPolicyValue;-><init>(Z)V
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception p1

    .line 51
    const-string v0, "BooleanPolicySerializer"

    const-string v1, "Error parsing Boolean policy value"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0
.end method

.method public bridge synthetic readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyValue;
    .registers 2

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/BooleanPolicySerializer;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/BooleanPolicyValue;

    move-result-object p0

    return-object p0
.end method

.method public saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/Boolean;)V
    .registers 4

    .line 40
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string/jumbo p0, "value"

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    invoke-interface {p1, v0, p0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public bridge synthetic saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/Object;)V
    .registers 3

    .line 32
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/BooleanPolicySerializer;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/Boolean;)V

    return-void
.end method
